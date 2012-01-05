<?php

/**********************************/
/* Pika CMS (C) 2002 Aaron Worley */
/* http://pikasoftware.net        */
/**********************************/

require_once('plBase.php');

/**
* Something.
*
* @author Aaron Worley <amworley@pikasoftware.net>;
* @version 1.0
* @package Danio
*/
class pikaDocumentBase extends plBase 
{
	function pikaDocument($doc_id = null)
	{
		return $this->__construct($doc_id);
	}

	
	function __construct($doc_id = null)
	{
		$this->db_table = 'doc_storage';
		parent::__construct($doc_id);
		return true;
	}
	
	
	/* Returns array of items in reverse order from current folder
	*  Used for pretty document tree
	*/
	/*static*/function getParentFolders($folder = null) {
			$folders = array();
			$folder_ptr = 0;
			
			if(!is_null($folder) && $folder) {
				
				
				do {
					$sql = "SELECT doc_id, doc_name,
						description, created, doc_type,
						case_id, folder_ptr
						FROM doc_storage
						WHERE 1 
						AND doc_id = {$folder}
						AND folder = 1
						LIMIT 1";
					$result = mysql_query($sql) or trigger_error($sql);
					if (mysql_num_rows($result) != 0) {
						$row = mysql_fetch_assoc($result);
						$folder_ptr = $folder = $row['folder_ptr'];
						$folders[] = $row;
					}
					
				
				} while ($folder_ptr);
			}
			return $folders;
	
	}
	
	
	
	/*static*/ function getFiles($folder, $doc_type, $id) {
		$file_array = array();
		$doc_type_mappings = array ('U' => 'user_id', // User files
									'F' => '', // Forms
									'C' => 'case_id', // Case files
									'R' => 'report_name' // Reports
									);
		$folder_sql = '';
		if (!is_null($folder) && $folder && is_numeric($folder)) {
			$safe_folder = mysql_real_escape_string($folder);
			$folder_sql = "AND folder_ptr = '{$safe_folder}'";
		} else {
			$folder_sql = "AND (folder_ptr IS NULL OR folder_ptr = '0')";
		}
		if(isset($doc_type_mappings[$doc_type])) {
			$safe_doc_type = mysql_real_escape_string($doc_type);
			$id_lookup = '';
			if(!is_null($id) && $doc_type_mappings[$doc_type]) {
				$safe_id = mysql_real_escape_string($id);
				$id_lookup = "AND {$doc_type_mappings[$doc_type]} = '{$safe_id}'";
			}
			$sql = "SELECT doc_id, doc_name,
					mime_type, doc_type, doc_size, description, created,
					case_id, user_id, folder, folder_ptr
					FROM doc_storage 
					WHERE 1
					AND doc_type = '{$safe_doc_type}'
					{$id_lookup}
					{$folder_sql}
					ORDER BY folder DESC, created ASC
					LIMIT 1000";
			//echo $sql;
			$result = mysql_query($sql) or trigger_error("");
			while ($row = mysql_fetch_assoc($result)) {
				$file_array[] = $row;		
			}
		}
		return $file_array;
	}
	
	
	
	
	/* static */ function getDocumentsByText($text_str)
	{
		$clean_text_str = mysql_real_escape_string($text_str);
		$limit = 30;
		
		
		if (is_numeric($_SESSION['paging'])) 
		{
			$limit = $_SESSION['paging'];
		}
		
		$sql = "SELECT doc_id, doc_name,
				mime_type, doc_type, doc_size, description, doc_storage.created,
				doc_storage.case_id, folder, folder_ptr,
				cases.number
				FROM doc_storage
				LEFT JOIN cases ON cases.case_id = doc_storage.case_id
				WHERE 1
					AND (folder = 0 OR folder IS NULL)
					AND doc_type = 'C'
					AND (doc_name LIKE '%{$clean_text_str}%' 
					OR description LIKE '%{$clean_text_str}%' 
					OR doc_text LIKE '%{$clean_text_str}%')
				LIMIT {$limit}";
		//echo $sql;
		$result = mysql_query($sql) or trigger_error(mysql_error());
		return $result;
	}
	
	/*public*/ function moveFiles($location = null, $files = array()) {
		if (is_array($files)) {
			if (is_null($location) || !$location) {  // Location left blank or 0 (root) location
				foreach ($files as $val) {
					$tmp_doc = new pikaDocument($val['doc_id']);
					$tmp_doc->folder_ptr = 0;
					$tmp_doc->save();
				}
				return true;
			}
			elseif (is_numeric($location)) { // Location needs to be verified as valid
				$tmp_doc = new pikaDocument($location);
				if ($tmp_doc->folder) {
					foreach ($files as $val) {
						$tmp_doc = new pikaDocument($val['doc_id']);
						$tmp_doc->folder_ptr = 0;
						$tmp_doc->save();
					}
					return true;
				}
			}
		}
		return false;
	}
	
	/*public*/ function createFolder($folder_name = null,$parent_folder = null, $doc_type = null, $case_id = null) {
			global $auth_row;
			$this->folder = 1;
			if(is_null($folder_name) || !$folder_name) {
				$this->doc_name = "New Folder";
			}else {
				$this->doc_name = $folder_name;	
			}
			
			$this->folder_ptr = $parent_folder;
			$this->case_id = $case_id;
			$this->user_id = $auth_row['user_id'];
			$this->created = date('Y-m-d');
			if(!is_null($doc_type)) {
				$this->doc_type = $doc_type;
				$this->save();
			}
	}
	
	
	/* Creates gzcompressed document in doc_storage database
	*/
	/*public*/    
    private function insertDoc($content, $name, $type, $size, $description = null, $parent_folder = null, $doc_type = null, $case_id = null)
    {
      global $auth_row;
      $this->doc_data = addslashes(gzcompress($content,9));
      $this->description = $description;
  	  $this->case_id = $case_id;
  	  $this->doc_name = $name;
  	  if ($type != 'text/plain') {
  		$this->mime_type = $type;
  	  }
  	  $this->doc_type = $doc_type;
  	  $this->doc_size = $size;
  	  $this->folder_ptr = $parent_folder;
  	  $this->user_id = $auth_row['user_id'];
  	  $this->created = date('Y-m-d');
    	
  	  /*
  	  $exe_path = $contents_text = '';
  	  if(!isset($_ENV["PATH"]))
  	  {
    	$exe_path = "c:/Pika/Cygwin/";  		
  	  }
  	
  	  $extension = strrchr($this->doc_name, '.');
  	  $safe_full_path = escapeshellarg(($file_array['tmp_name']);
  	  switch ($extension)
  	  {
  		case '.pdf':
     	  exec("{$exe_path}ps2ascii {$safe_full_path}", $string_array);
      	  //exec("{$exe_path}pdftotext {$safe_full_path} -", $string_array);
  		  $contents_text = implode($string_array, "\n");   			
  		  break;
  				
  		case '.txt':
  		  exec("{$exe_path}cat {$safe_full_path}", $string_array);
  		  $contents_text = implode($string_array, "\n");
  		  break;
  	
  		default:
  		  exec("{$exe_path}strings {$safe_full_path}", $string_array);
  		  $contents_text = implode($string_array, "\n");  	
  		  break;
  	  }
  	  $this->doc_text = $contents_text;
  	  */
  	  $this->save();		
	  return true;
    }
	
	function uploadDoc($file_array = null, $description = null, $parent_folder = null, $doc_type = null, $case_id = null)
	{	  	  
      if (isset($file_array['tmp_name']) && isset($file_array['name']) 
    	&& file_exists($file_array['tmp_name']) && (!$parent_folder || $this->isFolder($parent_folder))
    	&& !is_null($doc_type)) 
  	  {    	
    	$content = file_get_contents($file_array['tmp_name']);
    	return $this->insertDoc($content, $file_array['name'], $file_array['type'], $file_array['size'], $description, $parent_folder, $doc_type, $case_id);
      }							
	}
	
    function uploadDocFromContent($file_content, $file_name, $file_type, $file_size, $description = null, $parent_folder = null, $doc_type = null, $case_id = null)
    {
      if (isset($file_content) && isset($file_name) && (!$parent_folder || $this->isFolder($parent_folder)) && !is_null($doc_type))
      {        
        return $this->insertDoc($file_content, $file_name, $file_type, $file_size, $description, $parent_folder, $doc_type, $case_id);
      }
    }
	
	
	function importCaseDoc ($file_name = null, $file_path = null, $description = null, $case_id = null, $user_id = null, $doc_text = null) {
		
		$full_path = $file_path . '/' . $file_name;
		
		if (file_exists($full_path) && $file_name && !is_dir($full_path) && is_numeric($case_id))	{
			
			$content = file_get_contents($full_path);
			$this->doc_data = addslashes(gzcompress($content,9));
			$this->description = $description;
			$this->case_id = $case_id;
			$this->doc_name = $file_name;
			$this->doc_type = 'C';
			$this->doc_size = filesize($full_path);
			$this->user_id = $user_id;
			$last_modified = filemtime($full_path);
			if($last_modified) {
				$this->created = date('Y-m-d', $last_modified);	
			} else {
				$this->created = date('Y-m-d');
			}
			
			
			//$exe_path = $contents_text = '';			
			//if(!isset($_ENV["PATH"])) { $exe_path = "c:/Pika/Cygwin/"; }
			
			$extension = strrchr($file_name, '.');
			$mime_type = '';
			// Determine mime type from list
			switch ($extension)
			{
				case '.pdf':
					$mime_type = 'application/pdf';
				break;		
				case '.rtf':
					$mime_type = 'application/rtf';
				break;
				case '.wpd':
					$mime_type = 'application/wpd';
				break;
				case '.doc':
					$mime_type = 'application/doc';
				break;
				case '.xls':
					$mime_type = 'application/xls';
				break;
				case '.anx':
					$mime_type = 'application/x-hotdocs-auto';
				break;
				case '.gif':
					$mime_type = 'image/gif';
				break;
				case '.jpg':
					$mime_type = 'image/jpg';
				break;
				case '.png':
					$mime_type = 'image/png';
				break;
				case '.tiff':
					$mime_type = 'image/tiff';
				break;
				case '.xfdf':
					$mime_type = 'application/vnd.adobe.xfdf';
				break;
				default:
					$mime_type = 'application/octet-stream'; // assume binary file
				break;
			}
			$this->mime_type = $mime_type;
			
			/*
			if(is_null($doc_text)) {
				$safe_full_path = escapeshellarg($full_path);
				switch ($extension)
				{
					case '.pdf':
						exec("{$exe_path}ps2ascii {$safe_full_path}", $string_array);
						$contents_text = implode($string_array, "\n");
						
						//exec("{$exe_path}pdftotext {$safe_full_path}", $string_array);
						//$contents_text = implode($string_array, "\n"); 
						
					break;		
					case '.txt':
						exec("{$exe_path}cat {$safe_full_path}", $string_array);
						$contents_text = implode($string_array, "\n");
					break;
					default:
						exec("{$exe_path}strings {$safe_full_path}", $string_array);
						$contents_text = implode($string_array, "\n");
					break;
				}
				$this->doc_text = $contents_text;
			} else {$this->doc_text = $doc_text;}
			*/
			$this->save();
			return $this->doc_id;
			
		} else { return false; }
		
	}
	
	
	/*private*/ function isFolder($folder_ptr = null) {
		if (!is_null($folder_ptr) && is_numeric($folder_ptr)) {
			$folder_ptr = mysql_real_escape_string($folder_ptr);
			$sql = "SELECT folder 
					FROM doc_storage 
					WHERE 1 
					AND folder = 1 
					AND doc_id = {$folder_ptr}
					LIMIT 1";
			$result = mysql_query($sql) or trigger_error();
			
			if (mysql_num_rows($result) == 1) { return true;}
			else { return false; }
		}
		else { return false; }
	}
	
	/*static*/ function getFolderList($filter = array()) {
		
		$folder_array = array();
		
		if (isset($filter['doc_type']) && $filter['doc_type']) {
			$safe_doc_type = mysql_real_escape_string($filter['doc_type']);
			$selection_sql = "AND doc_type = '{$safe_doc_type}' ";
		} else {
			return $folder_array;
		}
		if ($filter['doc_type'] == 'C' && isset($filter['case_id']) && is_numeric($filter['case_id'])) {
			$safe_case_id = mysql_real_escape_string($filter['case_id']);
			$selection_sql = "AND case_id = {$safe_case_id} ";
		}
		if ($filter['doc_type'] == 'U') {
			global $auth_row;
			$safe_user_id = mysql_real_escape_string($auth_row['user_id']);
			$selection_sql = "AND user_id = {$safe_user_id}";
		}
		
		$sql = "SELECT doc_id, doc_name,
						description, created,
						case_id, folder_ptr
						FROM doc_storage
						WHERE 1
						{$selection_sql} 
						AND folder = 1";
		//echo $sql;
		$result = mysql_query($sql) or trigger_error('');
		while ($row = mysql_fetch_assoc($result)) {
			$folder_array[] = $row;
		}
		return $folder_array;
	}
	
}

?>
