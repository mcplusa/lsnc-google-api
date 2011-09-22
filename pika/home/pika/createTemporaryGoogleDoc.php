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
//$imapOauth->_protocol->examine();
$obj->_protocol->examine();
$xg_gm_msidg = /*$imapOauth*/$obj->hex2dec($_REQUEST['xgmmsgid']);  
$response = /*$imapOauth*/$obj->_protocol->requestAndResponse("UID SEARCH X-GM-MSGID " . $xg_gm_msidg);
if(is_null($response) || $response==false || !isset($response[0][1]))
{
	echo 'no encontré el mensaje<br/>';
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
          
//$_REQUEST['doc_data'] = isset($html)? $html : $plain;
$_REQUEST['doc_data'] = isset($plain)? $plain : $html;
  
$_REQUEST['doc_name'] = "test.txt";
$_REQUEST['folder_name'] = "temp_docs";
$_REQUEST['convert'] = 1;
$_REQUEST['mime_type'] = "text/plain";

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

$googleDoc = $obj->uploadDoc($_REQUEST);

$documentId = str_replace("document%3A","",$googleDoc['document_uri']);

//change to your apps domain
$editDocumentUrl = 'https://docs.google.com/a/mcplusa-dev.com/document/d/'.$documentId.'/edit?hl=en_US';

$html ='<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
      	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>            
      	<script>
        	$(document).ready(function () {        		
				$("#attachToCase").click(function(){					
            var url = "/pika/createNoteFromGoogleDoc.php?case_id='.$_REQUEST['case_id'].'&document_id='.$documentId.'&save_attachments='.$_REQUEST['save_attachments'].'";		                            
            window.open(url);
            window.close();
            /*
            $.getJSON(url, function(data){
              alert(data);	            		
            })
            .error(
              function(jqXHR, textStatus, errorThrown) {
                alert(textStatus); 
            });
            */
          });																				                                             	
        });                                              
	  	</script> 
       	<input type="button" id="attachToCase" value="Attach to Case"/>
	   	<input type="hidden" id="caseId" value="'.$_REQUEST['case_id'].'"/>
	   	<iframe src="' . $editDocumentUrl . '" width="860px" height="600px">';
	   
	   
echo $html;	   
	   



?>