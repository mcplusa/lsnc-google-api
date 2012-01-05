<?php
session_start();
        
// Token Based Authorization - Optional
// For clients w/o HTTP authorization built-in
// i.e. http://pika.local/pika/services/google-queue.php?token=YToyOntpOjA7czoxNDoiTWljaGFlbC5DaXptYXIiO2k6MTtzOjg6InBhc3N3b3JkIjt9

$auth = '';
$auth_array = array();

if(isset($_GET['token']) && $_GET['token']) {
	$auth = base64_decode($_GET['token']);
	$auth_array = unserialize($auth);
	
	$_SERVER['PHP_AUTH_USER'] = $auth_array[0];
	$_SERVER['PHP_AUTH_PW'] = $auth_array[1];
}

chdir('../');
require_once ('pika-danio.php');
pika_init();
require_once('pikaGoogleSynccron.php');
require_once('Zend/Loader.php');
Zend_Loader::loadClass('Zend_Debug');

$obj = new pikaGoogleSync();
$obj->connect();

 echo "ACTIVITY TICKLER QUEUE\n";
$activity_queue = $obj->getActivityQueue();

if (!empty($activity_queue)) {
	foreach($activity_queue as $event) {
    echo PHP_EOL.'Activity'.PHP_EOL;
    print_r($event);
    echo PHP_EOL;
	  if(!$obj->is_date($event['act_date']))
	  {
      //Invalid date event, mark as synced so it don't try to sync any more      
	    $event['synced']=1;	//echo PHP_EOL.'<br>invalid date:'.$event['act_date'].'<br>'.PHP_EOL;	   
	  }
    else
    {    
      $entryResult = null;			
      if ($event['del']=="1") {
        echo "DELETE".PHP_EOL;
        $result=$obj->deleteEvent($event);
      } else if ($event['uri']!="") {
        echo "EDIT".PHP_EOL;
        $entryResult=$obj->updateEvent($event);
      } else {
        echo "INSERT".PHP_EOL;
        $entryResult=$obj->createEvent($event);
      }
      $event['link'] = $entryResult->link[0]->href;
      $event['uri'] = $entryResult->id;
    }		
		
    $event['synced']=1;			
		$obj->updateQueue($event);
		echo "Activity Queue Processed\n\n";
	}	
} else {
	echo "Activity queue empty. Nothing to process.\n\n";
}

echo "\n\nDOCUMENT QUEUE\n";
$docs_queue=$obj->getDocsQueue();


if (!empty($docs_queue)) {
	foreach($docs_queue as $fileinfo) {	  	  		
		if ($fileinfo['del'] != '1') {	
			$fileinfo=$obj->uploadDoc($fileinfo);				
		} else {			
			$fileinfo=$obj->deleteDoc($fileinfo);
		}	
		
		if ($fileinfo) {
			$fileinfo['synced']=1;	
			$obj->updateDocsQueue($fileinfo);	
		}			
	}
	echo "Docs queue processed.\n";
} else {
	echo "Docs queue empty. Nothing to process.\n";
}
?>