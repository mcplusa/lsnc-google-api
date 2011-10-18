<?php
session_start();
/*       
$auth = '';
$auth_array = array();

if(isset($_GET['token']) && $_GET['token']) {
	$auth = base64_decode($_GET['token']);
	$auth_array = unserialize($auth);
	
	$_SERVER['PHP_AUTH_USER'] = $auth_array[0];
	$_SERVER['PHP_AUTH_PW'] = $auth_array[1];
}
*/
//chdir('../');
require_once ('pika-danio.php');
pika_init();
require_once('pikaGoogleSync.php');
require_once('Zend/Loader.php');
Zend_Loader::loadClass('Zend_Debug');

$obj = new pikaGoogleSync();
$obj->connect();

$document = $obj->getDoc($_REQUEST['document_id']);

$document->delete();

$alertMsg = 'Pika case note creation canceled, google document deleted.';
  
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