<?php
session_start();
       
$auth = '';
$auth_array = array();

$fromMail = isset($_REQUEST['save_attachments']);

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

if($fromMail)
{  
  $saveAttachments = $_REQUEST['save_attachments'];
  $entireConversation = $_REQUEST['entire_conversation'];
  if($saveAttachments == '1')
  {     
    $user = new pikaUser($auth_row['user_id']);
    $email = $user->getValue('email');
    $xgmmsgid = $_REQUEST['xgmmsgid'];
    
    $pikaImap = $obj->conectImapProtocol($email);        
    $attachments = $pikaImap->getAttachmentsByXGMMSGID($xgmmsgid, $entireConversation);
    $pikaImap->logout();     	           
    
    if($attachments == false) die(ERRORPAGE);
    
    require_once ('pika-danio.php');
    require_once('./app/lib/pikaDocument.php');
    
    pika_init();  
    
    if($entireConversation != '0')
      for($i=0;$i<count($attachments);$i++)
      {
        foreach ($attachments[$i] as $key => $value) {    
          $doc = new pikaDocument();           
          $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
        }    
      }
    else    
      foreach ($attachments as $key => $value) {    
        $doc = new pikaDocument();           
        $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
      }
  }
}

$document = $obj->getDoc($_REQUEST['document_id']);

$notes = $obj->getDocumentBody($document->getContent()->getSrc());
$notesWithNoDoubleLineBreaks = str_replace(chr(13).chr(10).chr(13).chr(10), chr(13).chr(10), $notes);
$notesWithNoDoubleLineBreaks = str_replace('﻿', '', $notesWithNoDoubleLineBreaks);
$_REQUEST['notes'] = $notesWithNoDoubleLineBreaks;

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

// VARIABLES
$pk = new pikaCms;

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