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
$xgmmsgid = $_REQUEST['xgmmsgid'];
$saveAttachments = $_REQUEST['save_attachments'];
$entireConversation = $_REQUEST['entire_conversation'];
$subject = 'Summary';

$pikaImap = $obj->conectImapProtocol($email);
$messages = $pikaImap->getMsgsByXGMMSGID($xgmmsgid, $entireConversation, $saveAttachments, $subject);
$pikaImap->logout();

if($messages == false) die(ERRORPAGE);

$content = '';
if($entireConversation)
  for($i=0;$i<count($messages);$i++)$content.='Message '.($i+1).':'.PHP_EOL.$messages[$i][0].PHP_EOL.PHP_EOL;
else 
  $content = 'Message 1:'.PHP_EOL.$messages[0].PHP_EOL.PHP_EOL;

$date = getdate();
$noteDate = $date['year'] . "-" . $date['mon'] . "-" . $date['mday'];  
$noteTime = $date['hours'] . ":" . $date['minutes'] . ":" . $date['seconds'];

//$_REQUEST['notes'] = isset($html)? $html : $plain;  
$_REQUEST['notes'] = $content;
$_REQUEST['summary'] = $subject;
$_POST['summary'] = $subject;
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

if($saveAttachments){
  require_once ('pika-danio.php');    
  require_once('./app/lib/pikaDocument.php');     
  pika_init();    
  if($entireConversation)   
    for($i=0;$i<count($messages);$i++)
    {
      foreach ($messages[$i][1] as $key => $value) {    
        $doc = new pikaDocument();           
        $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
      }    
    }
  else
    foreach ($messages[1] as $key => $value) {    
      $doc = new pikaDocument();           
      $doc->uploadDocFromContent($value['file_content'], $value['file_name'], $value['file_type'], $value['file_size'], "", 0, "C", $_REQUEST['case_id']);    
    } 
}

$alertMsg = 'Pika case note created';
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
