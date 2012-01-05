<?php

require_once('pikaDocumentBase.php');

class pikaDocument extends pikaDocumentBase 
{
	function pikaDocument($doc_id = null){
		parent::pikaDocument($doc_id);
	}
	
	function __construct($doc_id = null){
		parent::__construct($doc_id);
	}	
	
	function getDocId() {		
		try {
			$sql =  "SELECT `doc_id` FROM `doc_storage` " .	
					"WHERE  `user_id`=" . $this->user_id . " AND `case_id`=" . $this->case_id .
					" AND `created` ='" . $this->created . "' AND `doc_name`='" . $this->doc_name . "'";
						
			$result = mysql_query($sql) or die(mysql_error());		
			$row = mysql_fetch_row($result);		
			return $row[0];
		} catch (Exception $e) {
			Zend_Debug::dump($e);			
			die("ERROR: getDocId()");
		}			
	}
	
    function uploadDocFromContent($file_content, $file_name, $file_type, $file_size, $description = null, $parent_folder = null, $doc_type = null, $case_id = null) {
		parent::uploadDocFromContent($file_content, $file_name, $file_type, $file_size, $description, $parent_folder, $doc_type, $case_id);
		$doc_id =$this->getDocId();		
		
		if (is_numeric($doc_id)) {
			try {
				$sql =  "INSERT INTO `google_docs` " .
					"(`doc_id`,`created`,`synced`,`del`,`user_id`) VALUES " .
					"(" . $doc_id . ",CURRENT_TIMESTAMP,0,0," . $this->user_id . ")";
				$result = mysql_query($sql) or die(mysql_error());	
				return true;
			} catch (Exception $e) {			
				Zend_Debug::dump($e);
				die("ERROR: uploadDoc()");
			}	
		} else {
			return false;
		}
	}
			
	function uploadDoc($file_array = null, $description = null, $parent_folder = null, $doc_type = null, $case_id = null) {
		parent::uploadDoc($file_array, $description, $parent_folder, $doc_type, $case_id);		
		$doc_id =$this->getDocId();		
		
		if (is_numeric($doc_id)) {
			try {
				$sql =  "INSERT INTO `google_docs` " .
					"(`doc_id`,`created`,`synced`,`del`,`user_id`) VALUES " .
					"(" . $doc_id . ",CURRENT_TIMESTAMP,0,0," . $this->user_id . ")";
				$result = mysql_query($sql) or die(mysql_error());	
				return true;
			} catch (Exception $e) {			
				Zend_Debug::dump($e);
				die("ERROR: uploadDoc()");
			}	
		} else {
			return false;
		}
	}
	
	function delete($location = null, $files = array()) {		
		$doc_id =$this->getDocId();
		parent::delete($location,$files);
		if (is_numeric($doc_id)) {
			try {
				$sql =  "UPDATE `google_docs` SET `del`=1,`synced`=0 WHERE `doc_id`=$doc_id";
				$result = mysql_query($sql) or die(mysql_error());	
			} catch (Exception $e) {
				Zend_Debug::dump($e);				
				die("ERROR: delete()");
			}	
		}
		
					
	}

	
}
?>