<?php

require_once ('pika_cms.php');
// VARIABLES
$pk = new pikaCms;
//$action = pl_grab_var('action', null, 'REQUEST');
//$screen = pl_grab_var('screen', 'info', 'REQUEST');
//$case_id = pl_grab_var('case_id', null, 'REQUEST');
//$relation_code = pl_grab_var('relation_code', null, 'REQUEST');
//$base_url = pl_settings_get('base_url');

$a = pl_grab_vars('activities');
$act_id = $pk->newActivity($a);

//echo $act_id.'<br/>';
//print_r($a);

//Get the callback
$callback = $_REQUEST['callback'];

echo $callback."(".json_encode(array('text'=>'a')).")";

?>