<?php

include 'services/google-clearsession.php';

session_start();
/**********************************/
/* Pika CMS (C) 2002 Aaron Worley */
/* http://pikasoftware.net        */
/**********************************/

$settings_path = getcwd() . "-custom/config/settings.php";
require_once($settings_path);


if (!isset($_GET['login']) 
	&& !isset($_SERVER['PHP_AUTH_USER'])
	&& !isset($_COOKIE[$plSettings['cookie_prefix'] . 'KeyCookie'])){
	
	require_once('app/lib/pl.php');
	define('PL_TEMPLATE_PREFIX', '%%[');
	define('PL_TEMPLATE_SUFFIX', ']%%');
	
	
	$plTemplate["timestamp"] = date('g:i A * M j, Y');
	$plTemplate["org_name"] = $plSettings['owner_name'];
	$plTemplate["admin_email"] = $plSettings['admin_email'];
	$plTemplate['post_title'] = ' [Pika CMS]';

	echo pl_template('templates/login-http.html', $plTemplate);
	exit();
}

require_once('pika-danio.php');
pika_init();

require_once('pikaMisc.php');

$main_html = array();  // Values for the main HTML template.
$home_page = array();
$messages_text = '';

$result = pikaMisc::getMotdEntries();
if (mysql_num_rows($result) < 1) 
{
	// Brian mod
    $messages_text .= "<p>Welcome to the Pika Case Management System!</p>\n";
}

else 
{
	while ($row = mysql_fetch_assoc($result))
	{
		$row['staff_name'] = pl_text_name($row);
		$row['content'] = pl_html_text($row['content']);
		$messages_text .= pl_template('subtemplates/home.html', $row, 'motd');
	}
}

$home_page['motd'] = $messages_text;
$home_page['user_id'] = $auth_row['user_id'];

$main_html['page_title'] = "Pika Home Page";
$main_html['content'] = pl_template('subtemplates/home.html', $home_page);
$main_html['nav'] = "Pika Home";

$buffer = pl_template($main_html, 'templates/default.html');
pika_exit($buffer);

?>
