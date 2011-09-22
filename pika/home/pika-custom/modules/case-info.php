<?php


// get the staff array
$staff_array = $plMenus['user_id']; // $pk->fetchStaffArray();

// populate the "primary client" menu
reset($clients);
foreach ($clients as $key => $row);
{
	$client_array[$row['contact_id']] = pikaTempLib::plugin('text_name','',$row);
}

//echo $case_row['county'];
//echo $case_row['case_county'];
//echo $case_row['age'];
//echo $case_row['client_age'];
//echo $case_row['birth_date'];
//$birthday = $case_row['birth_date'];
$birthday = $case_row['birth_date'];

if ($case_row['case_county'] == null)
{
	$a['case_county'] = $case_row['county'];

}

if ($case_row['r_zip'] ==1)

	$a['rural'] = $case_row['r_zip'];

else

$a['rural'] = "";


if ($case_row['client_age'] <= "0")

{

$a['client_age'] = floor((time() - strtotime($birthday))/(60*60*24*365.2425));

}




$a['client_menu'] = pl_array_menu($primary_client, 'client_id', $case_row["client_id"], 1);
$a['screener_name'] = pl_array_lookup($case_row['intake_user_id'], $staff_array);

$a['lsc_problem_menu'] = pikaTempLib::plugin('lsc_problem','problem',$case_row,null,array('onchange=problem_code_lookup(this.value)'));
$a['lsc_close_code_menu'] = pikaTempLib::plugin('lsc_close_code','close_code',$case_row);


$a = array_merge($case_row, $a);

$a['close_date'] = pl_date_unmogrify($a['close_date']);
$a['open_date'] = pl_date_unmogrify($a['open_date']);
$a['current_date'] = date('m/d/Y');

$a['created'] = date("m/d/Y", pl_mysql_timestamp_to_unix($a['created']));
$a['last_changed'] = date("m/d/Y", pl_mysql_timestamp_to_unix($a['last_changed']));

$case_info_template = new pikaTempLib('subtemplates/case-info.html',$a);
$case_info_template->addMenu('client_menu',$client_array);
$case_info_template->addMenu('case_handlers',$staff_array);
$C .= $case_info_template->draw();

?>
