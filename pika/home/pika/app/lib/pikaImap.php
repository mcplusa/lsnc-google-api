<?php
require_once('Zend/Loader.php');
require_once ('Zend/Mail/Protocol/Imap.php');
require_once ('Zend/Mail/Storage/Imap.php');

define("ERRORPAGE", '<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script><script>$(document).ready(function(){alert("Error when retrieving messages, try again later.");window.close();});</script>');

class pikaImap{      
  private $_protocol = null;
  private $_storage = null;  
  
  function __construct(Zend_Mail_Protocol_Imap $protocol, Zend_Mail_Storage_Imap $storage)
  {   
    $this->_protocol = $protocol;
    $this->_storage = $storage;         
  }
  
  private function getMsgNumberByXGMMSGID($xgmmsgid)
  {
    $msgid = $this->getMsgIdByXGMMSGID($xgmmsgid);          
    return $this->_storage->getNumberByUniqueId($msgid);    
  }
  
  private function getMsgIdByXGMMSGID($xgmmsgid)
  {
    $xg_gm_msidg = $this->hex2dec($xgmmsgid);  
    $response = $this->_protocol->requestAndResponse("UID SEARCH X-GM-MSGID " . $xg_gm_msidg);
    if(is_null($response) || $response==false || !isset($response[0][1]))
    {      
      return false;
    }           
    return $response[0][1];
  }
  
  private function getThreadIdByNumber($number)
  {
    $response = $this->_protocol->requestAndResponse("FETCH ".$number." (X-GM-THRID)");
    return $response[0][2][1];
  }
  
  private function getMsgsIdsByNumber($number)
  {
    $threadID = $this->getThreadIdByNumber($number);
    $response = $this->_protocol->requestAndResponse("UID SEARCH X-GM-THRID ".$threadID);
    return $response[0];
  }
     
  private function getZendMsgByXGMMSGID($xgmmsgid){
    $msgNumber = $this->getMsgNumberByXGMMSGID($xgmmsgid);
    $msg = $this->_storage->getMessage($msgNumber);
    return $msg;    
  }    
  
  private function getMessage($msg, $getAttachments)
  {
    try {      
      $attachments = null;
      if($getAttachments)$attachments=array();              
      foreach (new RecursiveIteratorIterator($msg) as $part) {      
        if($part->headerExists("content-disposition")){
          if($getAttachments && strtok($part->contentDisposition, ';') == 'attachment'){            
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
        elseif(!$part->headerExists("content-type")) continue;
        elseif(strtok($part->contentType, ';') == 'text/plain') $foundPart = $part;
        elseif((!$foundPart) && strtok($part->contentType, ';') == 'text/html') $foundPart = $part;
      }
      $return = array();
      $return[] = $foundPart->getContent();
      if($getAttachments) $return[] = $attachments;
      return $return;
    }
    catch(Exception $e)
    {
      error_log($e->getMessage());
      return false;      
    }
  }
                 
  private function getAttachment($msg)
  {
    try
    {
      $attachments = array();      
      //Iterate message parts and get attachments
      foreach (new RecursiveIteratorIterator($msg) as $part) {      
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
      return $attachments;
    }
    catch(Exception $e)
    {
      error_log($e->getMessage());
      return false;      
    }
  } 
  
  private function hex2dec($hex_string)
  { 
    return $this->any_base_convert($hex_string, 16, 10);  
  }
  
  private function any_base_convert ($numstring, $frombase, $tobase)
  {
    $chars = "0123456789abcdefghijklmnopqrstuvwxyz";
    $tostring = substr($chars, 0, $tobase);  
    $length = strlen($numstring);
    $result = '';
    for ($i = 0; $i < $length; $i++){
      $number[$i] = strpos($chars, $numstring{$i});
    }
    do{
      $divide = 0;
      $newlen = 0;
      for ($i = 0; $i < $length; $i++) {
        $divide = $divide * $frombase + $number[$i];
        if ($divide >= $tobase) {
          $number[$newlen++] = (int)($divide / $tobase);
          $divide = $divide % $tobase;
        }
        elseif ($newlen > 0) {
          $number[$newlen++] = 0;
        }
      }
      $length = $newlen;
      $result = $tostring{$divide} . $result;
    }
   while ($newlen != 0);
   return $result;
 }
  
  private function getThreadMsgsByXGMMSGID($xgmmsgid, $getAttachments, &$subject)
  {
    $messages = array();
    
    //$this->_protocol->examine();               

    //Get the message number with the obtained id
    $number = $this->getMsgNumberByXGMMSGID($xgmmsgid);    
    
    //Get the thread id msgs numbers
    $threadMsgsIds = $this->getMsgsIdsByNumber($number);

    //Get all msgs content
    for($i=1;$i<count($threadMsgsIds);$i++)
    {
      $msgNumber = $this->_storage->getNumberByUniqueId($threadMsgsIds[$i]);
      $msg = $this->_storage->getMessage($msgNumber);  
      if($i==1)
        $subject = $msg->subject;
      $messages[] = $this->getMessage($msg, $getAttachments);
    }
    
    return $messages;
  }
 
  private function getAttachmentByXGMMSGID($xgmmsgid)
  {         
    return $this->getAttachment($this->getZendMsgByXGMMSGID($xgmmsgid));                    
  } 
 
  private function getMsgByXGMMSGID($xgmmsgid, $getAttachments, &$subject)
  {         
    $msg = $this->getZendMsgByXGMMSGID($xgmmsgid);
    $subject = $msg->subject;
    return $this->getMessage($msg, $getAttachments);            
  }
  
  private function getThreadAttachmentsByXGMMSGID($xgmmsgid)
  {
    $attachments = array();                      

    //Get the message number with the obtained id
    $number = $this->getMsgNumberByXGMMSGID($xgmmsgid);    
    
    //Get the thread id msgs numbers
    $threadMsgsIds = $this->getMsgsIdsByNumber($number);

    //Get all msgs content
    for($i=1;$i<count($threadMsgsIds);$i++)
    {
      $msgNumber = $this->_storage->getNumberByUniqueId($threadMsgsIds[$i]);
      $msg = $this->_storage->getMessage($msgNumber);  
      $attachments[] = $this->getAttachment($msg);
    }    
    return $attachments;          
  } 
  
  public function getMsgsByXGMMSGID($xgmmsgid, $entireConversation, $saveAttachments, &$subject)
  {
    if($entireConversation)return $this->getThreadMsgsByXGMMSGID($xgmmsgid, $saveAttachments, $subject);
    return $this->getMsgByXGMMSGID($xgmmsgid, $saveAttachments, $subject);
  }
  
  public function getAttachmentsByXGMMSGID($xgmmsgid, $entireConversation)
  {
    if($entireConversation)return $this->getThreadAttachmentsByXGMMSGID($xgmmsgid);
    return $this->getAttachmentByXGMMSGID($xgmmsgid);
  }
  
  public function logout()
  {
    $this->_protocol->logout();
  }
}
?>