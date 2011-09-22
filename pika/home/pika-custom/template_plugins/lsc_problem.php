<?php


function lsc_problem($field_name = null, $field_value = null, $menu_array = null, $args = null)
{
	
	
	if(!is_array($field_value)){
		$field_value = array();
	}
	
	// MDF - Assume 2008 defaults
	// Brian mod
    $menu_output = "<label>LSC Problem Code</label><br />\n";
	$menu_name = 'problem_2008';
	
	// AMW - Begin of LSC 2008 CSR section.
	$current_year = date('Y');
	$current_datetime = date('U');
	$cutoff_datetime = '1207022340';
	
	$year_opened = substr(date('Y-m-d'),0,4);
	$year_closed = substr(date('Y-m-d'),0,4);
	if(isset($field_value['open_date']) && $field_value['open_date']) {
		$year_opened = substr($field_value['open_date'], 0, 4);
	}
	if(isset($field_value['close_date']) && $field_value['close_date']) {
		$year_closed = substr($field_value['close_date'], 0, 4);
	}
	
	/*
	The following if clause chooses whether to use the 2007 or the 2008 closing and 	
	problem codes based on the case's open and closed dates.  TODO:  After March 2009
	 it should revert back to the regular old closing and problem code menus.  The
	2008 menu tables can be discarded and the 2007 menu tables can be kept around
	for historical reporting purposes if desired.
	
	Cases that are closed in 2007 or earlier will use the 2007 codes.  Cases that are
	closed in 2008 or later will use the 2008 codes.
	Cases that haven't been closed are more complicated.  If they were opened in 2008 or
	later, they will use 2008 codes.  If not, they will use 2007 codes until March 31st,
	after which they will change to the 2008 codes.
	*/
	
	
	if (isset($field_value['act_date'])) { // Activity mode
		$year_opened = substr($field_value['act_date'], 0, 4);
		if ($year_opened < 2008) {
			// Use 2007 codes.
			$menu_output = "LSC Problem Code (2007 codes):<br />\n";
			$menu_name = 'problem_2007';
		}
	}
	else if (($year_opened < 2008 && $year_closed < 2008) ||
		(strlen($field_value['close_date']) == 0 && $year_opened < 2008 && $current_datetime < $cutoff_datetime))
	{
		// Use 2007 codes.
		$menu_output = "LSC Problem Code (2007 codes):<br />\n";
		$menu_name = 'problem_2007';	
	}

	$menu_array = pikaTempLib::getMenu($menu_name);

	// AMW - End of LSC 2008 CSR.
	$problem = '';
	if(isset($field_value['problem'])) {
		$problem = $field_value['problem'];
	}
	
	$menu_output .= pikaTempLib::plugin('menu','problem',$problem,$menu_array,$args);
	
	return $menu_output;
}

?>