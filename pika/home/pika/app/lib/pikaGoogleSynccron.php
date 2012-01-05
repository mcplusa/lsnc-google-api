<?php
/*
 * Google Sync Module
 * Michael Cizmar + Associates Ltd. (C) 2011
 * http://www.mcplusa.com
 * written by Richard Loerzel (Richard.Loerzel@gmail.com)
 *
 * Pika CMS -> Google Apps (Calendar, Docs) Integration
 * http://pikasoftware.com/
 * http://www.google.com/apps/
 *
 * Requires the Zend Framework 1.1 (GData, Data, Debug, Oauth)
 * http://framework.zend.com/
 *
 * DEVELOPER NOTES:
 * The Zend_Gdata library is still uses the deprecated Google v1 API, which limits the possibilities considerably.
 * Calls utilizing "performHttpRequest" (i.e. $file = $gdata->performHttpRequest( 'DELETE', $uri,
 * array('GData-Version'=>'3.0','If-Match'=>'*'), NULL, 'application/atom+xml' ) )
 * are used to overcome the limitations of the Zend library.  By using direct HTTP calls with atom data it is possible to
 * expose the functionality of the v2 and v3 Google APIs.  v2 is the current production API though there are only
 * Java and Python libraries currently available.  v3 is the latest release, but is a bit dangerous
 * since it's still in 'Labs' and will likely change.  The format, interface and URI differences between the different API
 * also cause a great deal of confusion.  While some bits of this code may look like spaghetti code, most of the weirdness
 * was done to overcome incompatabilities or inconsistences between the many APIs.
 *
 * CALENDAR TO-DO LIST
 * 	1. Only permit "organizers" to modify an activity
 *  2. Two-way synching
 *
 * DOCS TO-DO LIST
 * 1. eTags, versioning, two-way syncing: Currently, Google Docs is treated solely as a repositiory.
 *    Updating files in Pika will overwrite the file stored in Google Docs.
 * 2. Deleting empty folders
 * 3. Functionality to remove permissions of a Google User once they've been removed from the case.
 * 4. Clean-up unnecessary str_replace("/contents") calls for URIs in getCollectionId
 *
 */

require_once('pikaActivity.php');
require_once('pikaImap.php');
require_once('Zend/Loader.php');
require_once('Zend/Crypt/Rsa/Key/Private.php');
require_once ('Zend/Oauth/Consumer.php');
require_once ('Zend/Mail/Protocol/Imap.php');
require_once ('Zend/Mail/Storage/Imap.php');

class pikaGoogleSync extends pikaActivity {


  /**********************/
  const SESSION_URI = 'https://docs.google.com/feeds/upload/create-session/default/private/full';
  const COLLECTION_URI ='https://docs.google.com/feeds/documents/private/full/-/folder';
  const COLLECTION_ID_PATH = 'https://docs.google.com/feeds/id/folder%3A';
  const FOLDER_URI = '/folder:%s/contents'; //Ready for sprintf
  /**********************/

  //private $OAUTHKEY = "mcplusa-dev.com";
	private $OAUTHKEY = "hrh.org";
	private $SCOPES = array(
	  'http://www.google.com/calendar/feeds/',
	  'http://docs.google.com/feeds/',
	  'http://www.google.com/m8/feeds',
	  'https://mail.google.com/'
	);

	/*
	 * SECURITY NOTE:
	 * Having the $RSAKEY, $TOKENPATH, $TEMP_PATH paths in your server root
	 * is not recommended.  This could expose your site to serious security issues.
	 */


	private $RSAKEY = "/var/www/keys/hrh_rsakey.pem";
	private $TOKENPATH = "/var/www/keys/request_token.json";
	private $TEMP_PATH = "/var/www/temp/";

/*
	private $RSAKEY = "C:\\Projects\\LSNCGA\\pika\\home\\keys\\hrh_rsakey.pem";
	private $TOKENPATH = "C:\\Projects\\LSNCGA\\pika\\home\\keys\\request_token.json";
	private $TEMP_PATH = "C:\\temp\\";
*/
	private $options = null;
	// The Google Account with user delegation permissions used for running this file
	//private $MASTER_EMAIL = "admin@mcplusa-dev.com";
  private $MASTER_EMAIL = "mcizmar@hrh.org";

	// Prefered name for root folder
	private $ROOTFOLDERNAME = "My Cases";

	public $server_timezone_offset = "-06";

	// Number of minutes before "tickler" to send email reminder
	public $REMINDER_MINUTES = 1440;
	public $REMINDER_TYPE = 'email';

	//public $_protocol = null;
  //public $_storage = null;
	public $_client = null;
	public $_gdocs = null;
	public $_gcal = null;
	public $_docsfeed = null;
	public $_caseusers = null;
	public $_service = null;
	public $_consumer = null;
	public $_accessToken = null;


	private function getDocsFeed()
	{
	  if (empty($this->_docsfeed))
      $this->_docsfeed = $this->_gdocs->getFeed(self::COLLECTION_URI);
    return $this->_docsfeed;
	}

	function pikaGoogleSync($id = null)
	{
		return $this->__construct($id);
	}

	function __construct($id = null)
	{
		try {
			Zend_Loader::loadClass('Zend_Debug');
			Zend_Loader::loadClass('Zend_Date');
			Zend_Loader::loadClass('Zend_Oauth');
			Zend_Loader::loadClass('Zend_Oauth_Consumer');
			Zend_Loader::loadClass('Zend_Oauth_Token_Access');
			Zend_Loader::loadClass('Zend_Gdata');
			Zend_Loader::loadClass('Zend_Gdata_AuthSub');
			Zend_Loader::loadClass('Zend_Gdata_Calendar');
			Zend_Loader::loadClass('Zend_Gdata_Docs');
			Zend_Loader::loadClass('Zend_Gdata_Query');
			Zend_Loader::loadClass('Zend_Http_Response');
			parent::__construct($id);
		} catch (Exception $e) {
			Zend_Debug::dump($e);
		}
	}

	private function getCurrentUrl()
	{
	    try {
		    // Filter php_self to avoid a security vulnerability.
		    $php_request_uri = htmlentities(substr($_SERVER['REQUEST_URI'],0,strcspn($_SERVER['REQUEST_URI'], "\n\r")),ENT_QUOTES);
		    if (isset($_SERVER['HTTPS']) &&
		        strtolower($_SERVER['HTTPS']) == 'on') {
		        $protocol = 'https://';
		    } else {
		        $protocol = 'http://';
		    }
		    $host = $_SERVER['HTTP_HOST'];
		    if ($_SERVER['HTTP_PORT'] != '' &&
		        (($protocol == 'http://' && $_SERVER['HTTP_PORT'] != '80') ||
		        ($protocol == 'https://' && $_SERVER['HTTP_PORT'] != '443'))) {
		        $port = ':' . $_SERVER['HTTP_PORT'];
		    } else {
		        $port = '';
		    }
		    return $protocol . $host . $port . $php_request_uri;
	    } catch (Exception $e) {
			Zend_Debug::dump($e);
		}
	}

	public function connect()
	{
		global $_SESSION, $_GET;

		try {
			$this->options = array(
				'requestScheme' => Zend_Oauth::REQUEST_SCHEME_HEADER,
				'version' => '1.0',
				'consumerKey' => $this->OAUTHKEY,
				'consumerSecret' => new Zend_Crypt_Rsa_Key_Private(file_get_contents(realpath($this->RSAKEY))),
				'signatureMethod' => 'RSA-SHA1',
				'callbackUrl' => $this->getCurrentUrl(),
				'requestTokenUrl' => 'https://www.google.com/accounts/OAuthGetRequestToken',
				'userAuthorizationUrl' => 'https://www.google.com/accounts/OAuthAuthorizeToken',
				'accessTokenUrl' => 'https://www.google.com/accounts/OAuthGetAccessToken'
			);
			$this->_consumer = new Zend_Oauth_Consumer($this->options);
			$cached_token = unserialize(file_get_contents($this->TOKENPATH));

			/*
			 * PHP NOTE (is this a bug or a feature?):
			 * If there is a cached_token file and you use this conditional:
			 * " if ($cached_token = unserialize(file_get_contents($this->TOKENPATH)) {} "
			 * $cached_token will equal "true" not the file contents.
			 * Cached authentication then will obviously not work properly.
			 */

			if ($cached_token && !isset($_GET['bypass'])) {
				// Cached Authentication for CURL or script access
				$this->_accessToken = new Zend_Oauth_Token_Access();
				$this->_accessToken->setToken($cached_token->oauth_token);
				$this->_accessToken->setTokenSecret($cached_token->oauth_token_secret);
				$this->_client = $this->_accessToken->getHttpClient($this->options);
				//echo "CACHED ACCESS TOKEN\n\n";
			} else {

				if (!isset($_GET['oauth_token']) && !isset($_SESSION['ACCESS_TOKEN'])) {
		  			$_SESSION['REQUEST_TOKEN'] = serialize($this->_consumer->getRequestToken(array('scope' => implode(' ', $this->SCOPES))));
		 			//$this->_consumer->redirect(array('hd' => 'mcplusa-dev.com'));
          $this->_consumer->redirect(array('hd' => 'hrh.org'));
		 		}

				if (!isset($_SESSION['ACCESS_TOKEN'])) {
					 if (isset($_GET['oauth_token']) && isset($_SESSION['REQUEST_TOKEN'])) {
						$_SESSION['ACCESS_TOKEN'] = serialize($this->_consumer->getAccessToken($_GET, unserialize($_SESSION['REQUEST_TOKEN'])));
					}
				}

				if (isset($_SESSION['ACCESS_TOKEN'])) {
				  	$this->_accessToken = unserialize($_SESSION['ACCESS_TOKEN']);
				  	$this->_client = $this->_accessToken->getHttpClient($this->options);
				}
				$this->writeToken($_SESSION['ACCESS_TOKEN']);
				//echo "NEW ACCESS TOKEN\n\n";
			}
		} catch (Zend_Gdata_App_Exception $e) {
		    echo "Connect: " . $e->getMessage();
		}
	}

	public function writeToken($token) {
		try {
			file_put_contents($this->TOKENPATH, $token);

		} catch (Exception $e) {
			Zend_Debug::dump($e);
			die("Error: writeToken");
		}
	}

	public function generateGuid($lcase = false)
	{
	     if (function_exists('com_create_guid')){
	        $uuid = strtolower(com_create_guid());
	    } else {
	        mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
	        $charid = strtoupper(md5(uniqid(rand(), true)));
	        $hyphen = chr(45);// "-"
	        $uuid = chr(123)// "{"
	                .substr($charid, 0, 8).$hyphen
	                .substr($charid, 8, 4).$hyphen
	                .substr($charid,12, 4).$hyphen
	                .substr($charid,16, 4).$hyphen
	                .substr($charid,20,12)
	                .chr(125);// "}"
	    }
	    if ($lcase) {
	    	$uuid = strtolower($uuid);
	    }
	     return strtolower($uuid);
	}

  public function uploadDoc($data)
  {

    $collection = $data['folder_name'];
    $filename = $data['doc_name'];
    $pikafile = $this->TEMP_PATH . $data['doc_name'];

    //Send to GDocs
    $result = false;

    try
    {
      if (empty($this->_gdocs))
        $this->_gdocs = new Zend_Gdata_Docs($this->_client);

      $data['collection_uri'] = $this->getCollectionId($data);

      if(!($uncompressedData = gzuncompress(stripslashes($data['doc_data']))))
        $uncompressedData = $data['doc_data'];
      file_put_contents( $pikafile, $uncompressedData);           
      
      if (!empty($data['document_uri'])){
        $result=$this->deleteDoc($data);
      }

      $result = $this->getDocsFeed();
      foreach($result as $collection) {
        $title = $collection->getTitle()->getText();
        if($title == $data['folder_name']) {
          $ID = str_replace(self::COLLECTION_ID_PATH, '', $collection->getId());
          $folder = sprintf(self::FOLDER_URI, $collection->getContent()->getSrc());
          $folder = str_replace("/folder:https://docs.google.com/feeds/folders/private/full", "", $folder);
          break;
        }
      }

      $this->_gdocs->setMajorProtocolVersion(3);
      
      //if((filesize($pikafile)/(1024*1024)) > 2)        
      $folder.='?convert=false';
            
      
      //Create the session
      $result = $this->_gdocs->performHttpRequest('POST', self::SESSION_URI.$folder, array(
        'GData-Version'=>'3.0',
        'Content-Length'=>0,
        'Content-Type'=>$data['mime_type'],
        'Slug'=>$filename,
        'X-Upload-Content-Type'=>$data['mime_type'],
        'X-Upload-Content-Length'=>filesize($pikafile)
      ), '', 'application/x-gzip');

      if($result) {
        $headers = $result->getHeaders();
        //Send file
        $result = $this->_gdocs->uploadFile($pikafile,
                'Backup: '.$filename,
                'application/x-gzip',
                $headers['Location']);
      }
      else {
        error_log('Session creation failed.');
      }

      $data['document_uri'] = str_replace("https://docs.google.com/feeds/id/document","file",$result->getId()->getText());
      unlink($pikafile);
      return $data;
    }
    catch (Zend_Gdata_App_HttpException $e) {
       echo "Error uploadDoc: " . $e->getMessage() . "\n";
    }
  }

	private function getFeed($args){
		return "https://www.google.com/calendar/feeds/$args[email]/private/full";
	}

	public function processQueue($synced = 0) {
		$queue = $this->getActivityQueue($synced);

		if (!empty($queue)) {
			foreach($queue as $event) {
				if ($event['del']==1) {
					$event['uri']=$this->createEvent($event);
				} else if (!empty($event['uri'])) {
					$uri=$this->updateEvent($event);
				} else {
					$uri=$this->deleteEvent($event);
				}
				$this->updateQueue($event);
			}
		} else {
			die("Queue Empty");
		}
	}

	public function createEvent($args)
	{
    echo 'createEvent'.PHP_EOL;
    
		$startDate = pl_date_mogrify($args['act_date']);
		$startTime = date ("H:i:s",strtotime($args['act_time']));

		//Mark mod validate
		$endTime1 = date ("H:i:s",strtotime($args['act_end_time']));

		if ($startTime < $endTime1){
			$endTime = $endTime1;
		} else {
			$endTime = date ("H:i:s", strtotime($args['act_time'])+ "3600 hours");
		}
    
    echo 'final startTime = '.$startTime.' final endTime = '.$endTime.PHP_EOL;

		$doc = new DOMDocument();
		$doc->formatOutput = true;

		$entry = $doc->createElement('entry');
		$entry->setAttributeNS('http://www.w3.org/2000/xmlns/','xmlns','http://www.w3.org/2005/Atom');
		$entry->setAttributeNS('http://www.w3.org/2000/xmlns/','xmlns:gCal','http://schemas.google.com/gCal/2005');
		$entry->setAttributeNS('http://www.w3.org/2000/xmlns/','xmlns:gd','http://schemas.google.com/g/2005');

		$category=$doc->createElement("category");
		$_category=$entry->appendChild($category);
		$_category->setAttribute('scheme','http://schemas.google.com/g/2005#kind');
		$_category->setAttribute('term','http://schemas.google.com/g/2005#event');

		$title=$doc->createElement("title");
		$_title=$entry->appendChild($title);
		$_title->setAttribute('type','text');
		$subject=$doc->createTextNode($args['subject']);
		$_title->appendChild($subject);

		$content=$doc->createElement("content");
		$_content=$entry->appendChild($content);
		$_content->setAttribute('type','text');
		$text=$doc->createTextNode($args['summary']);
		$_content->appendChild($text);

		$when=$doc->createElement("gd:when");
		$_when=$entry->appendChild($when);
		$_when->setAttribute('startTime',$startDate . "T" . $startTime . $this->server_timezone_offset . ":00");
		$_when->setAttribute('endTime',$startDate . "T" . $endTime . $this->server_timezone_offset . ":00");

		$reminder=$doc->createElement("gd:reminder");
		$_reminder=$when->appendChild($reminder);
		$_reminder->setAttribute('minutes',$this->REMINDER_MINUTES);
		$_reminder->setAttribute('method', $this->REMINDER_TYPE);

		$where=$doc->createElement("gd:where");
		$_where=$entry->appendChild($where);
		$_where->setAttribute('valueString',$args['location_long']);

		$extprop=$doc->createElement("gd:extendedProperty");
		$_extprop=$entry->appendChild($extprop);
		$_extprop->setAttribute('name','pika_url');
		$_extprop->setAttribute('value',"https://" . $_SERVER["HTTP_HOST"] . "/pika/");

		$extprop0=$doc->createElement("gd:extendedProperty");
		$_extprop0=$entry->appendChild($extprop0);
		$_extprop0->setAttribute('name','pika_act_id');
		$_extprop0->setAttribute('value',$args['act_id']);

		$extprop1=$doc->createElement("gd:extendedProperty");
		$_extprop1=$entry->appendChild($extprop1);
		$_extprop1->setAttribute('name','pika_case_id');
		$_extprop1->setAttribute('value',$args['case_id']);

		$extprop2=$doc->createElement("gd:extendedProperty");
		$_extprop2=$entry->appendChild($extprop2);
		$_extprop2->setAttribute('name','pika_case_number');
		$_extprop2->setAttribute('value',$args['case_number']);

		$extprop3=$doc->createElement("gd:extendedProperty");
		$_extprop3=$entry->appendChild($extprop3);
		$_extprop3->setAttribute('name','pika_client_name');
		$_extprop3->setAttribute('value',$args['first_name'] . " " . $args['last_name']);

		$extprop4=$doc->createElement("gd:extendedProperty");
		$_extprop4=$entry->appendChild($extprop4);
		$_extprop4->setAttribute('name','pika_client_address');
		$_extprop4->setAttribute('value',$args['address']);

		$extprop5=$doc->createElement("gd:extendedProperty");
		$_extprop5=$entry->appendChild($extprop5);
		$_extprop5->setAttribute('name','pika_client_citystate');
		$_extprop5->setAttribute('value',$args['city']. ", " . $args['state'] . " " . $args['zip']);

		$extprop6=$doc->createElement("gd:extendedProperty");
		$_extprop6=$entry->appendChild($extprop6);
		$_extprop6->setAttribute('name','pika_client_phone');
		$_extprop6->setAttribute('value',"("  . $args['area_code'] . ") " . $args['phone']);

		$extprop7=$doc->createElement("gd:extendedProperty");
		$_extprop7=$entry->appendChild($extprop7);
		$_extprop7->setAttribute('name','pika_client_label');
		$_extprop7->setAttribute('value',$args['label']);

		$extprop8=$doc->createElement("gd:extendedProperty");
		$_extprop8=$entry->appendChild($extprop8);
		$_extprop8->setAttribute('name','pika_notes');
		$_extprop8->setAttribute('value',$args['notes']);

		$doc->appendChild($entry);
		//Zend_Debug::dump($doc->saveXML());

		try {
			if (empty($this->_gcal)) {
				$this->_gcal = new Zend_Gdata_Calendar($this->_client);
			}
			$entryResult = $this->_gcal->insertEntry($doc->saveXML(),$this->getFeed($args));
			return $entryResult;
		} catch (Exception $e) {
			Zend_Debug::dump($e);
			die("Create Entry");
		}
	}

	public function updateEvent ($args)
	{
		$startDate = pl_date_mogrify($args['act_date']);
		$startTime = date ("H:i:s",strtotime($args['act_time']));
		$endTime = date ("H:i:s",strtotime($args['act_end_time']));

		if ($args['uri'] != "") {
			$uri=$args['uri'];
		} else {
			$uri=$args['link'];
		}

		try {
			if (empty($this->_gcal)) {
				$this->_gcal = new Zend_Gdata_Calendar($this->_client);
			}
			$event = $this->_gcal->getCalendarEventEntry($uri);
			$event->title = $this->_gcal->newTitle($args['subject']);
			$event->where = array($this->_gcal->newWhere($args['location_long']));
			$event->content = $this->_gcal->newContent($args['summary']);
			$when = $this->_gcal->newWhen();
			$when->startTime = $startDate . "T" . $startTime . $this->server_timezone_offset . ":00";
			$when->endTime  = $startDate . "T" . $endTime . $this->server_timezone_offset . ":00";
			$event->when = array($when);
			return $event->save();
		} catch (Zend_Gdata_App_Exception $e) {
		    echo "Error: " . $e->getMessage();
		}
	}

	public function deleteEvent ($args)
	{
		try {
			if (empty($this->_gcal)) {
				$this->_gcal = new Zend_Gdata_Calendar($this->_client);
			}
			$event = $this->_gcal->getCalendarEventEntry($args['uri']);
			return $event->delete();
		} catch (Zend_Gdata_App_Exception $e) {
		    echo "Error: " . $e->getMessage();
		}
	}

	public function getActivityQueue()
	{
		try {

			$sql =  "SELECT DISTINCT `g2`.`uri`,`g2`.`synced`,`g2`.`del`,`g2`.`act_group`," .
					"`g2`.`email`,`g2`.`user_id`, `g2`.`organizer`,`g2`.`act_id`,`a`.`subject`, " .
					"`a`.`location_long`,`a`.`summary`, `a`.`act_date`,`a`.`act_time`,`a`.`act_end_time`, " .
					"`co`.`first_name`,`co`.`last_name`,`co`.`address`,`co`.`city`,`co`.state," .
					"`co`.`zip`,`co`.`area_code`,`co`.`phone`,`co`.`notes`, " .
					"`ca`.`number` as `case_number`, `ca`.`case_id`, `mp`.`label` " .
					"FROM `google_sync` as `g` " .
					"INNER JOIN `google_sync` as `g2` ON `g`.`act_group`=`g2`.`act_group`  " .
					"LEFT OUTER JOIN `activities` as `a` ON `g`.`act_id`=`a`.`act_id`  " .
					"LEFT OUTER JOIN `conflict` as `cn` ON `a`.`case_id`=`cn`.`case_id` " .
					"LEFT OUTER JOIN `contacts` as `co` ON `cn`.`contact_id`=`co`.`contact_id` " .
					"LEFT OUTER JOIN `cases` as `ca` ON `cn`.`case_id`=`ca`.`case_id` " .
					"LEFT OUTER JOIN `menu_problem` as `mp` ON `ca`.`problem`=`mp`.`value` " .
					"WHERE `g`.`synced`=0 ";

			/*
			 * OVERRIDE sync and act_id for act_group of event in update
			 * LEFT OUTER JOIN accomodates deleted content
			 */

			$result = mysql_query($sql) or die(mysql_error());
			while ($row = mysql_fetch_array($result, MYSQL_ASSOC)){
				$queue [] = $row;
			}
			return $queue;
		} catch (Exception $e) {
			die("Error getActivityQueue: " . $e->getMessage());
		}
	}

	public function getActivityId($args)
	{
		try {
			$sql =  "SELECT `act_id` FROM `google_sync` " .
					"WHERE  `act_group`='" . $args['act_group'] . "'";

			if (is_numeric($args['user_id'])) {
				$sql =  $sql . " AND `user_id`=" . $args['user_id'];
			}

			$result = mysql_query($sql) or die(mysql_error());
			$row = mysql_fetch_row($result);
			return $row[0];
		} catch (Exception $e) {
			die("Error getActivityId: " . $e->getMessage());
		}
	}

	public function getActivityIds($args)
	{
		try {
			$sql =  "SELECT `act_id` FROM `google_sync` " .
					"WHERE  `act_group`='" . $args['act_group'] . "'";
			if (is_numeric($args['user_id'])) {
				$sql =  $sql . " AND `user_id`=" . $args['user_id'];			}
			$result = mysql_query($sql) or die(mysql_error());
			while ($row = mysql_fetch_array($result, MYSQL_ASSOC)){
				$queue [] = $row;
			}
			return $queue;
		} catch (Exception $e) {
			die("Error getActivityIds: " . $e->getMessage());
		}
	}

	public function getActivityGroup($args)
	{
		try {
			/*
			 * create GUID to represent a group of activities
			 * Pika creates a new, unique "tickler" for each user
			 * even if all users are associated with the same event
			 */

			$sql =  "SELECT `act_group` FROM `google_sync` " .
					"WHERE  `act_id`=" . $args['act_id'];
			/*if (is_numeric($args['user_id'])) {
				$sql =  $sql . " AND `user_id`=" . $args['user_id'];
			}*/
			$result = mysql_query($sql) or die(mysql_error());
			$row = mysql_fetch_row($result);
			return $row[0];
		} catch (Exception $e) {
		     die("Error getActivityGroup: " . $e->getMessage());
		}
	}

	public function addActivityToQueue($args)
	{
		$sql =  "INSERT INTO `google_sync` " .
				"(`act_id`,`act_group`,`created`,`synced`,`del`,`user_id`,`email`,`link`,`organizer`) VALUES " .
				"(" . $args['act_id'] . ",'" .
				$args['act_group'] .
				"',CURRENT_TIMESTAMP," .
				$args['synced'] .
				",0,";
				$sql.=is_null($args['user_id'])?"'null'":$args['user_id'];
        $sql.= "," .
				"'" . $args['email'] . "'," .
				"'" . $args['link'] . "'," .
				"'" . $args['organizer'] . "')";
		try {
			echo $sql.PHP_EOL;
      $result = mysql_query($sql) or die(mysql_error());
			return $result;
		} catch (Exception $e) {
		     die("Error addActivityToQueue: " . $e->getMessage());
		}
	}

	public function updateQueue($args)
	{
		$sql =  "UPDATE `google_sync` " .
			"SET `modified`= CURRENT_TIMESTAMP, `synced`='" . $args['synced'] . "'";

		if (isset($args['uri']) && $args['uri'] != "") {
			$sql = $sql . ", `uri`='" . $args['uri'] . "'";
		}

		if (isset($args['link']) && $args['link'] != "") {
			$sql = $sql . ", `link`='" . $args['link'] . "'";
		}

		if (isset($args['del']) && $args['del'] != "") {
			$sql = $sql . ", `del`='" . $args['del'] . "'";
		}

		$sql = $sql . " WHERE `act_group`='" . $args['act_group'] . "'";

		if ($args['user_id'] != "") {
			$sql = $sql . " AND `user_id`=" . $args['user_id'];
		 }

		try {
			$result = mysql_query($sql) or die(mysql_error());
			return $result;
		} catch (Exception $e) {
			Zend_Debug::dump($e);
				die("Update Queue");
		}
	}

	public function getCaseUsers($case_id)
	{
		/*
		 * Get all users associated with a case.  Currently the 'case' table is
		 * denormalized to hold all of the users in a single row.  This limits a case
		 * to having only four possible users.
		 */

		try {
			$sql =  "SELECT `u1`.`email` as `email1`,`u2`.`email` as `email2`, " .
					"`u3`.`email` as `email3`,`u4`.`email` as `email4`  " .
					"FROM `cases` as `c`  " .
					"LEFT OUTER JOIN `users` as `u1` ON `c`.`user_id`=`u1`.`user_id`  " .
					"LEFT OUTER JOIN `users` as `u2` ON `c`.`cocounsel1`=`u2`.`user_id`  " .
					"LEFT OUTER JOIN `users` as `u3` ON `c`.`cocounsel2`=`u3`.`user_id`  " .
					"LEFT OUTER JOIN `users` as `u4` ON `c`.`cocounsel3`=`u4`.`user_id`   " .
					"WHERE `c`.`case_id` = $case_id";
			$list = array();
			$result = mysql_query($sql) or die(mysql_error());
			foreach(mysql_fetch_row($result) as $email) {
				if (!empty($email) && $email != $this->MASTER_EMAIL && !(in_array($email,$list))) {
					$list[]=$email;
				}
			};
			return $list;
		} catch (Exception $e) {
			Zend_Debug::dump($e);
			die("Error: getDocsQueue failed.");
		}
	}

	public function getDocsQueue()
	{
		/*
		 * Pika stores docs as BLOBS in MySQL and not as physical files
		 * Files are reconstituted as temp files in uploadDoc
		 */

		try {
			$sql =  "SELECT DISTINCT `gd`.`doc_id`,`gd`.`synced`,`gd`.`del`,`gd`.`document_uri`,`gd`.`collection_uri`," .
			"`u`.`email`,`doc_name`,`ds`.`doc_data`,`ds`.`doc_text`,`ds`.`doc_size`,`ds`.`mime_type`, " .
			"`ds`.`doc_type`,`ds`.`description`,`ds`.`created`,`ds`.`case_id`,CONCAT( COALESCE(`co`.`last_name`,'NO CLIENT'), ' - ', `c`.`number`) as `folder_name` " .
			"FROM `google_docs` as `gd` " .
			"LEFT OUTER JOIN `users` as `u` ON `gd`.`user_id`=`u`.`user_id` " .
			"LEFT OUTER JOIN `doc_storage` as `ds` ON `gd`.`doc_id`=`ds`.`doc_id` " .
			"LEFT OUTER JOIN `cases` as `c` ON `ds`.`case_id`=`c`.`case_id` " .
			"LEFT OUTER JOIN `contacts` as `co` ON `c`.`client_id`=`co`.`contact_id` " .
			"WHERE `gd`.`synced`=0 ";

			$result = mysql_query($sql) or die(mysql_error());
			while ($row = mysql_fetch_array($result, MYSQL_ASSOC)){
				$queue [] = $row;
			}

			return $queue;
		} catch (Exception $e) {
			Zend_Debug::dump($e);
			die("Error: getDocsQueue failed.");
		}
	}

	public function updateDocsQueue($args)
	{
		$sql =  "UPDATE `google_docs` " .
			"SET `modified`= CURRENT_TIMESTAMP, " .
			"`synced`=" . $args['synced'] . ", " .
			"`document_uri`='" . $args['document_uri'] . "', " .
			"`collection_uri`='" . $args['collection_uri'] . "' " .
			"WHERE `doc_id`=" .  $args['doc_id'];

		try {
			$result = mysql_query($sql) or die(mysql_error());
			return $result;
		} catch (Exception $e) {
		     die("Error updateDocsQueue: " . $e->getMessage());
		}
	}

	public function getCollectionId($data)
	{
		try {
			/*
			 * TO-DO
			 * Clean-up unnecessary str_replace("/contents") calls
			 * The original method for creating the root folder used a raw http call which returned an object
			 * with the full contents->src path.  Since this now uses Zend_Gdata_Docs::createFolder()
			 * the id->getText() is just the folder uri
			 * The default vs. document URI logic is also a bit confusing.  The different URIs vary if you
			 * are uploading, querying a feed or changing permissions. Part of this is probably
			 * caused by using both Zend_Gdata_Docs and raw XML Zend_Gdata::performHttpRequest() calls.
			 */

			if (empty($this->_gdocs)) {
			    //error_log('Get gdocs');
				$this->_gdocs = new Zend_Gdata_Docs($this->_client);
				//error_log('Done');
			}

			$collection_uri = null;
			$root_uri = null;

			// check for existing folder with a name matching the folder_name
			//error_log('Get the specified folder');
			foreach($this->getDocsFeed() as $folder) {
				if ( $folder->title->getText() === $data['folder_name']) {
					$collection_uri = $folder->id->getText();
					if ($root_uri !== null) {
						break;
					}
				} else if ($folder->title->getText() === $this->ROOTFOLDERNAME){
					$root_uri = $folder->id->getText();
					if (!preg_match("/\/contents/", $root_uri)) {
						$root_uri .= "/contents";
					}
					if ($collection_uri !== null) {
						break;
					}
				}
			}
			//error_log('Done');

			// create the root "My Cases" folder
			if ($root_uri === null) {
			    //error_log('if root uri null ==> create my cases');
				$root_folder = $this->_gdocs->createFolder($this->ROOTFOLDERNAME);
				$root_uri = $root_folder->id->getText() . "/contents";
			}

			// get the resource_id of the root folder for Zend_Gdata_Docs::createFolder()
			$parent_id = str_replace("/contents","",str_replace("https://docs.google.com/feeds/documents/private/full/","",$root_uri));

			// create new folder under the root folder
			if ($collection_uri === null) {
			    //error_log('if collection uri null ==> create foolder under root');
				$new_folder = $this->_gdocs->createFolder($data['folder_name'],$parent_id);
				//add new folder to global feed list
				$this->_docsfeed[]=$new_folder;
				$collection_uri = $new_folder->id->getText();
				//error_log('Done');
			}

			$acl_root_uri = str_replace("documents","default",str_replace("/contents","",$root_uri)) . "/acl";
			//error_log('Update ACL');
			$doc_acl=$this->updateACL($acl_root_uri, $data);
			//error_log('Done');

			// remove root folder resource id from collection uri for modifying the ACL
			$acl_collection_uri = str_replace("/$parent_id","",str_replace("documents","default",str_replace("/contents","",$collection_uri))) . "/acl";

			//error_log('update ACL');
			$doc_acl=$this->updateACL($acl_collection_uri, $data);
			//error_log('Done');

			return str_replace("/contents","",$collection_uri);
		} catch (Zend_Gdata_App_Exception $e) {
		    echo $e->getMessage();
		    echo '</br></br>';
			echo "\n>>>> ERROR getCollectionId. Can't change folder permissions yet. Rerunning script should fix this.<<<<\n";
		}
	}

	public function deleteDoc($data)
	{
		try {
			if (!empty($data['document_uri'])) {
				if (empty($this->_gdocs)) {
					$this->_gdocs = new Zend_Gdata_Docs($this->_client);
				}
				$uri = "https://docs.google.com/feeds/default/private/full/".$data['document_uri'];
				$file = $this->_gdocs->performHttpRequest( 'DELETE', $uri, array('GData-Version'=>'3.0','If-Match'=>'*'), NULL, 'application/atom+xml' );
				echo "DELETE FILE \n";
				return $data;
			}
		} catch (Zend_Gdata_App_Exception $e) {
		     die("Error deleteDoc: " . $e->getMessage());
		}
	}

	public function updateACL($uri,$data)
	{
		/*
		 * Files and Folders will be marked as uploaded by the Google user executing this code
		 * though the owner will be set to the person who uploaded the file in Pika.
		 * All other users associated with the case will be granted "writer" permission.
		 *
		 * TO-DO: functionality to remove permissions of a Google User once they've been removed
		 * from the case.
		 */

		if (empty($this->_gdocs)) {
			$this->_gdocs = new Zend_Gdata_Docs($this->_client);
		}

		// Get all the emails of users attached to this case
		if ($this->_caseusers === null) {
			$this->_caseusers = $this->getCaseUsers($data['case_id']);
		}

		try {
			// give users access to this entity
			foreach ($this->_caseusers as $email) {
				if ($email === $data['email']) {
					$role="owner";
				} else {
					$role="writer";
				}
		        $entry = '<entry xmlns="http://www.w3.org/2005/Atom" xmlns:gAcl="http://schemas.google.com/acl/2007">';
		        $entry .= "<category scheme='http://schemas.google.com/g/2005#kind' term='http://schemas.google.com/acl/2007#accessRule'/>";
		        $entry .= "<gAcl:role value='$role'/>";
		        $entry .= "<gAcl:scope type='user' value='$email'/>";
		        $entry .= "</entry>";

		        try{
					$this->_gdocs->performHttpRequest( 'POST', $uri, array('GData-Version'=>'3.0'), $entry, 'application/atom+xml' );
		        }
		        catch(Zend_Gdata_App_Exception $e)
		        {
		        	$ex = strtoupper($e->getMessage());
					$expectedEx = strtoupper("Expected response code 200, got 409");
					if(strstr($ex, $exOld) != FALSE) {
	    				throw ($e);
	  				}
		        }
			}
			return true;
		} catch(Zend_Gdata_App_Exception $e) {
		    die("Error updateACL: " . $e->getMessage() . "\n");
		}
	}

	public function getEmail($user_id)
	{
		$sql = "SELECT `email` FROM `users` WHERE `user_id`=$user_id";
		try {
			$result = mysql_query($sql) or die(mysql_error());
			$row = mysql_fetch_row($result);
			return $row[0];
		} catch (Exception $e) {
			die("Error getEmail: " . $e->getMessage());
		}
	}

  public function getCase($case_id)
  {
    $sql = "SELECT * FROM `cases` WHERE `case_id`=$case_id";
		try {
			$result = mysql_query($sql) or die(mysql_error());
			$row = mysql_fetch_row($result);
			return $row;
		} catch (Exception $e) {
			die("Error getCaseId: " . $e->getMessage());
		}
  }

  public function getOfficeMail($office_id)
	{
		$sql = "SELECT `email` FROM `menu_office` WHERE `value`=$office_id";
		try {
			$result = mysql_query($sql) or die(mysql_error());
			$row = mysql_fetch_row($result);
			return $row[0];
		} catch (Exception $e) {
			die("Error getOfficeEmail: " . $e->getMessage());
		}
	}

	public function clearSession ()
	{
		global $_SESSION;
		unset($_SESSION['REQUEST_TOKEN']);
		unset($_SESSION['ACCESS_TOKEN']);
		unlink($this->TOKENPATH);
		//echo "SESSION CLEARED\n";

	}

	function getDocumentBody($url) {
		$url.='&exportFormat=txt';    
		return $this->_gdocs->get($url)->getBody();
	}

	public function getDoc($document_id)
	{
		if (empty($this->_gdocs)) {
			$this->_gdocs = new Zend_Gdata_Docs($this->_client);
		}
		try{

			return $this->_gdocs->getDoc($document_id,'document');
		}
  		catch(Zend_Gdata_App_Exception $e) {
  			echo 'Exception=['.$e->getMessage().']<br/>';

  			$this->_gdocs = new Zend_Gdata_Docs($this->_client);
  			return $this->_gdocs->getDoc($document_id,'document');
		}
	}

	public function conectImapProtocol($mail)
	{
	  $config = new Zend_Oauth_Config();
	  $config->setOptions($this->options);
      $config->setToken($this->_accessToken);
      $config->setRequestMethod('GET');
      $url = 'https://mail.google.com/mail/b/' . $mail . '/imap/';
      $httpUtility = new Zend_Oauth_Http_Utility();

      /**
       * Get an unsorted array of oauth params,
       * including the signature based off those params.
       */
      $params = $httpUtility->assembleParams($url, $config);

      /**
       * Sort parameters based on their names, as required
       * by OAuth.
       */
      ksort($params);

      /**
       * Construct a comma-deliminated,ordered,quoted list of
       * OAuth params as required by XOAUTH.
       *
       * Example: oauth_param1="foo",oauth_param2="bar"
       */
      $first = true;
      $oauthParams = '';
      foreach ($params as $key => $value) {
        // only include standard oauth params
        if (strpos($key, 'oauth_') === 0) {
          if (!$first) {
            $oauthParams .= ',';
          }
          $oauthParams .= $key . '="' . urlencode($value) . '"';
          $first = false;
        }
      }

      /**
       * Generate SASL client request, using base64 encoded
       * OAuth params
       */
      $initClientRequest = 'GET ' . $url . ' ' . $oauthParams;
      $initClientRequestEncoded = base64_encode($initClientRequest);


      /**
       * Make the IMAP connection and send the auth request
       */
      $protocol = new Zend_Mail_Protocol_Imap('imap.gmail.com', '993', true);
      $authenticateParams = array('XOAUTH', $initClientRequestEncoded);
      //error_log(("Send auth request");
      $protocol->requestAndResponse('AUTHENTICATE', $authenticateParams);
      //error_log("Got auth response");
      //error_log("Instanciate Mail Storage");
      $storage = new Zend_Mail_Storage_Imap($protocol);
      //error_log("Mail Storage Instanciated");
      return new pikaImap($protocol, $storage);
	}

	public function is_date( $str )
  {
    $stamp = strtotime( $str );
    if (!is_numeric($stamp))
     return FALSE;

     $month = date( 'm', $stamp );
    $day   = date( 'd', $stamp );
    $year  = date( 'Y', $stamp );

    if (checkdate($month, $day, $year))
     return TRUE;

    return FALSE;
  }
}
?>