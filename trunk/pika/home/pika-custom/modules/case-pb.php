<?php
	// PRO BONO TAB

	$plMenus['pba_id'] = $pk->fetchPbAttorneyArray();
	$base_url = pl_settings_get('base_url');
	
	$C .= pika_case_heading('Pro Bono Information');
	
	$tpl = $case_row;
	$tpl['referral_date'] = pl_date_unmogrify($case_row["referral_date"]);
	$tpl['date_sent'] = pl_date_unmogrify($case_row["date_sent"]);
	
    // Brian's hack to remove embedded styles and add ID attribute
    // $C .= '<table cellpadding=4><tr valign=top><td>';
//	$C .= '<table id="pro-bono-wrapper"><tr><td>';
	
	$C .= pl_template($tpl, 'subtemplates/pro_bono_tab.html');
	
//	$C .= "</td><td>";
	
    // Brian mod
    $C .= "<table id=\"assigned\"><tr><th class=\"first\">&nbsp;</th><th>Assigned Pro Bono Attorney</th><th class=\"last\">Time</th></tr><tr>\n";
	
	$C .= "<td>#1:</td>";
	
	if (isset($case_row["pba_id1"])
		&& isset($plMenus['pba_id'][$case_row["pba_id1"]])
		&& $plMenus['pba_id'][$case_row["pba_id1"]])
	{
		$C .= "<td>{$plMenus['pba_id'][$case_row["pba_id1"]]} ";
		$C .= " [<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id1'>Change</a>]</td>";
	}
	
	else
	{
		$C .= "<td>[<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id1'>Assign a Volunteer Attorney</a>]</td>";
	}
	
	if (isset($case_row["pba_id1"])
		&& isset($plMenus['pba_id'][$case_row["pba_id1"]])
		&& $plMenus['pba_id'][$case_row["pba_id1"]])
	{
		$C .= "<td>[<a href='{$base_url}/activity.php?screen=compose&case_id=$case_id&pba_id={$case_row['pba_id1']}&act_type=T&category=CS&funding={$case_row['funding']}&funding1={$case_row['funding1']}&funding2={$case_row['funding2']}&funding3={$case_row['funding3']}'>Add Time Slip</a>]</td>";
	}
	
	else
	{
		$C .= "<td>&nbsp;</td>";
	}
	
	$C .= "</tr><tr>\n";
	
	$C .= "<td>#2:</td>";
	
	if (isset($case_row["pba_id2"])
		&& isset($plMenus['pba_id'][$case_row["pba_id2"]])
		&& $plMenus['pba_id'][$case_row["pba_id2"]])
	{
		$C .= "<td>{$plMenus['pba_id'][$case_row["pba_id2"]]} ";
		$C .= " [<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id2'>Change</a>]</td>";
	}
	
	else
	{
		$C .= "<td>[<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id2'>Assign a Volunteer Attorney</a>]</td>";
	}
	
	if (isset($case_row["pba_id2"])
		&& isset($plMenus['pba_id'][$case_row["pba_id2"]])
		&& $plMenus['pba_id'][$case_row["pba_id2"]])
	{
		$C .= "<td>[<a href='{$base_url}/activity.php?screen=compose&case_id=$case_id&pba_id={$case_row['pba_id2']}&act_type=T&category=CS&funding={$case_row['funding']}&funding1={$case_row['funding1']}&funding2={$case_row['funding2']}&funding3={$case_row['funding3']}'>Add Time Slip</a>]</td>";
	}
	
	else
	{
		$C .= "<td>&nbsp;</td>";
	}
	
	$C .= "</tr><tr>\n";
	
	$C .= "<td>#3:</td>"; 
	
	if (isset($case_row["pba_id3"])
		&& isset($plMenus['pba_id'][$case_row["pba_id3"]])
		&& $plMenus['pba_id'][$case_row["pba_id3"]])
	{
		$C .= "<td>{$plMenus['pba_id'][$case_row["pba_id3"]]} ";
		$C .= " [<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id3'>Change</a>]</td>";
	}
	
	else
	{
		$C .= "<td>[<a href='{$base_url}/pb_attorneys.php?screen=find_pb&case_id=$case_id&field=pba_id3'>Assign a Volunteer Attorney</a>]</td>";
	}
	
	if (isset($case_row["pba_id3"])
		&& isset($plMenus['pba_id'][$case_row["pba_id3"]])
		&& $plMenus['pba_id'][$case_row["pba_id3"]])
	{
		$C .= "<td>[<a href='{$base_url}/activity.php?screen=compose&case_id=$case_id&pba_id={$case_row['pba_id3']}&act_type=T&category=CS&funding={$case_row['funding']}&funding1={$case_row['funding1']}&funding2={$case_row['funding2']}&funding3={$case_row['funding3']}'>Add Time Slip</a>]</td>";
	}
	
	else
	{
		$C .= "<td>&nbsp;</td>";
	}
	
	$C .= "</tr></table>\n";
	
	
	$C .= "</td></tr><tr><td>";
	
//	$C .= '<p>' . pl_submit('submit', "Save", 1);
	
	$C .= "</td></tr></table>";
	
?>	
