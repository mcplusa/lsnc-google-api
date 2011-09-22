<?php

/**********************************/
/* Pika CMS (C) 2002 Aaron Worley */
/* http://pikasoftware.com        */
/**********************************/

/* pika_cms.php contains the pikaCms object, which encapsulates all data manipulation
and retrieval logic for Pika CMS.  This file also contains utility functions used
throughout the application.
*/

/* Disable both cookie and transparent SID storage.  The session data is stored in
the users database table instead.
*/
ini_set('session.use_cookies', '0');
if(!isset($_SESSION)){
  ini_set('session.use_trans_sid', '0');
}

$include_str = './app/extralib:' . ini_get('include_path');

if (preg_match("/Win\d\d/",$_SERVER['SERVER_SOFTWARE']))
{
	/* 
	 * WINDOWS DETECTED
	 * 
	 * Richard.Loerzel@google.com 02/24/2011
	 * preg_match added to allow for both Win32 and Win64
	 */ 
	$include_str = str_replace(':', ';', $include_str);
}

ini_set('include_path', $include_str);

// CACHING
// Unless otherwise specified, allows direct the client to never cache the page
// TODO - change this to a define()'d
if (isset($pikaAllowCaching) && $pikaAllowCaching)
{
	// AMW 2004-01-02
	session_cache_limiter('private_no_expire');
	// 	header ("Expires: Wed, 17 Apr 2003 05:00:00 GMT");
}

else
{
	// See PHP manual entry for header() for explanation
	header ("Expires: Mon, 26 Jul 1997 05:00:00 GMT");    // Date in the past
	header ("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	// always modified
	header ("Cache-Control: no-cache, must-revalidate");  // HTTP/1.1
	header ("Pragma: no-cache");                          // HTTP/1.0
}

// LIBRARIES
require_once('app/lib/pl.php');
require_once('pika-danio.php');

// Pika Lib legacy code for backwards compatibility
require_once('lib/pl-legacy.php');

// CLASSES
require_once('lib/plTable.php');

// CMS CLASSES
require_once('lib/pikaCms.php');

// GLOBAL
global $plSettings;

// GZIP compression
if ($plSettings['enable_compression'] && !defined('PIKA_NO_COMPRESSION'))
{
	ob_start("ob_gzhandler");
}


// BENCHMARKING
pl_bench('start');

/* Override the default PHP session handler.
*/
session_set_save_handler("pl_session_open", "pl_session_close", "pl_session_read", "pl_session_write",
"pl_session_destroy", "pl_session_gc");


// CONSTANTS
if(!defined('PIKA_VERSION'))   {  define('PIKA_VERSION', '4');       }
if(!defined('PIKA_REVISION'))  {  define('PIKA_REVISION', '00');     }
if(!defined('PIKA_CODE_NAME')) {  define('PIKA_CODE_NAME', 'danio'); }
define ('PIKA_VENDOR_EMAIL', 'admin@somewhere.com');
define('PL_TEMPLATE_PREFIX', '%%[');
define('PL_TEMPLATE_SUFFIX', ']%%');
//define('PL_TEMPLATE_HTML_COMMENTS', true);

// relation_codes from the conflict table
define ("CLIENT", "1");
define ("ADVERSE", "2");
define ("OPPOSING", "2");
define ("OPP_COUNSEL", "3");


pl_mysql_init();

// AUTHENTICATION
if (defined('PL_DISABLE_SECURITY'))
{
	/* This is invoked when first accessing index.php.  Also for ~/setup files, since there will be no user
	accounts present on a new system.
	*/
	$auth_row = array('username' => 'security_disabled', 'user_id' => 0);
	return $auth_row;
}

else
{
	// NEW AUTHENTICATION
	$auth_row = pl_auth_http_login();
	// Thaw out the user's old session.
	//pl_session_thaw($auth_row['session_data']);
	//$_SESSION['plauth'] = $auth_row;
}


if(!isset($_SESSION)){
  session_start();
}
// GLOBAL VARIABLES
$pikaNavRootLabel = 'Pika Home';
// temporary
$plIntakeType = 'fast';


// SESSION VARIABLES
//session_start();
if (!isset($_SESSION['theme']))
{
	$_SESSION['theme'] = 'Blue';
}

if (!isset($_SESSION['paging']))
{
	$_SESSION['paging'] = 30;
}

if (!isset($_SESSION['intake']))
{
	$_SESSION['intake'] = 'T';
}

if (!isset($_SESSION['popup']))
{
	$_SESSION['popup'] = false;
}

if (!isset($_SESSION['def_office']))
{
	$_SESSION['def_office'] = 'X';
}

if (!isset($_SESSION['font_size']))
{
	$_SESSION['font_size'] = 'Medium';
}

if (!isset($_SESSION['r_format']))
{
	$_SESSION['r_format'] = 'html';
}

if (!isset($_SESSION['def_group']))
{
	$_SESSION['def_group'] = 'default';
}

// This caused problems.
if (isset($_SESSION['office']))
{
	$_SESSION['office'] = '';
}

if (!$_SESSION['theme'])
{
	$_SESSION['theme'] = 'Blue';
}

if (!$_SESSION['paging'])
{
	$_SESSION['paging'] = 30;
}

if (!$_SESSION['intake'])
{
	$_SESSION['intake'] = 'T';
}

if (!$_SESSION['popup'])
{
	$_SESSION['popup'] = false;
}

if (!$_SESSION['def_office'])
{
	$_SESSION['def_office'] = 'X';
}

if (!$_SESSION['font_size'])
{
	$_SESSION['font_size'] = 'Medium';
}

if (!$_SESSION['r_format'])
{
	$_SESSION['r_format'] = 'html';
}

if (!$_SESSION['def_group'])
{
	$_SESSION['def_group'] = 'default';
}

// These global variables are still in use.
$pikaTheme = $_SESSION['theme'];
$pikaDefPaging = $_SESSION['paging'];
$pikaDefIntake = $_SESSION['intake'];
$pikaPopupGroupie = $_SESSION['popup'];
$plUserId = $auth_row['user_id'];
$pikaDefOffice = $_SESSION['def_office'];
$pikaDefGroup = $_SESSION['def_group'];


// FONT SIZE
/* H4 for backward compat. */
$pikaFontSizes = array();
$pikaFontSizes['Small'] = "BODY, TR { font-size: 12px; }\nINPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 11px; }\n
TT { font-size: 14px; }\n.mycal, .othercal { font-size: 10px; }\n
H1 { font-size: 14px; }\nH2, H4 { font-size: 13px;	}\n.small { font-size: 10px; }";
$pikaFontSizes['Medium'] = '';
$pikaFontSizes['Large'] = "BODY, TR { font-size: 14px; }\nINPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 13px; }\n
TT { font-size: 16px; }\n.mycal, .othercal { font-size: 12px; }\n
H1 { font-size: 16px; }\nH2, H4 { font-size: 15px;	}\n.small { font-size: 12px; }";
$pikaFontSizes['Super Size'] = "BODY, TR { font-size: 15px; }\nINPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 14px; }\n
TT { font-size: 17px; }\n.mycal, .othercal { font-size: 13px; }\n
H1 { font-size: 17px; }\nH2, H4 { font-size: 16px;	}\n.small { font-size: 13px; }";



// FONT SIZE
/* H4 for backward compat. */
$pikaFontSizes = array();
$pikaFontSizes['Small'] = "
BODY { font-size: 13px; }\n
TR { font-size: 12px; }\n
INPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 11px; }\n
TT { font-size: 14px; }\n
.mycal, .othercal { font-size: 10px; }\n
H1 { font-size: 18px; }\n
H1.crumbtrail { font-size: 13px; }\n
H2, H4 { font-size: 15px;	}\n
.small { font-size: 10px; }\n
.nav, .nav a { font-size: 11px; }
";
$pikaFontSizes['Medium'] = '';
/* BODY 15px
// H1 20px;
// h1.crumbtrail 14px;
// H2 17px
// TR 13px
// TH 12px
// TT ?
// .small ?
// ,mycal, .othercal ?
*/
$pikaFontSizes['Large'] = "
BODY { font-size: 16px; }\n
TR { font-size: 14px; }\n
INPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 13px; }\n
TT { font-size: 16px; }\n
.mycal, .othercal { font-size: 12px; }\n
H1 { font-size: 21px; }\n
H1.crumbtrail { font-size: 15px; }\n
H2, H4 { font-size: 18px;	}\n
.small { font-size: 12px; }\n
.nav, .nav a { font-size: 13px; }
";
$pikaFontSizes['Super Size'] = "
BODY { font-size: 18px; }\n
TR { font-size: 16px; }\n
INPUT, SELECT, TEXTAREA, TH, .row1, .row2 { font-size: 15px; }\n
TT { font-size: 17px; }\n
.mycal, .othercal { font-size: 13px; }\n
H1 { font-size: 22px; }\n
H1.crumbtrail { font-size: 46px; }\n
H2, H4 { font-size: 19px;	}\n
.small { font-size: 13px; }\n
.nav, .nav a { font-size: 14px; }
";

// THEMES
/* The theme file will declare a string variable $pikaTheme, which contains whatever CSS code needed
to implement the theme.
*/
include("themes/{$_SESSION['theme']}.php");

// Include theme, font size CSS code in the HTML header
$plTemplate['header'] = "-->\n<style type='text/css'><!--\n{$pikaTheme}\n{$pikaFontSizes[$_SESSION['font_size']]}\n--></style>\n<!--";

// more TEMPLATE VALUES
$plTemplate["timestamp"] = date('g:i A * M j, Y');
$plTemplate["org_name"] = pl_settings_get('owner_name');
$plTemplate["admin_email"] = pl_settings_get('admin_email');
$plTemplate["vendor_email"] = PIKA_VENDOR_EMAIL;
$plTemplate['post_title'] = ' [Pika CMS]';
$plTemplate["user_handle"] = $auth_row['username'];


// CMS FUNCTIONS


function gila_login_redirect()
{
	$base_url = pl_settings_get('base_url');
	
	//session_start();
	$_SESSION['pika_destination'] = $_SERVER['REQUEST_URI'];
	
	//setcookie('pika_destination', $_SERVER['REQUEST_URI'], null, '/');
	header("Location: {$base_url}/login/");
	return true;
	
	echo "<form method=\"post\" action=\"" . $_SERVER['PHP_SELF'] . "\">";
	echo "<input type=\"text\" name=\"username\">";
	echo "<input type=\"password\" name=\"password\">";
	echo "<input type=\"submit\">";
	echo "</form>";
	echo "You are not logged in.<br>\n";
}


/*	Takes a string, such as "Mary Jo", and returns simply "Mary", used for metaphone
*/
function _pika_first_name_only($str)
{
	$pos = strpos($str, " ");
	
	if (!($pos === false))
	{
		return substr($str, 0, $pos);
	}
	
	else
	{
		return $str;
	}
}

// STOCK HTML WIDGETS FUNCTIONS
function pika_html_red_flag($message)
{
	$C = '';
	
	$message2 = str_replace(' ', '&nbsp;', $message);
	
	// Brian mod
    $C .= '<span><img width=16 height=16 src="images/redflag.gif" alt="red flag">&nbsp;';
	$C .= "$message2</span> &nbsp; &nbsp;";
	
	return $C;
}

// display a formatted section title in HTML
// Brian mod
// function pika_heading($str, $style='class="hdt"')
function pika_heading($str, $style='')
{
	// Brian mod
    return "<h3 $style>$str</h3>\n";
}

// display a formatted section title in HTML
function pika_case_heading($str)
{
	// Brian mod
    return "<h3>$str</h3>\n";
}


// display the user's Todo list, in HTML
function pika_task_list($user_id)
{
	global $pk;
	$t = new plTable();
	$dummy = null;
	
	$filter['act_date'] = 'NULL';
	$filter['user_id'] = $user_id;
	
	$result = $pk->fetchActivities($filter, $dummy);
	while ($row = $result->fetchRow())
	{
		$t->addRow($row);
	}
	
	return $t->draw();
}


// display an activity record, formatted in HTML
function pika_activity_record($contact)
{
	global $pikaLscActCode;
	
	// Brian mod
    $C .= '<tr><td colspan="2"><hr><p class="hd">';
	
	if ($contact["last_name"])
	{
		$C .= "<b>{$contact["first_name"]} {$contact["last_name"]}</b>";
	}
	
	else
	{
		$C .= "<b>{$contact["user_id"]}</b>";
	}
	
	$C .= sprintf(" on <b>%s</b> at <b>%s</b>\n",
	pl_date_unmogrify($contact["act_date"]),
	pl_unmogrify_time($contact["act_time"]));
	
	if ($contact["hours"])
	{
		if ($contact["completed"])
		{
			$compl = 'completed';
		}
		
		else
		{
			$compl = 'not completed';
		}
		
		$C .= " -- Hours: <b>{$contact["hours"]}</b>, $compl";
	}
	
	if ($contact["good_story"])
	{
		$C .= ' <b>Good Story</b> ';
	}
	
	$C .= "</p></td></tr>\n";
	
	$C .= "<tr><td>";
	$C .= "Type of Activity:  <b>{$contact["category"]}</b>";
	$C .= "&nbsp; &nbsp; LSC Act. Code: <b>{$pikaLscActCode[$contact["act_code"]]}</b>";
	
	if ($contact["number"] && $contact["case_id"])
	{
		$C .= "&nbsp; &nbsp; Case Number: <a href='case.php?case_id={$contact["case_id"]}'><b>{$contact["number"]}</b></a></td>";
	}
	
	else if ($contact["case_id"])
	{
		$C .= "&nbsp; &nbsp; Case ID: <a href='case.php?case_id={$contact["case_id"]}'><b>{$contact["case_id"]}</b></a></td>";
	}
	// Brian mod
	$C .= "<td>
			<a href='activity.php?act_id={$contact["act_id"]}&screen=edit&case_id={$contact["case_id"]}'>
			edit</a>\n";
	
	$C .= "<a href='activity.php?act_id={$contact["act_id"]}&screen=delete_act&case_id={$contact["case_id"]}'>delete</a>\n";
	// Brian mod
	$C .= '</td></tr><tr><td colspan="2">';
	
	if ($contact["summary"])
	{
		$C .= "<b>" . pl_format_text($contact["summary"]) . "</b><br>";
	}
	
	if ($contact["notes"])
	{
		$C .= '<blockquote>' . pl_format_text($contact["notes"]) . '</blockquote>';
	}
	
	$C .= '</td></tr>';
	
	return $C;
}


// display a single, case-related activity record in HTML
function pika_case_note($contact)
{
	global $pk;
	static $user_id_menu = null;
	static $pba_id_menu = null;
	
	if (is_null($user_id_menu))
	{	
	// 'user_id' should, hopefully, be init'ed before this function is called
	$user_id_menu = $pk->fetchStaffArray();
	$pba_id_menu = $pk->fetchPbAttorneyArray();
	}
	
	$notes_found = FALSE;
	$hours = "error";
	$tmpname = "error";
	$C = '';
	
	$C .= "<p>\n";
	
	if ($contact['user_id'])
	{
		if ($user_id_menu[$contact['user_id']])
		{
			$tmpname = $user_id_menu[$contact['user_id']];
		}
		
		else
		{
			$tmpname = $contact['user_id'];
		}
	}
	
	else if ($contact['pba_id'])
	{
		if ($pba_id_menu[$contact['pba_id']])
		{
			$tmpname = $pba_id_menu[$contact['pba_id']] . " - pro bono";
		}
		
		else
		{
			$tmpname = $contact['pba_id'] . " - pro bono";
		}
	}
	
	else
	{
		$tmpname = "No name provided";
	}
	
	
	$C .= "{$tmpname}<br>";
	
	if (1.0 == $contact['hours'])
	{
		$hours = "{$contact['hours']} hour";
	}
	
	else if (is_null($contact['hours']))
	{
		$hours = '';
	}
	
	else
	{
		$hours = "{$contact['hours']} hours";
	}
	
	// Brian mod
    $C .= "<span>";
	$C .= pl_date_unmogrify($contact["act_date"]) . ' ' . pl_unmogrify_time($contact["act_time"]);
	if (strlen($hours) > 0)
	{
		$C .= " &nbsp; | &nbsp; {$hours}";
	}
	
	$C .= " &nbsp; | &nbsp; </span><a href='activity.php?act_id={$contact['act_id']}&screen=edit&case_id={$contact['case_id']}'>Edit this record</a>\n";
	
	// Brian mod
    $C .= '<blockquote>' . "\n";
	
	if ($contact["summary"])
	{
		$C .= pl_format_text($contact["summary"]);
		$notes_found = TRUE;
	}
	
	if ($contact["summary"] && $contact["notes"])
	{
		$C .= "<br>\n";
	}
	
	if ($contact["notes"])
	{
		$C .= pl_format_text($contact["notes"]);
		$notes_found = TRUE;
	}
	
	if (FALSE == $notes_found)
	{
		$C .= '<em>No case notes entered</em>';
	}
	
	// Brian mod
    $C .= '</blockquote>' . "\n";
	
	// Brian mod
    $C .= "<div></div>";
	
	return $C;
}


/*	Display the tabbed calendar controls, in HTML
*/
function pika_calendar_tabs($current_tab='day', $cal_date, $user_id)
{
	$C = '';
	
	$C .= "<ul id=\"cal_tabs\">\n";
	
	if ('day' == $current_tab)
	{
		$C .= "<li id=\"current\"><a href=\"cal_day.php?cal_date=$cal_date&user_id=$user_id\">Day View</a></li>\n";
	}
	
	else
	{
		$C .= "<li><a href=\"cal_day.php?cal_date=$cal_date&user_id=$user_id\">Day View</a></li>\n";
	}
	
	if ('one' == $current_tab)
	{
		$C .= "<li id=\"current\"><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=one\">One Week</a></li>\n";
	}
	
	else
	{
		$C .= "<li><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=one\">One Week</a></li>\n";
	}
	
	if ('four' == $current_tab)
	{
		$C .= "<li id=\"current\"><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=four\">Four Weeks</a></li>\n";
	}
	
	else
	{
		$C .= "<li><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=four\">Four Weeks</a></li>\n";
	}
	
	if ('adv' == $current_tab)
	{
		$C .= "<li id=\"current\"><a href=\"cal_adv.php?cal_date=$cal_date&user_id=$user_id\">Advanced</a></li>\n";
	}
	
	else
	{
		$C .= "<li><a href=\"cal_adv.php?cal_date=$cal_date&user_id=$user_id\">Advanced</a></li>\n";
	}
	
	$C .= "</ul>\n";
	
	return $C;
}

function table_pika_calendar_tabs($current_tab='day', $cal_date, $user_id)
{
	$C = '';
	// Brian mod
	$C .= "<table cellspacing=\"0\" summary=\"\">\n<tr>\n";
	
	if ('day' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong><span>Day View</span></strong></td>\n";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_day.php?cal_date=$cal_date&user_id=$user_id\">Day View</a></strong></td>\n";
	}
	
	$C .= "<td><img src=\"images/tab.gif\" width=\"15\" height=\"15\" alt=\"\"/></td>\n";
	
	if ('one' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong><span>One Week</span></strong></td>\n";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=one\">One Week</a></strong></td>\n";
	}
	
	$C .= "<td><img src=\"images/tab.gif\" width=\"15\" height=\"15\" alt=\"\"/></td>\n";
	
	if ('four' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong><span>Four Weeks</span></strong></td>\n";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=four\">Four Weeks</a></strong></td>\n";
	}
	
	$C .= "<td><img src=\"images/tab.gif\" width=\"15\" height=\"15\" alt=\"\"/></td>\n";
	
	if ('adv' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong><span>Advanced</span></strong></td>\n";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_adv.php?cal_date=$cal_date&user_id=$user_id\">Advanced</a></strong></td>\n";
	}
	
	$C .= "<td><img src=\"images/tabend.gif\" width=\"15\" height=\"15\" alt=\"\"/></td>\n";
	$C .= "</tr>\n</table>\n";
	
	return $C;
}


function old_pika_calendar_tabs($current_tab='day', $cal_date, $user_id)
{
	$C = '';
	
	$C .= "<table><tr><td>[</td>";
	
	//$C .= "View: ";
	
	if ('day' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong>Day View</td>";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_day.php?cal_date=$cal_date&user_id=$user_id\">Day View</a></td>";
	}
	
	$C .= "<td><img src=\"images/tab.gif\" width=15 height=15></td>";
	
	if ('one' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong>One Week</td>";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=one\">One Week</a></td>";
	}
	
	$C .= "<td>|</td>";
	
	if ('four' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong>Four Weeks</td>";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_week.php?cal_date=$cal_date&user_id=$user_id&screen=four\">Four Weeks</a></td>";
	}
	
	$C .= "<td>|</td>";
	
	if ('adv' == $current_tab)
	{
		// Brian mod
        $C .= "<td><strong>Advanced</td>";
	}
	
	else
	{
		// Brian mod
        $C .= "<td><strong><a href=\"cal_adv.php?cal_date=$cal_date&user_id=$user_id\">Advanced</a></td>";
	}
	
	$C .= "<td>]</td></tr></table>";
	
	return $C;
}

// display a contact record formatted in HTML
function pika_contact_record($contact)
{
	global $plMenus, $pk;
	
	$C = '';
	
	// contact name
    // Brian mod
	$C .= "<a href='contact.php?contact_id={$contact["contact_id"]}>
		{$contact["first_name"]} {$contact["middle_name"]} 
	    {$contact["last_name"]} {$contact["extra_name"]}</a>\n";
	
	// contact information
	// Brian mod (down to gender)
    $C .= '<dl id="alias-contact"><dt>';

	$address = pl_format_address($contact);

	$C .= "Address</dt><dd>$address</dd>\n";
	
	if ($contact["phone"] || $contact["area_code"] || $contact["phone_notes"])
	{
		$C .= "<dt>Phone</dt><dd>" . pl_format_phone($contact) . "</dd>";
		
		if (isset($contact["phone_notes"]) && $contact["phone_notes"])
		{
			$C .= "<dd>{$contact['phone_notes']}</dd>";
		}
		
	}
	
	if ($contact["phone_alt"] || $contact["area_code_alt"] || $contact["phone_notes_alt"])
	{
		$z = array();
		$z['phone'] = $contact['phone_alt'];
		$z['area_code'] = $contact['area_code_alt'];
		
		$C .= "<dt>Alt. Phone</dt><dd>" . pl_format_phone($z) . "</dd>";
		
		if (isset($contact["phone_notes_alt"]) && $contact["phone_notes_alt"])
		{
			$C .= "{$contact['phone_notes_alt']}";
		}
		
	}
	
	if ($contact["birth_date"])
	{
		// Brian mod
        $C .= '<dt>DOB</dt><dd>' . pl_date_unmogrify($contact["birth_date"]) . '</dd>';
	}
	
	if ($contact["county"])
	{
		$C .= '<dt>County</dt><dd>' . $contact["county"] . '</dd>';
		
	}
	
	// if ($contact["title"])
	// {
	// 	$C .= 'Title:  <b>' . $contact["title"] . '</b><br>';
	// }
	
	if ($contact["ssn"])
	{
		$C .= "<dt>SSN</dt><dd>{$contact["ssn"]}</dd>";
	}
	
	if ($contact["email"])
	{
		$C .= '<dt>Email</dt><dd><a href="mailto:' . $contact["email"] . '">' . $contact["email"] . '</a></dd>';
	}
	
	if ($contact["language"])
	{
		$C .= "<dt>Language</dt><dd>{$contact["language"]}</dd>";
	}
	
	if ($contact["gender"])
	{
		if ('f' == $contact["gender"])
		{
			$C .= '<dt>Gender</dt><dd>Female</dd></dl>';
		}
		
		else if ('m' == $contact["gender"])
		{
			$C .= '<dt>Gender</dt><dd>Male</dd></dl>';
		}
		
		else
		{
			$C .= "<dt>Gender</dt><dd>{$contact['gender']}</dd></dl>";
		}
	}
	
	// if ($contact['disabled'])
	// {
	// 	$C .= ' Disabled ';
	// }
	
	// if (isset($contact['has_trans']) && !is_null($contact['has_trans']) && $contact['has_trans'] == 0)
	// {
	// 	$C .= ' No Transportation ';
	// }
	
	// if (isset($contact['has_phone']) && !is_null($contact['has_phone']) && $contact['has_phone'] == 0)
	// {
	// 	$C .= ' No Phone ';
	// }
	
	// $C .= '</td></tr>';
	
	
	// if ($contact["notes"])
	// {
	// 	$C .= "<tr><td colspan=2>\n";
	//	$C .= 'Notes:  <b>' . $contact["notes"] . '</b>';
	//	$C .= "</td></tr>";
	// }
	
	// $C .= '</table>';
	
	return $C;
}


// Return array of names of installed reports
function pika_report_list()
{
	$dh = opendir('reports');
	$x = array();
	$ban_list = array('case_print', 'conflict', 'compen_bill', 'survey');
	
	while ($file = readdir($dh))
	{
		if ($file[0] != '.' && !in_array($file, $ban_list))
		{
			$x[] = $file;
		}
	}
	
	closedir($dh);
	
	sort($x);
	reset($x);
	return $x;
}

// Return array of names of installed reports
function pika_html_report_list()
{
	$dh = opendir('reports');
	$ban_list = array('case_print', 'conflict', 'compen_bill', 'survey', 'index.php');
	$x = '';
	
	$x .= "<ul>\n";
	
	while ($file = readdir($dh))
	{
		if ($file[0] != '.' && !in_array($file, $ban_list) && !file_exists("reports/{$file}/dont_list.txt"))
		{
			if (file_exists("reports/{$file}/title.txt"))
			{
				$z = file("reports/{$file}/title.txt");
				$title = implode("\n", $z);
				$title = pl_clean_html($title);
				//$title = file_get_contents("reports/{$file}/title.txt");
			}
			
			else
			{
				$title = $file;
			}
			
			if (file_exists("reports/{$file}/{$file}-form.php"))
			{
				$x .= "<li><a href=\"legacy_report.php?report={$file}\">{$title}</a>\n";
			}
			
			else
			{
				$x .= "<li><a href=\"reports/{$file}/\">{$title}</a>\n";
			}
			
			if (file_exists("reports/{$file}/description.txt"))
			{
				$z = file("reports/{$file}/description.txt");
				$description = implode("\n", $z);
				//$description = file_get_contents("reports/{$file}/description.txt");
				$description = pl_clean_html($description);
				$x .= "<br>\n{$description}\n";
			}
		}
	}
	
	closedir($dh);
	
	$x .= "</ul>\n";
	
	return $x;
}




// Generates the JavaScript-y case list menu
function pika_act_case_menu($user_id, $case_id)
{
	global $pk;
	
	// the open cases menu for case_id, tied to funding with JavaScript
	$result = $pk->fetchOpenCaseList($user_id);
	
	$new_case_menu = "";
	$javascript = "";
	$js_array = "";
	$i = 0;
	
	if ($case_id)
	{
		$case_appears_on_list = false;
		
		while ($rr = $result->fetchRow())
		{
			if ($rr['case_id'] == $case_id)
			{
				$selected = 'selected ';
				$case_appears_on_list = true;
			}
			
			else
			{
				$selected = '';
			}
			
			$new_case_menu .= "<option {$selected}value=\"{$rr['case_id']}\">{$rr['last_name']}, {$rr['first_name']} {$rr['middle_name']} {$rr['extra_name']} - {$rr['number']} - {$rr['problem']} - {$rr['area_code']} {$rr['phone']}\n";
			$js_array .= "funding['{$rr['case_id']}'] = '{$rr['funding']}';\n";
			if(isset($rr['project']) && $rr['project']) {
				$js_array .= "project['{$rr['case_id']}'] = '{$rr['project']}';\n";
			}
			if(isset($rr['lsc_elig']) && $rr['lsc_elig']) {
				$js_array .= "lsc_elig['{$rr['case_id']}'] = '{$rr['lsc_elig']}';\n";
			}
		}
		
		if (false == $case_appears_on_list)
		{
			$result = $pk->fetchCaseList(array('case_id' => $case_id), $dummy);
			$case_row = $result->fetchRow();
			
			$new_case_menu = "<option selected value=\"{$case_id}\">{$case_row['contacts.last_name']}, , {$case_row['contacts.first_name']} {$case_row['contacts.middle_name']} {$case_row['contacts.extra_name']} - {$case_row['number']} - {$case_row['problem']} - {$case_row['area_code']} {$case_row['phone']}" . $new_case_menu;
			$js_array .= "funding['{$rr['case_id']}'] = '{$rr['funding']}';\n";
			if(isset($rr['project']) && $rr['project']) {
				$js_array .= "project['{$rr['case_id']}'] = '{$rr['project']}';\n";
			}
			if(isset($rr['lsc_elig']) && $rr['lsc_elig']) {
				$js_array .= "lsc_elig['{$rr['case_id']}'] = '{$rr['lsc_elig']}';\n";
			}
		}
	}
	
	else if ($result->numRows() == 0)
	{
		$new_case_menu .= "<option selected value=\"\">No Cases Available\n";
	}
	
	else while ($rr = $result->fetchRow())
	{
		$new_case_menu .= "<option value=\"{$rr['case_id']}\">{$rr['last_name']}, {$rr['first_name']} {$rr['middle_name']} {$rr['extra_name']} - {$rr['number']} - {$rr['problem']} - {$rr['area_code']} {$rr['phone']}\n";
		$js_array .= "funding['{$rr['case_id']}'] = '{$rr['funding']}';\n";
		if(isset($rr['project']) && $rr['project']) {
			$js_array .= "project['{$rr['case_id']}'] = '{$rr['project']}';\n";
		}
		if(isset($rr['lsc_elig']) && $rr['lsc_elig']) {
			$js_array .= "lsc_elig['{$rr['case_id']}'] = '{$rr['lsc_elig']}';\n";
		}
	}
	
	$new_case_menu = "<select name=\"case_id\" tabindex=\"1\" onChange=\"sfw(this.value);\">\n" . "<option value=\"\">\n" . $new_case_menu . "</select>\n";
	
	// Create code for sfw() a.k.a. the set_fund wrapper.
	$javascript .= <<<EOF
<script language="JavaScript" type="text/javascript"><!--
function sfw(val)
{
funding = new Array();
project = new Array();
lsc_elig = new Array();

EOF;
	$javascript .= $js_array;
	$javascript .= <<<EOF
	return set_fund(funding[val], project[val], lsc_elig[val]);
}
//--></script>

EOF;
	
	return $javascript . $new_case_menu;
}

/**
* @return float
* @param hours_val = null float
* @param interval = null int
* @desc Rounds a decimal hours amount to the nearest N minutes
*/
function pika_round_decimal_hours($hours_val = null, $interval = null)
{
	if ($hours_val == null)
	{
		return null;
	}
	
	else if ($hours_val == 0)
	{
		return 0;
	}
	
	else if ($interval <= 0 || $interval == null)
	{
		// A negative $interval is an error condition; you cannot round off to the nearest -n minutes
		
		// Assume no rounding is to take place
		return $hours_val;
	}
	
	else
	{
		// the number of hours
		$hours = floor($hours_val);
		// the number of minutes
		$minutes = ($hours_val - $hours) * 60.0;
		
		// the rounded number of minutes
		$x = number_format($minutes / $interval, 2, '.', '');
		list($y, $z) = explode(".", $x);
		
		if ($z >= 50)
		{
			$y++;
		}
		
		$rounded_hours_val = $hours + ($y * $interval) / 60;
		
		/*
		If the number of hours and minutes rounded down to zero, set 'hours'
		to the minimum amount of minutes.
		*/
		if (0 == $rounded_hours_val)
		{
			$rounded_hours_val = $interval / 60;
		}
		
		return $rounded_hours_val;
	}
}


// utility function to be used with die()
function pika_error_notice($title, $message)
{
	global $HTTP_REFERER, $SERVER_SOFTWARE, $auth_row, $plSettings;
	global $plTemplate;
	global $pikaNavRootLabel;
	
	$d = '';
	
	$d .= '<p>REQUEST_URI:  ' . $_SERVER['REQUEST_URI'] . '</p>';
	
	if (isset($_REQUEST["screen"]))
	{
		$d .= "<p>SCREEN:  {$_POST["screen"]}</p>";
	}
	
	if (isset($_REQUEST["action"]))
	{
		$d .= "<p>ACTION:  {$_POST["action"]}</p>";
	}
	
	$d .= '<p>HTTP_REFERER:  ' . $HTTP_REFERER . '</p>';
	$d .= '<p>REQUEST_METHOD:  ' . $_SERVER['REQUEST_METHOD'] . '</p>';
	$d .= '<p>REMOTE_ADDR:  ' . $_SERVER['REMOTE_ADDR'] . '</p>';
	$d .= '<p>HTTP_USER_AGENT:  ' . $_SERVER['HTTP_USER_AGENT'] . '</p>';
	$d .= '<p>SERVER_NAME:  ' . $_SERVER['SERVER_NAME'] . '</p>';
	$d .= '<p>SERVER_SOFTWARE:  ' . $SERVER_SOFTWARE . '</p>';
	$d .= "<p>DB DSN:  {$plSettings['db_type']}://{$plSettings['db_user']}:********@{$plSettings['db_host']}/{$plSettings['db_name']}</p>";
	
	$d .= '<p>Username:  ' . $auth_row['username'] . '</p>';
	$d .= '<p>User ID:  ' . $auth_row['user_id'] . '</p>';
	
	// if the "unavail" template file is missing, this will avoid an inifinite loop
	if (file_exists('templates/unavailable.html'))
	{
		$template_data["debug"] = $d;
		$template_data["title"] = "Error:  $title";
		$template_data["message"] = $message;
		
		$plTemplate["page_title"] = "Pika CMS Error Screen";
		$plTemplate['nav'] = "<a href=\".\" class=light>$pikaNavRootLabel</a> &gt; Error Screen";
		$template_data = array_merge($template_data, $plTemplate);
		
		echo pl_template($template_data, 'templates/unavailable.html', 'yes');
	}
	
	else
	{
		echo "$title : $message <br> $d";
	}
	
	return;
}




function pika_xchg_appt_add($username, $start_time, $end_time, $subject)
{
	global $plSettings;
	
	$a = array();  // template tag values
	$cal_dir = $plSettings['xchg_directory'] . "/$username/Calendar";
	
	// Generate a UID
	$x = microtime();
	$y = microtime();
	$z = md5($x . $y);
	$z = strtoupper($z);
	$uid = '{' . substr($z, 0, 8);
	$uid .= '-' . substr($z, 8, 4);
	$uid .= '-' . substr($z, 12, 4);
	$uid .= '-' . substr($z, 16, 4);
	$uid .= '-' . substr($z, 20, 12) . '}';
	
	$filename = $cal_dir . '/' . $uid . '.EML';
	
	// Populate $a with template tag values.
	$a['thread_index'] = substr(md5(microtime()), 0, 30);
	$a['tzid'] = 'Eastern Time (US & Canada)';
	$a['timestamp'] = date('Ymd') ."T154814Z";
	$a['start_date'] = date('Ymd', $start_time) . "T133000";
	$a['end_date'] = date('Ymd', $end_time) . "T140000";
	$a['uid'] = $uid;
	$a['cn'] = 'Administrator';
	$a['mailto'] = 'Administrator@DUCKYDOMAIN.pikasoftware.com';
	$a['subject'] = $subject;
	
	$output = pl_template('templates/exchange_appt.txt', $a);
	$output = str_replace("\n", "\r\n", $output);
	
	$fp = fopen($filename, "w");
	fputs($fp, $output);
	fclose($fp);
	
	return true;
}

function pika_xchg_open_appts_get()
{
	// Retrieving calendar info
	global $plSettings;
	
	$data = array();
	$xchg_url = $plSettings['xchg_url'];
	$x_username = 'Administrator';
	//$x_server_name = 'DUCKY';
	
	$dbconn = new COM("ADODB.Connection") or die ("connection create fail");
	
	$dbconn->Provider = 'ExOLEDB.DataSource';
	$dbconn->Open("$xchg_url/$x_username/Inbox/");
	
	$rec = new COM("ADODB.Recordset") or die ("create Recordset error");
	
	$sql = <<< END
	
SELECT	"urn:schemas:calendar:contact",
		"urn:schemas:httpmail:subject",
		"urn:schemas:calendar:dtstart",
		"urn:schemas:calendar:dtend",
		"DAV:displayname",
		"DAV:contentclass",
		"DAV:href"
FROM SCOPE('shallow traversal of "$xchg_url/$x_username/Calendar/"')
WHERE "DAV:ishidden" = False 
AND "DAV:isfolder" = False
AND "urn:schemas:httpmail:subject" LIKE "open"
ORDER BY "urn:schemas:httpmail:date" DESC

END;
	
	$rec = $dbconn->Execute($sql);
	
	
	while (!$rec->EOF)
	{
		$data[] = array('contact' => $rec->fields["urn:schemas:calendar:contact"]->value,
		'subject' => $rec->fields["urn:schemas:httpmail:subject"]->value,
		'dtstart' => $rec->fields["urn:schemas:calendar:dtstart"]->value,
		'dtend' => $rec->fields["urn:schemas:calendar:dtend"]->value);
		$rec->movenext();
	}
	
	$rec->close();
	$dbconn->close();
	
	return $data;
}


function pika_ref_agencies_get_array()
{
	$a = array();
	$sql = <<< END
	SELECT conflict.contact_id AS contact_id, first_name, middle_name, last_name, extra_name
	FROM conflict
	LEFT JOIN contacts ON conflict.contact_id = contacts.contact_id
	WHERE relation_code = 50
	GROUP BY conflict.contact_id
	ORDER BY last_name, first_name, middle_name, extra_name
	LIMIT 1000
END;

	$result = pl_query($sql);
	while ($row = $result->fetchRow())
	{
		$a[$row['contact_id']] = pl_format_name($row);
	}
	
	return $a;
}


function pika_get_attorneys($filter, &$pba_count, $first_row="", $list_length="")
{
	$sql_filter = "";
	
	// Filter elements need to be escaped
	foreach ($filter as $key => $val)
	{
		$filter[$key] = mysql_escape_string($val);
	}
		
	if (isset($filter['pba_id']) && $filter['pba_id'])
	{
		$sql = "SELECT * FROM users WHERE user_id='{$filter['user_id']}'
			    LIMIT 1";
	}
	
	else
	{
		if ($first_row && $list_length)
		{
			$sql_limit = " LIMIT $first_row, $list_length";
		}
		
		else if ($list_length)
		{
			$sql_limit = " LIMIT $list_length";
		}
		
		// handle filter options
		if (isset($filter['county']) && $filter['county'])
		{
			$sql_filter .= " AND county LIKE '%{$filter['county']}%'";
		}
		
		if (isset($filter['languages']) && $filter['languages'])
		{
			$sql_filter .= " AND languages LIKE \"%{$filter['languages']}%\"";
		}
		
		if (isset($filter['practice_areas']) && $filter['practice_areas'])
		{
			$sql_filter .= " AND practice_areas LIKE '%{$filter['practice_areas']}%'";
		}
		
		if (isset($filter['last_name']) && $filter['last_name'])
		{
			$sql_filter .= " AND last_name LIKE '%{$filter['last_name']}%'";
		}

		$sql = "SELECT count(*) FROM users WHERE attorney > '0'" . $sql_filter;
		
		$result = pl_query($sql);
		
		$row = $result->fetchRow();
		
		$pba_count = $row["count(*)"];
		
		
		$sql = "SELECT * FROM users WHERE attorney > '0'" . $sql_filter . " ORDER BY last_name, first_name, middle_name, extra_name" . $sql_limit;
	}
	
	return pl_query($sql);
}

function pika_transfer_options_get()
{
	return pl_query("SELECT * FROM transfer_options");
}

// Needed for new autonumber.php script.
if (!function_exists('pl_mysql_next_id')) 
{
function pl_mysql_next_id($sequence)
{
	// VARIABLES
	$safe_sequence = mysql_escape_string($sequence);
	$next_id = null;
	
	pl_mysql_init() or trigger_error('');
	
	mysql_query("LOCK TABLES counters WRITE") or trigger_error('counters table lock failed');
	$result = mysql_query("SELECT count FROM counters WHERE id = '{$safe_sequence}' LIMIT 1")
		or trigger_error('');
	
	if (mysql_num_rows($result) < 1)
	{
		mysql_query("INSERT INTO counters SET id = '{$safe_sequence}', count = '1'")
		or trigger_error('');
		$next_id = 1;
	}
	
	else
	{
		$row = mysql_fetch_assoc($result);
		$next_id = $row['count'] + 1;
		
		mysql_query("UPDATE counters SET count = count + '1' WHERE id = '{$safe_sequence}' LIMIT 1")
			or trigger_error('error_during_increment');
	}
	
	mysql_query("UNLOCK TABLES") or trigger_error('error');
	return $next_id;
}
}
?>
