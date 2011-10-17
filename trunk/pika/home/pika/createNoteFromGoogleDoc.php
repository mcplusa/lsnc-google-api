<?php
session_start();
       
$auth = '';
$auth_array = array();

if(isset($_GET['token']) && $_GET['token']) {
	$auth = base64_decode($_GET['token']);
	$auth_array = unserialize($auth);
	
	$_SERVER['PHP_AUTH_USER'] = $auth_array[0];
	$_SERVER['PHP_AUTH_PW'] = $auth_array[1];
}

//chdir('../');
require_once ('pika-danio.php');
pika_init();
require_once('pikaGoogleSync.php');
require_once('pikaUser.php');
require_once('Zend/Loader.php');
Zend_Loader::loadClass('Zend_Debug');

$obj = new pikaGoogleSync();
$obj->connect();

$saveAttachments = $_REQUEST['save_attachments'];
if($saveAttachments == '1')
{     
  $user = new pikaUser($auth_row['user_id']);
  $email = $user->getValue('email');
  
  $obj->conectImapProtocol($email);
  
  //Get the msg id usin the X-GM-MSGID
  $obj->_protocol->examine();
  $xg_gm_msidg = $obj->hex2dec($_REQUEST['xgmmsgid']);  
  $response = $obj->_protocol->requestAndResponse("UID SEARCH X-GM-MSGID " . $xg_gm_msidg);
  if(is_null($response) || $response==false || !isset($response[0][1]))
  {
  	echo "Could not find the message<br/>";
  	return;
  }  	    
  $msgid = $response[0][1];      
  
  //Get the message with the obtained id
  $number = $obj->_storage->getNumberByUniqueId($msgid);
  $msg = $obj->_storage->getMessage($number);     
  
  $attachments = array(); 
  
  //Iterate message parts and get attachments
  foreach (new RecursiveIteratorIterator($msg) as $part) {
    //If part contains content-disposition header then it's an attachment part  
    if($part->headerExists("content-disposition") && strtok($part->contentDisposition, ';') == 'attachment')
    {      	 
      //Get the attacment file name
      $fileName = strtok('=');
      $fileName = strtok('"');
      str_replace("\"", "", $fileName);
      $fileType = strtok($part->contentType, ';');
      $fileContent = base64_decode($part->getContent());
      $fileSize = strlen($fileContent);                	    	 
      //Get the attachement and decode
      $attachments[] = array("file_name" => $fileName, "file_type" => $fileType, "file_content" => $fileContent, "file_size" => $fileSize);	                    	
    }
  }
  
  require_once ('pika-danio.php');
  require_once('./app/lib/pikaDocument.php');
  
  pika_init();  
  
  foreach ($attachments as $key => $value) {    
    $doc = new pikaDocument();           
    $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
  }
}

$document = $obj->getDoc($_REQUEST['document_id']);

$notes = $obj->getDocumentBody($document->getContent()->getSrc());
$notesWithNoDoubleLineBreaks = str_replace(chr(13).chr(10).chr(13).chr(10), chr(13).chr(10), $notes);



require_once ('pika_cms.php');

$date = getdate();
$noteDate = $date['year'] . "-" . $date['mon'] . "-" . $date['mday'];  
$noteTime = $date['hours'] . ":" . $date['minutes'] . ":" . $date['seconds'];

$_REQUEST['act_type'] = 'N';
$_REQUEST['category'] = 'CS';  
$_REQUEST['completed'] = '1'; 
$_REQUEST['hours'] = '0';  
$_REQUEST['act_date'] = $noteDate;
$_REQUEST['act_time'] = $noteTime;
$_REQUEST['notes'] = $notesWithNoDoubleLineBreaks;  

// VARIABLES
$pk = new pikaCms;
//$action = pl_grab_var('action', null, 'REQUEST');
//$screen = pl_grab_var('screen', 'info', 'REQUEST');
//$case_id = pl_grab_var('case_id', null, 'REQUEST');
//$relation_code = pl_grab_var('relation_code', null, 'REQUEST');
//$base_url = pl_settings_get('base_url');

$a = pl_grab_vars('activities');

$act_id = $pk->newActivity($a);

//$obj->deleteDoc($document);
$document->delete();

$alertMsg = 'Pika case note created';
$alertMsg .=($saveAttachments == '1')?" and attachments uploaded to case.":".";
  
$returnHtml ='
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>      	           
    	  <script>
      	$(document).ready(function () {        						        
	            alert("'.$alertMsg.'");         
	            window.close();		            
          	});																				                                             	                                             
  	</script>';
echo $returnHtml;

return true;

?>