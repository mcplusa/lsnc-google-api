<?php

/*print_r($_REQUEST);*/


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


$obj = new pikaGoogleSync();

$obj->connect();


$user = new pikaUser($auth_row['user_id']);
$email = $user->getValue('email');

$obj->conectImapProtocol($email);


//Get the msg id usin the X-GM-MSGID

$obj->_protocol->examine();
$xg_gm_msidg = $obj->hex2dec($_REQUEST['xgmmsgid']);  
$response = $obj->_protocol->requestAndResponse("UID SEARCH X-GM-MSGID " . $xg_gm_msidg);
if(is_null($response) || $response==false || !isset($response[0][1]))
{
	echo 'Could not fin the message<br/>';
	return;
}  	    
$msgid = $response[0][1];      

//Get the message with the obtained id
$number = $obj->_storage->getNumberByUniqueId($msgid);
$msg = $obj->_storage->getMessage($number);     

//Iterate message parts and get text/plain and/or text/html

$summary = $msg->subject;
foreach (new RecursiveIteratorIterator($msg) as $part) {
  if(!$part->headerExists("content-disposition"))
  {
    if(strtok($part->contentType, ';') == 'text/plain'){
      $plain = $part->getContent();      
    }	
    elseif(strtok($part->contentType, ';') == 'text/html'){                    
      $html = $part->getContent();      	       
    }      	    
  }
}

          
//$_REQUEST['doc_data'] = isset($html)? $html : $plain;
$_REQUEST['doc_data'] = isset($plain)? $plain : $html;
$_REQUEST['doc_name'] = "test.txt";
$_REQUEST['folder_name'] = "temp_docs";
$_REQUEST['convert'] = 1;
$_REQUEST['mime_type'] = "text/plain";


$googleDoc = $obj->uploadDoc($_REQUEST);

$documentId = str_replace("https://docs.google.com/feeds/id/document%3A","",$googleDoc['document_uri']);
//change to your apps domain
$editDocumentUrl = 'https://docs.google.com/a/mcplusa-dev.com/document/d/'.$documentId.'/edit?hl=en_US';

$html ='<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
      	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>            
      	<script>
        	$(document).ready(function () {        		
				$("#attachToCase").click(function(){
					var save_attachments = getSaveAttachments();					
            		var url = "/pika/createNoteFromGoogleDoc.php?case_id='.$_REQUEST['case_id'].'&document_id='.$documentId.'&save_attachments=" + save_attachments + "&xgmmsgid='.$_REQUEST['xgmmsgid'].'&summary='.$summary.'";		                            
            		window.open(url);
            		window.close();            
      			});
      		});

			function deleteTemporaryGoogleDoc()
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
       	<input type="button" style="width: 160px; font-weight: bold; font-size: 16px;" id="attachToCase" value="Attach to Case"/> 
       	<a onClick="deleteTemporaryGoogleDoc(); return false;" href="#">Cancel</a>       	
		<label for="saveAttachments" style="float:right;">Save Attachments to Case</label>
		<input style="float:right;" type="checkbox" id="saveAttachments"';        
$html.=($_REQUEST['save_attachments'])?'checked="checked">':'>';
	   	   
        echo $html;	   	  
?>