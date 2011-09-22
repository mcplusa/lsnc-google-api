<?php


function file_list_edit($field_name = null, $field_value = null, $menu_array = null, $args = null)
{
	$file_list_output = '';
	$files_html = $folders_html = $folders_close_html = '';
	$base_url = pl_settings_get('base_url');
	$doc_type_menu = pikaTempLib::getMenu('doc_type');
	$doc_type_description = pl_array_lookup($field_name,$doc_type_menu);
	
	$case_id = '';
	
	if (!is_array($menu_array)){
		$menu_array = array('folders' => array(),'files' => array() );
	} elseif (!isset($menu_array['folders'])) {
		$menu_array['folders'] = array();
	} elseif (!isset($menu_array['files'])) {
		$menu_array['files'] = array();
	}
	
	
	// Begin building file list
	$files_html .= "<ul class=\"pika_files\">";
	foreach ($menu_array['files'] as $file) {
		
		if($file['folder']) {
			$files_html .= "<li class=directory>
			<a href='{$base_url}/documents.php?display_type=edit&doc_type={$file['doc_type']}&folder_ptr={$file['doc_id']}&case_id={$file['case_id']}' onClick='setParentFolder({$file['doc_id']})'>{$file['doc_name']}</a>
			<span><a href='{$base_url}/documents.php?action=edit_folder&doc_id={$file['doc_id']}&folder_ptr={$file['folder_ptr']}'>Edit</a></span> 
			<span><a href='{$base_url}/documents.php?action=confirm_delete_folder&doc_id={$file['doc_id']}&folder_ptr={$file['folder_ptr']}'>Delete</a></span>
			</li>";
		} else {
			require_once('pikaUser.php');
			$user = new pikaUser($file['user_id']);
			$fullname = pl_text_name($user->getValues());
			$description = "Description: " . $file['description'];
			$file_size = number_format(($file['doc_size']/1024),1,'.',',') . "KB";
			$files_html .= "<li class=file>
			<a href='{$base_url}/documents.php?action=download_file&doc_id={$file['doc_id']}' target='_parent'>{$file['doc_name']}</a>
			<img name=\"{$file['doc_id']}_pointer\" 
				title=\"More Info\" src='images/pointer.gif' onClick='setDescription({$file['doc_id']})'>
					<ul class=\"pika_files\">
						<li class='description'>
							<div id='{$file['doc_id']}_description' name='{$file['doc_id']}_description' style='display: none'>
							<span><a href='{$base_url}/documents.php?action=edit_file&display_type=edit&doc_id={$file['doc_id']}'>Edit</a></span>
							<span><a href='{$base_url}/documents.php?action=confirm_delete_file&display_type=edit&doc_id={$file['doc_id']}'>Delete</a></span>
							<br/>
							Description: {$file['description']}<br/>
							Created by: {$fullname}({$file_size})</div>
						</li>
					</ul>
				</li>";
		}
	}
	$files_html .= "</ul>";
	
	// Begin building folder list
	foreach ($menu_array['folders'] as $folder) {
		$current_class_icon = "directory";
		if($field_value == $folder['doc_id']) {$current_class_icon = "directory_open";}
		$folders_html = 	"<ul class='pika_files'>
								<li class='$current_class_icon'>
								<a href='{$base_url}/documents.php?display_type=edit&doc_type={$folder['doc_type']}&folder_ptr={$folder['doc_id']}&case_id={$folder['case_id']}' onClick='setParentFolder({$folder['doc_id']})'>{$folder['doc_name']}</a>
								<span><a href='{$base_url}/documents.php?action=edit_folder&display_type=edit&doc_id={$folder['doc_id']}&folder_ptr={$folder['folder_ptr']}'>Edit</a></span> 
								<span><a href='{$base_url}/documents.php?action=confirm_delete_folder&display_type=edit&doc_id={$folder['doc_id']}&folder_ptr={$folder['folder_ptr']}'>Delete</a></span>" . $folders_html;
		
		$folders_close_html = "</li></ul>" . $folders_close_html;
		
	}
	
	// Root file folder
	if(!is_numeric($case_id)) {
		$case_id = pl_grab_get('case_id');
	}
	$current_class_icon = "directory";
	if(!$field_value) {$current_class_icon = "directory_open";}
	$file_list_output .= "<ul class=\"pika_files\">
							<li>
							<a href='{$base_url}/documents.php?display_type=edit&doc_type={$field_name}&case_id={$case_id}' onclick='setParentFolder(0);'>{$doc_type_description}</a>";
	$file_list_output .= $folders_html . $files_html . $folders_close_html;
	$file_list_output .= "</li></ul>";
	

	
	return $file_list_output;
}

?>