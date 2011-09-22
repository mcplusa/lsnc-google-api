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
require_once('Zend/Loader.php');
Zend_Loader::loadClass('Zend_Debug');

$obj = new pikaGoogleSync();
$obj->connect();

$document = $obj->getDoc($_REQUEST['document_id']);

$notes = $obj->getDocumentBody($document->getContent()->getSrc());

require_once ('pika_cms.php');

$date = getdate();
$noteDate = $date['year'] . "-" . $date['mon'] . "-" . $date['mday'];  
$noteTime = $date['hours'] . ":" . $date['minutes'] . ":" . $date['seconds'];

$_REQUEST['act_type'] = 'N';
$_REQUEST['category'] = 'CS';  
$_REQUEST['completed'] = '1';
$_REQUEST['summary'] = 'Note Uploaded From Mail';  
$_REQUEST['hours'] = '0';  
$_REQUEST['act_date'] = $noteDate;
$_REQUEST['act_time'] = $noteTime;
$_REQUEST['notes'] = $notes;  

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

return true;

?>