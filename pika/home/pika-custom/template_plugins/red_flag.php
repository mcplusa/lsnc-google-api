<?php

function red_flag($field_name = null, $field_value = null, $menu_array = null, $args = null)
{
	$flag_output = '';
	if(!is_null($field_value) && !is_array($field_value) && $field_value) {
	
		$field_value = str_replace(' ', '&nbsp;', $field_value);
		
		// Brian mod
        $flag_output .= ' <span><img width=16 height=16 src="images/redflag.gif" alt="red_flag">';
		$flag_output .= "{$field_value}</span>";
		
		
	}
	
	return $flag_output;
}

?>