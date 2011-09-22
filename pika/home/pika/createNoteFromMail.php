<?php
/*
if((count($_REQUEST))==0)die("Can't create pika note.<br/>Trying again should fix this.");

session_start();
require_once ('./app/lib/pikaImapOAuth.php');
require_once ('pika_cms.php');

$imapOauth = new pikaImapOAuth();
$imapOauth->connect();
*/

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
require_once ('pika_cms.php');
require_once ('pika-danio.php');
pika_init();
require_once('pikaGoogleSync.php');
require_once('pikaUser.php');


//Fix para que no se pierdna los parametros de la URL al ingresar
//a la pagina de autorizacion de google que luego redirige con 
//los parametros rotos.
foreach($_REQUEST as $key => $value)
{
	$_REQUEST[$key] = urldecode($value);
	if(strstr($key, 'amp;'))
	{
		$newKey = $key; 
		$_REQUEST[str_replace('amp;', '', $newKey)] = urldecode($value); 				
	}		
}

$obj = new pikaGoogleSync();
$obj->connect();

$user = new pikaUser($auth_row['user_id']);
$email = $user->getValue('email');

$obj->conectImapProtocol($email);

//Get the msg id usin the X-GM-MSGID
//$imapOauth->_protocol->examine();
$obj->_protocol->examine();
$xg_gm_msidg = /*$imapOauth*/$obj->hex2dec($_REQUEST['xgmmsgid']);  
$response = /*$imapOauth*/$obj->_protocol->requestAndResponse("UID SEARCH X-GM-MSGID " . $xg_gm_msidg);
if(is_null($response) || $response==false || !isset($response[0][1]))
{
	echo 'Did not find the message.<br/>';
	return;
}  	    
$msgid = $response[0][1];      

//Get the message with the obtained id
$number = /*$imapOauth*/$obj->_storage->getNumberByUniqueId($msgid);
$msg = /*$imapOauth*/$obj->_storage->getMessage($number);     


$saveAttachments = $_REQUEST['save_attachments'];
if($saveAttachments)
{
	$attachments = array(); 
}

//Iterate message parts and get attachments, text/plain and/or text/html
foreach (new RecursiveIteratorIterator($msg) as $part) {
  //If part contains content-disposition header then it's an attachment part  
  if($part->headerExists("content-disposition") && strtok($part->contentDisposition, ';') == 'attachment')
  {
    if($saveAttachments)
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
  else 
  {
    if(strtok($part->contentType, ';') == 'text/plain'){
      $plain = $part->getContent();      
    }	
    elseif(strtok($part->contentType, ';') == 'text/html'){                    
      $html = $part->getContent();      	       
    }      	    
  }
}                     
   
$date = getdate();
$noteDate = $date['year'] . "-" . $date['mon'] . "-" . $date['mday'];  
$noteTime = $date['hours'] . ":" . $date['minutes'] . ":" . $date['seconds'];

//$_REQUEST['notes'] = isset($html)? $html : $plain;  
$_REQUEST['notes'] = isset($plain)? $plain : $html;

$_REQUEST['act_type'] = 'N';
$_REQUEST['category'] = 'CS';  
$_REQUEST['completed'] = '1';
$_REQUEST['summary'] = 'Note Uploaded From Mail';  
$_REQUEST['hours'] = '0';  
$_REQUEST['act_date'] = $noteDate;
$_REQUEST['act_time'] = $noteTime;


$a = pl_grab_vars("activities");

//Create pika case note
$pk = new pikaCms();         
$pk->newActivity($a); 

if($saveAttachments){
  require_once ('pika-danio.php');    
  require_once('./app/lib/pikaDocument.php');  
  
  
  pika_init();  
  
  foreach ($attachments as $key => $value) {    
    $doc = new pikaDocument();           
    $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
    //Save the attachment
    /*$fh = fopen("C:/".$key.'.txt', 'w');
    fwrite($fh, $value);    
    fclose($fh);*/
  }
}


$alertMsg = 'Pika note successfully created';
$alertMsg .=$_REQUEST['save_attachments']?" and attachments uploaded to case.":".";
  
$returnHtml ='
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>      	           
    	  <script>
      	$(document).ready(function () {        						        
	            alert("'.$alertMsg.'");         
	            window.close();		            
          	});																				                                             	                                             
  	</script>';
echo $returnHtml;
       	  
?>
