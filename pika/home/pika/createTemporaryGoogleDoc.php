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

$fromMail = !isset($_REQUEST['doc_data']);


//error_log('Instanciate pikaGoogleSync');
$obj = new pikaGoogleSync();
//error_log('Instanciated pikaGoogleSync');
$obj->connect();
//error_log('Connected pikaGoogleSync');

$subject = 'Summary';

//if from mail then get the email content
if($fromMail)
{
  $user = new pikaUser($auth_row['user_id']);
  $email = $user->getValue('email');
  $xgmmsgid = $_REQUEST['xgmmsgid'];
  $entireConversation = $_REQUEST['entire_conversation'];
  
  $pikaImap = $obj->conectImapProtocol($email);
  $messages = $pikaImap->getMsgsByXGMMSGID($xgmmsgid, $entireConversation, false, $subject);
  $pikaImap->logout();

  if($messages == false) die(ERRORPAGE);
  
  $content = '';
  if($entireConversation)
    for($i=0;$i<count($messages);$i++)$content.='Message '.($i+1).':'.PHP_EOL.$messages[$i][0].PHP_EOL.PHP_EOL;
  else 
    $content = 'Message 1:'.PHP_EOL.$messages[0].PHP_EOL.PHP_EOL;  
}
else
{
  //echo $_POST['doc_data'].'<br>';
  $_REQUEST['doc_data'] = str_replace('<br>', PHP_EOL, $_REQUEST['doc_data']);
  $_POST['doc_data'] = $_REQUEST['doc_data'];  
}

          
//$_REQUEST['doc_data'] = isset($html)? $html : $plain;
if($fromMail)$_REQUEST['doc_data'] = $content;
$_REQUEST['doc_name'] = "test.txt";
$_REQUEST['folder_name'] = "temp_docs";
$_REQUEST['mime_type'] = "text/plain";
$_REQUEST['folder_name'] = 'Editing Docs';

//error_log('Upload google doc');
$googleDoc = $obj->uploadDoc($_REQUEST);
//error_log('google doc uploaded');
//error_log('get google document id');
//$documentId = str_replace("https://docs.google.com/feeds/id/document%3A","",$googleDoc['document_uri']);
$documentId = str_replace("file%3A","",$googleDoc['document_uri']);
//error_log('got google document id');

//change to your apps domain
$editDocumentUrl = 'https://docs.google.com/a/mcplusa-dev.com/document/d/'.$documentId.'/edit?hl=en_US';

$html ='<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
      	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>            
      	<script>
        	$(document).ready(function () {        		
						$("#attachToCase").click(function(){';
if($fromMail)
{
      $html.='var save_attachments = getSaveAttachments();					
							var url = "/pika/createNoteFromGoogleDoc.php?case_id='.$_REQUEST['case_id'].'&document_id='.$documentId.'&save_attachments=" + save_attachments + "&xgmmsgid='.$_REQUEST['xgmmsgid'].'&entire_conversation='.$entireConversation.'&summary='.$subject.'";';
}
else
{
      $html.='var url = "/pika/createNoteFromGoogleDoc.php?case_id='.$_REQUEST['case_id'].'&document_id='.$documentId.'&summary='.$_REQUEST['summary'].'";';
}
      $html.='window.open(url);
            	window.close();            
      			});
      		});';

$html.='function deleteTemporaryGoogleDoc()
			{
    		  var url = "/pika/deleteGoogleDoc.php?document_id='.$documentId.'";		                            
              window.open(url);
              window.close();
			}
			
			function getSaveAttachments()
      {
        var save_attachments = "0";
        if($("#saveAttachments").is(":checked")){
          save_attachments = "1";
        }
        return save_attachments;
      }
	  	</script>	  	
	  	<iframe src="' . $editDocumentUrl . '" width="860px" height="600px">
	  	</iframe>
	  	</br></br>
     	<input type="button" id="attachToCase" value="Attach to Case"/> 
     	<input type="button" onClick="deleteTemporaryGoogleDoc(); return false;" id="cancelAttachToCase" value="Cancel"/>';
if($fromMail)
{
  $html.='<label for="saveAttachments" style="float:right;">Save Attachments to Case</label>
				 <input style="float:right;" type="checkbox" id="saveAttachments"';
  $html.=($_REQUEST['save_attachments'])?'checked="checked">':'>';
}
	   	   
    echo $html;	   	  
?>