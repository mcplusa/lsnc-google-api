<?php
session_start();

/*
 * Token Based Authorization - Optional
 * For clients w/o HTTP authorization built-in
 * i.e. http://[Your PIKA URL]/pika/services/google-docs-queue.php?token=YToyOntpOjA7czoxNDoiTWljaGFlbC5DaXptYXIiO2k6MTtzOjg6InBhc3N3b3JkIjt9
 */ 

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

require_once('pikaGoogleSync.php');
require_once('Zend/Loader.php');
Zend_Loader::loadClass('Zend_Debug');

$obj = new pikaGoogleSync();
$obj->connect();
$queue=$obj->getDocsQueue();

if (!empty($queue)) {
	foreach($queue as $fileinfo) {			
		if ($fileinfo['del'] != '1') {	
			$fileinfo=$obj->uploadDoc($fileinfo);				
		} else {
			$document=$obj->deleteDoc($fileinfo);
		}	
		
		$fileinfo['synced']=1;	
		$obj->updateDocsQueue($fileinfo);	
	}
	echo "Queue Processed";
} else {
	echo "Nothing to process. Queue empty.";
}

?>