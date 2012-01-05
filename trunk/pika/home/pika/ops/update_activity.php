<?php

/**********************************/
/* Pika CMS (C) 2002 Aaron Worley */
/* http://pikasoftware.net        */
/**********************************/

chdir('../');

require_once ('pika-danio.php');
pika_init();

require_once('pikaActivity.php');
require_once('pikaGoogleSync.php');

// VARIABLES
$base_url = pl_settings_get('base_url');
$act_id = pl_grab_post('act_id');
$act_date = pl_grab_post('act_date', date('Y-m-d'));
$act_url = pl_grab_post('act_url');
$act_type = pl_grab_post('act_type', 'C');
$funding = pl_grab_post('funding');
$case_id = pl_grab_post('case_id');

$next_act = pl_grab_post('next_act',null);
$close_act = pl_grab_post('close_act',null);
$cancel = pl_grab_post('cancel',null);

$input = pl_clean_form_input($_POST);


// BEGIN MAIN CODE...
$google_sync = new pikaGoogleSync();
$success_status = false;

// Create array of events
$events = array();
$processed_events = array();

// GET ORGANIZER EMAIL
$organizer=$google_sync->getEmail($auth_row['user_id']);

// GET ACTIVITY GROUP
$act_group=null;
$update = false;

$input['user_ids']=array();
//$input['user_ids'][]=100502;

$ids = $google_sync->getCaseUsersIDs($case_id);
foreach ($ids as $user_id)
  $input['user_ids'][]=$user_id;

foreach ($input['user_ids'] as $user_id) {  			
  $input['user_id'] = $user_id;	
	if ($act_group==null) {
		// Find Associated Activity Group guid
		if (is_numeric($input['act_id'])) {
			//Update Activity
			$update = true;
			$guid=$google_sync->getActivityGroup($input);
			if ($guid !== "") {
				$act_group=$guid;
			}
		} else {
			//Add Activity
			$act_group=$google_sync->generateGuid();
		}		
	}			
	$input['email'] = $google_sync->getEmail($user_id);
	$input['act_group'] = $act_group;	
	$input['synced']="0";
	$input['organizer']=$organizer;	
	$events[] = $input;
}

  $case = $google_sync->getCase($case_id);
  $office_activity = $events[0];
  $office_activity['user_id'] = null;
  $office_activity['email'] = $google_sync->getOfficeMail($case[7]);
  if(eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $office_activity['email']))
    $events[] = $office_activity; 
  
// Find missing act_ids for non-primary user activities
foreach ($events as $event) {		
	if ($update) {
		// Replace act_ids with ones from Google Sync Queue
		$event['act_id']=$google_sync->getActivityId($event);	
	}	
  $processed_events[] = $event;
}

$events = $processed_events;

foreach ($events as $a) {	
	unset($event['user_ids']);	
	
	if(!(is_null($a['user_id']) || $google_sync->user_exist($a['user_id']))) continue;
	 	 	
	// The user is saving the activity record.
	if(is_numeric($a['act_id'])) {
	
		$activity = new pikaActivity($a['act_id']);
		/*	
		 * DISABLE FOR GOOGLE SYNC FUNCTIONALITY
		 * $act_row = $activity->getValues();
			if (pika_authorize('edit_act', $act_row)) 
			{	
			
			}	
		*/				
    $activity->setValues($a);
    //echo 'Update activity'.PHP_EOL;    
		$activity->save();	

		// set Google Queue to resync activity				
		try {
			$success_status = $google_sync->updateQueue($a);	
			Zend_Debug::dump($success_status);	
		} catch (Exception $e) {
			var_dump($e);
			die('error adding to Google Queue');
		}		
	} else {		
    //echo 'New activity'.PHP_EOL;
		$activity = new pikaActivity();
		unset($a['act_id']);
		$a['last_changed']=date("Y-m-d H:i:s"); // temp fix Richard.Loerzel@gmail.com since it was defaulting to 'CURRENT_DATETIME'
		$activity->setValues($a);    
		$activity->save();
		
		// set Google Queue to sync activity
		$args=$activity->getValues();
		$a['act_id']=$args['act_id'];	
    //echo 'Insert to queue'.PHP_EOL;    
		try {
			$success_status = $google_sync->addActivityToQueue($a);		
		} catch (Exception $e) {
			var_dump($e);
			die('error adding to Google Queue');
		}				
	}	

}

if (!is_null($next_act)) {
	header("Location: {$base_url}/activity.php?act_type={$act_type}&act_date={$act_date}&case_id={$case_id}&funding={$funding}&act_url={$act_url}");
} else if (!is_null($close_act)){
	if (is_numeric($case_id)) {
		header("Location: {$base_url}/case.php?act_date={$act_date}&case_id={$case_id}");

	} else {
		if($act_url == 'case.php') { $act_url = 'cal_day.php';}
		header("Location: {$base_url}/{$act_url}?cal_date={$act_date}");
	}
} else if (!is_null($cancel)) {
	header("Location: {$base_url}/{$act_url}?act_date={$act_date}&case_id={$case_id}");
} else {
	header("Location: {$base_url}/cal_day.php?act_date={$act_date}");
}

exit();

?>
