<?php

require_once('pika-danio.php');
pika_init();

require_once('pikaMisc.php');

// Inititalize $filter array
if(isset($_GET['mode']) && $_GET['mode']=='all'){
	$filter['show_cases'] =  2;
	$filter['show_mediation'] = 0;	
}
else {
	$filter['show_cases'] =  0;
	$filter['show_mediation'] = 0;
	$filter['user_id'] = $auth_row['user_id'];
}			

if(isset($_GET['search'])){
	$filter['number'] = $_GET['search'];
}

$mode = 'open';		
$order_field = pl_grab_get('order_field', 'open_date');
$first_row = pl_grab_get('first_row', '0', 'number');
$offset = pl_grab_get('offset', '0', 'number');
$row_count = null;
$page_size = 100;

//Get Cases
$result = pikaMisc::getCases($filter, $row_count, $order_field, $order, $offset, $page_size);
$cases = array();							
	
//Iterate over cases and create json
while ($row = mysql_fetch_assoc($result))
{		
	$case = array();
			
	if (strlen($row['number']) < 1)
	{
		$case['number'] = "No Case #";
	}
	else 
	{
		$case['number'] = $row['number'];
	}
	$case['client_name'] = pl_text_last_name($row, 'contacts.');
	$case['case_id'] = $row['case_id'];
					
	$cases[]=$case;
}				    
    
//Get the callback
$callback = $_REQUEST['callback'];

echo $callback."(".json_encode(array('cases'=>$cases)).")";
//echo json_encode(array('cases'=>$cases));