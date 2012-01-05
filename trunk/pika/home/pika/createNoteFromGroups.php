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
require_once ('pika_cms.php');
require_once ('pika-danio.php');
pika_init();

$date = getdate();
$noteDate = $date['year'] . "-" . $date['mon'] . "-" . $date['mday'];  
$noteTime = $date['hours'] . ":" . $date['minutes'] . ":" . $date['seconds'];

$_REQUEST['notes'] = str_replace('<br>', PHP_EOL, $_REQUEST['notes']);
$_POST['notes'] = $_REQUEST['notes'];
$_REQUEST['act_type'] = 'N';
$_REQUEST['category'] = 'CS';  
$_REQUEST['completed'] = '1';
$_REQUEST['hours'] = '0';  
$_REQUEST['act_date'] = $noteDate;
$_REQUEST['act_time'] = $noteTime;


$a = pl_grab_vars("activities");

//Create pika case note
$pk = new pikaCms();         
$pk->newActivity($a); 

$alertMsg = 'Pika case note created.';

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
