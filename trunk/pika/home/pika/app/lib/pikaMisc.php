<?php

/**********************************/
/* Pika CMS (C) 2002 Aaron Worley */
/* http://pikasoftware.net        */
/**********************************/

/**
* Something.
*
* @author Aaron Worley <amworley@pikasoftware.net>;
* @version 1.0
* @package Danio
*/
class pikaMisc
{
	function batchTimeLoop()
	{
		$a = array();
		
		for ($i = 0; $i < 10; $i++)
		{
			$a[] = array();
		}
		
		return $a;
	}
	
	
	// TODO - deprecate this function.
	/* static */ function fetchPbAttorneyArray()
	{
		$sql = "SELECT * FROM pb_attorneys ORDER BY last_name";
		$result = mysql_query($sql);
		$a = array();  // make sure we return an empty array if no attys are found

		while ($row = mysql_fetch_assoc($result))
		{
			$a[$row['pba_id']] = "{$row['last_name']}, {$row['first_name']} {$row['middle_name']} {$row['extra_name']}";
		}

		return $a;
	}
	
	
	// TODO - deprecate this function.
	/* static */ function fetchStaffArray()
	{
		$sql = "SELECT * FROM users ORDER BY last_name";
		$result = mysql_query($sql);

		while ($row = mysql_fetch_assoc($result))
		{
			$a[$row['user_id']] = "{$row['last_name']}, {$row['first_name']} {$row['middle_name']} {$row['extra_name']}";
		}

		return $a;
	}
	
	
	/* static */ function getCaseHandlerArray($v1 = 0, $v2 = 0, $v3 = 0)
	{
		$a = array();
		$sql = "SELECT user_id, first_name, middle_name, last_name, extra_name FROM users WHERE enabled = '1' AND attorney = '1' OR user_id IN ('{$v1}', '{$v2}', '{$v3}') ORDER BY last_name, first_name, middle_name";
		$result = mysql_query($sql) or trigger_error(mysql_error());

		while ($row = mysql_fetch_assoc($result))
		{
			$a[$row['user_id']] = "{$row['last_name']}, {$row['first_name']} {$row['middle_name']} {$row['extra_name']}";
		}

		return $a;
	}

	
	/* static */ function firstNameOnly($str)
	{
		$pos = strpos($str, ' ');

		if (!($pos === false))
		{
			return substr($str, 0, $pos);
		}

		else
		{
			return $str;
		}
	}

	
	/* static */ function getActivitiesByText($text_str)
	{
		$clean_text_str = mysql_escape_string($text_str);
		$limit = 30;
		
		if (is_numeric($_SESSION['paging'])) 
		{
			$limit = $_SESSION['paging'];
		}
		
		$sql = "SELECT activities.*, cases.number
				FROM activities
				LEFT JOIN cases on activities.case_id = cases.case_id
				WHERE summary LIKE '%{$clean_text_str}%'
				OR notes LIKE '%{$clean_text_str}%'
				LIMIT {$limit}";
		$result = mysql_query($sql) or trigger_error(mysql_error());
		return $result;
	}


	
	function getCasesAll()
	{		
		$db_name = pl_settings_get('db_name');
		$sql = "SELECT * FROM cases ORDER BY number ASC LIMIT 5000";
		$result = mysql_query($sql) or die($sql.mysql_error()."");
	
		$cases = array();							
		
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

			$case['client_name'] = pl_text_last_name($row, 'contacts.')?"name":"no name";
			
			/*
			if (strlen($row['close_date']) > 0) 
			{
				$case['open_closed'] = "Closed";
				$case['open_closed_color'] = "#ff0000";
			}
			else
			{
				$case['open_closed'] = "Open";
				$case['open_closed_color'] = "#008800";
			}			
			
			$case['open_date'] = pl_date_unmogrify($row['open_date']);			
			$case['close_date'] = pl_date_unmogrify($row['close_date']);
			*/				
					
			
			
			$cases[]=$case;
		}
			
			
		return $cases;		
	}
	
	
	/* static */ function getCases($filter, &$row_count, $order_field='',
	$order='ASC', $first_row='0', $list_length='100')
	{
		$db_name = pl_settings_get('db_name');
		$sql = ' FROM cases
			LEFT JOIN contacts ON cases.client_id=contacts.contact_id
			LEFT JOIN users ON cases.user_id=users.user_id
			WHERE 1 ';
		
		
		foreach ($filter as $key => $val)
		{
			$filter[$key] = mysql_escape_string($val);
		}

		if (isset($filter['case_id']) && $filter['case_id'])
		{
			$sql .= " AND cases.case_id={$filter['case_id']}";
		}

		if (isset($filter['last_name']) && $filter['last_name'])
		{
			$sql .= " AND  (contacts.last_name LIKE '{$filter['last_name']}%' OR contacts.first_name LIKE '{$filter['last_name']}%')";
		}


		if (isset($filter["first_name"]) && $filter["first_name"])
		{
			$sql .= " OR contacts.first_name LIKE '{$filter['first_name']}%'";
		}


		if (isset($filter["user_id"]) && $filter["user_id"])
		{
			// Filter using a UNION to improve performance.  See below...
		}


		if (isset($filter["pba_id"]) && $filter["pba_id"])
		{
			$sql .= " AND (cases.pba_id1='{$filter["pba_id"]}' OR cases.pba_id2='{$filter["pba_id"]}' OR cases.pba_id3='{$filter["pba_id"]}')";
		}

		if (isset($filter["client_id"]) && $filter["client_id"])
		{
			$sql .= " AND cases.client_id='{$filter["client_id"]}'";
		}


		if (isset($filter["office"]) && $filter["office"])
		{
			$sql .= " AND office='{$filter["office"]}'";
		}


		if (isset($filter["status"]) && is_numeric($filter["status"]))
		{
			$sql .= " AND status={$filter["status"]}";
		}


		if (isset($filter["opened_before"]) && $filter["opened_before"])
		{
			$sql .= " AND open_date < '{$filter["opened_before"]}'";
		}


		if (isset($filter["closed_before"]) && $filter["closed_before"])
		{
			$sql .= " AND close_date < '{$filter["closed_before"]}'";
		}


		if (isset($filter["opened_on_after"]) && $filter["opened_on_after"])
		{
			$sql .= " AND open_date >= '{$filter["opened_on_after"]}'";
		}


		if (isset($filter["closed_on_after"]) && $filter["closed_on_after"])
		{
			if ('NULL' == $filter["closed_on_after"])
			{
				$sql .= " AND close_date IS NULL";
			}

			else if ('NOT NULL' == $filter["closed_on_after"])
			{
				$sql .= " AND close_date IS NOT NULL";
			}

			else
			{
				$sql .= " AND close_date >= '{$filter["closed_on_after"]}'";
			}
		}

		if (isset($filter["funding"]) && $filter["funding"])
		{
			$sql .= " AND funding='{$filter["funding"]}'";
		}

        if (isset($filter["sp_problem"]) && $filter["sp_problem"])
        {
                $sql .= " AND sp_problem='{$filter["sp_problem"]}'";
        }
        
        if (isset($filter['number']) && $filter['number'])
		{
			$sql .= " AND number LIKE '%{$filter['number']}%'";
		}

		if (isset($filter['show_cases']))
		{
			if ((0 == $filter['show_cases']) && (0 == $filter['show_mediation']))
			{
				$sql .= "AND close_date IS NULL";
			}

			else if ((1 == $filter['show_cases']) && (0 == $filter['show_mediation']))
			{
				//$sql .= " AND close_date IS NOT NULL";

			$sql .= "AND close_date IS NOT NULL";
			}

			else if ((0 == $filter['show_cases']) && (1 == $filter['show_mediation']))
			{
				//$sql .= " AND close_date IS NOT NULL";

			$sql .= "AND mediation_check = 1 AND close_date IS NULL";
			}
			else if ((1 == $filter['show_cases']) && (1 == $filter['show_mediation']))
			{
				//$sql .= " AND close_date IS NOT NULL";

			$sql .= "AND mediation_check = 1 AND close_date IS NOT NULL";
			}
			else if ((2 == $filter['show_cases']) && (1 == $filter['show_mediation']))
			{
				//$sql .= " AND close_date IS NOT NULL";

			$sql .= "AND mediation_check = 1";
			}
		


		}

	

// if (isset($filter['show_mediation']))
//		{
//			if ((0 == $filter['show_mediation']) && (0 == $filter['show_cases']))
//			{
//				$sql .= "  AND mediation_check = 1 OR mediation_check = 0 OR mediation_check IS NULL AND close_date IS NULL";
//			}
//
//			else if ((0 == $filter['show_mediation']) && (1 == $filter['show_cases']))
//			{
//				$sql .= "  AND mediation_check = 1 OR mediation_check = 0 OR mediation_check IS NULL AND close_date IS NOT NULL";
//			}
//
//
//			else if (1 == $filter['show_mediation'])
//			{
//				$sql .= "  AND mediation_check =1";
//			}
//		}
		

		if (isset($filter["user_id"]) && $filter["user_id"])
		{
			// Use UNION to improve performance.
			$mini_sql = "SELECT COUNT(case_id) AS count {$sql} AND cases.user_id = '{$filter["user_id"]}'";
			$mini_sql .= " UNION SELECT COUNT(case_id) AS count {$sql} AND cases.cocounsel1 = '{$filter["user_id"]}'";
			$mini_sql .= " UNION SELECT COUNT(case_id) AS count {$sql} AND cases.cocounsel2 = '{$filter["user_id"]}'";
			$mini_sql .= " UNION SELECT COUNT(case_id) AS count {$sql} AND cases.cocounsel3 = '{$filter["user_id"]}'";
			$result = mysql_query($mini_sql) or trigger_error('');
			
			while ($row = mysql_fetch_assoc($result)) 
			{
				$row_count += $row['count'];	
			}
		}
		
		else
		{
			$result = mysql_query('SELECT COUNT(case_id) AS count' . $sql)
			or trigger_error('');
			$row = mysql_fetch_assoc($result);
			$row_count = $row['count'];
		}

		/*	next, re-run the query, this time sorting the results and only
		retrieving those records that will be displayed on this screen.
		*/
		if (isset($filter["user_id"]) && $filter["user_id"])
		{
			// Use UNION to improve performance.
			$full_sql = '(SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3,client_id, sp_problem,
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\', contacts.last_name AS client_last_name,
				contacts.first_name AS client_first_name ' . $sql . " AND cases.user_id = '{$filter["user_id"]}')";
			$full_sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, sp_problem,
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\', contacts.last_name AS client_last_name,
				contacts.first_name AS client_first_name ' . $sql . " AND cases.cocounsel1 = '{$filter["user_id"]}')";
			$full_sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, sp_problem,
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\', contacts.last_name AS client_last_name,
				contacts.first_name AS client_first_name ' . $sql . " AND cases.cocounsel2 = '{$filter["user_id"]}')";
				$full_sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, sp_problem,
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\', contacts.last_name AS client_last_name,
				contacts.first_name AS client_first_name ' . $sql . " AND cases.cocounsel3 = '{$filter["user_id"]}')";
		}
		
		else 
		{
			$full_sql = 'SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, sp_problem,
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\' , contacts.last_name AS client_last_name,
				contacts.first_name AS client_first_name ' . $sql;
		}
		
		if ($order_field && $order)
		{
			if ('client_name' == $order_field)
			{
				$full_sql .= ' ORDER BY client_last_name ' . $order . ', client_first_name ' . $order;
			}

			else
			{
				$full_sql .= " ORDER BY {$order_field} {$order}";
			}
		}
		
		

		$full_sql .= " LIMIT $first_row, $list_length";
		//echo 'fullsql=['.$full_sql.']';
		$result = mysql_query($full_sql) or trigger_error(mysql_error());
		return $result;
	}

	/* static */ /*function getUsers($order_field = 'user_name', $order = 'ASC', $get_disabled = true, &$row_count = null)
	{
		$disabled_sql = '';

		if ($order != 'ASC')
		{
			$order = 'DESC';
		}

		switch ($order_field)
		{
			case 'user_name':

			$order_sql = "last_name {$order}, first_name {$order}, middle_name {$order}, extra_name {$order}";
			break;

			case 'description':
			case 'email':

			$order_sql = "{$order_field} {$order}";
			break;

			default:

			// A bad value was passed.
			trigger_error('');
			exit();
			break;
		}

		if (!$get_disabled)
		{
			$disabled_sql = 'WHERE enabled = \'1\'';
		}

		$result = mysql_query("SELECT count(*) AS tally FROM users {$disabled_sql}") or die('');
		$row = mysql_fetch_assoc($result);
		$row_count = $row['tally'];

		return mysql_query("SELECT * FROM users {$disabled_sql} ORDER BY {$order_sql}");
	}*/
	
	
	/* static */ function getCasesByNumber($case_no, $records_per_page = 30, $offset = 0)
	{
		$clean_case_no = mysql_escape_string($case_no);
		$clean_records_per_page = mysql_escape_string($records_per_page);
		$clean_offset = mysql_escape_string($offset);
		return mysql_query("SELECT * FROM ");
	}
	

	/*	Search contacts and aliases for phonetic matches (using metaphone).
	Ignore exact matches, these are handled by getContacts().
	*/
	/* static */ function getContactsPhonetically($last_name, $first_name = '')
	{
		/*
		$sql = "CREATE TEMPORARY TABLE IF NOT EXISTS contact_cases
				(INDEX contact_id (contact_id))
				SELECT	MAX(conflict_id), 
						conflict.contact_id, 
						relation_code, 
						conflict.case_id, 
						number, 
						open_date 
				FROM conflict 
				LEFT JOIN cases ON conflict.case_id = cases.case_id 
				WHERE 0
				GROUP BY conflict.contact_id";
		mysql_query($sql) or trigger_error('');
		*/

		$mp_last = metaphone($last_name);
		$mp_first = metaphone(pikaMisc::firstNameOnly($first_name));

		if (strlen($mp_last) > 1)
		{
			// metaphone fields are only 8 chars in size
			$mp_first = substr($mp_first, 0, 8);
			$mp_last = substr($mp_last, 0, 8);

			$match_first = 'mp_first';
			$match_last = 'mp_last';
		}

		else
		{
			// just use the entire name if $mp_last is extremely small
			$mp_last = $last_name;
			$mp_first = $first_name;

			$match_first = 'first_name';
			$match_last = 'last_name';
		}

		$clean_mp_first = mysql_escape_string($mp_first);
		$clean_mp_last = mysql_escape_string($mp_last);

		/*	Organizations will only have a $last_name, which makes them a
		special case.
		*/

		// If $mp_last has a trailing wild card, it will generate too many false hits
		if (!$mp_first && $mp_last)
		{
			$sql = "SELECT contacts.*
				    FROM aliases LEFT JOIN contacts ON aliases.contact_id=contacts.contact_id
				    WHERE aliases.{$match_last} LIKE '{$clean_mp_last}' 
				    ORDER BY aliases.last_name, aliases.first_name, aliases.extra_name, aliases.middle_name";
		}

		else if ($mp_last)
		{
			$sql = "SELECT contacts.*
				    FROM aliases LEFT JOIN contacts ON aliases.contact_id=contacts.contact_id
				    WHERE (aliases.{$match_last} LIKE '{$clean_mp_last}' 
				    AND aliases.{$match_first} LIKE '{$clean_mp_first}')
				    ORDER BY aliases.last_name, aliases.first_name, aliases.extra_name, aliases.middle_name";
		}

		else
		{
			trigger_error('');
		}
		
		$result = mysql_query($sql) or trigger_error(mysql_error());
		return $result;
	}


	/* static */ function getContactOffset($last_name, $first_name = '', $middle_name = '')
	{
		// Note:  names should all be handled case-insensitively.  :)
		$clean_last_name = mysql_escape_string(strtolower($last_name));
		$clean_first_name = mysql_escape_string(strtolower($first_name));
		$clean_middle_name = mysql_escape_string(strtolower($middle_name));
		$clean_letter = mysql_escape_string(strtolower($last_name[0]));

		if (strlen($first_name) > 1)
		{
			$sql = "SELECT COUNT(*) AS 'position' FROM aliases WHERE last_name LIKE '{$clean_letter}%' AND ((last_name < '{$clean_last_name}') OR (last_name <= '{$clean_last_name}' AND first_name < '{$clean_first_name}'))";
		}

		else
		{
			$sql = "SELECT COUNT(*) AS 'position' FROM aliases WHERE last_name LIKE '{$clean_letter}%' AND last_name < '{$clean_last_name}'";
		}

		$result = mysql_query($sql) or trigger_error('');
		$row = mysql_fetch_assoc($result) or trigger_error('');
		return $row['position'];
	}

	/* static */ function getContactsAlphabetically(&$dataset_size, $letter, $offset, $limit = 5)
	{
		$clean_letter = mysql_escape_string($letter);
		$clean_offset = mysql_escape_string($offset);
		$clean_limit = mysql_escape_string($limit);

		// get the total number of contacts
		$result = mysql_query("SELECT COUNT(*) AS Rows FROM aliases WHERE last_name LIKE '{$clean_letter}%'")
			or trigger_error("Could not count the full list of alias records.");
		$row = mysql_fetch_assoc($result);
		$dataset_size = $row['Rows'];

		$sql = "SELECT contacts.*, aliases.last_name AS last_name, aliases.first_name AS first_name, aliases.extra_name AS extra_name, aliases.middle_name AS middle_name
			    FROM aliases LEFT JOIN contacts ON aliases.contact_id=contacts.contact_id 
				WHERE aliases.last_name LIKE '{$clean_letter}%'
			    ORDER BY aliases.last_name, aliases.first_name, aliases.extra_name, aliases.middle_name
			    LIMIT {$clean_offset}, {$clean_limit}";
		$result = mysql_query($sql) or trigger_error();
		return $result;
	}

	/* static */ function getContacts($filter)
	{
		$full_sql = "";
		$sql = "SELECT contacts.*
				FROM aliases 
				LEFT JOIN contacts ON aliases.contact_id=contacts.contact_id 
				WHERE 1";

		if (isset($filter['notes']))
		{
			$sql .= " AND notes LIKE '%{$filter['notes']}%'";
		}

		if (isset($filter['state_id']))
		{
			$sql .= " AND aliases.state_id='{$filter['state_id']}'";
		}

		if (isset($filter['ssn']))
		{
			$sql .= " AND aliases.ssn LIKE '%{$filter['ssn']}%'";
		}

		if (isset($filter['telephone']))
		{
			// Filter using a UNION to improve performance.  See below...
			/*
			$sql .= " AND (phone = '{$filter['telephone']}'
					OR phone_alt = '{$filter['telephone']}')";
			*/
			$full_sql .= "({$sql} AND phone = '{$filter['telephone']}')";
			$full_sql .= " UNION ({$sql} AND phone_alt = '{$filter['telephone']}')";
		}
		
		else 
		{
			$full_sql = $sql;
		}
		
		$full_sql .= " ORDER BY last_name, first_name";
		$result = mysql_query($full_sql) or trigger_error('');
		return $result;
	}


	function getHomePageCalendar()
	{
		global $auth_row;
		$a = array();
		$sql = "SELECT summary, act_time FROM activities WHERE user_id={$auth_row['user_id']} LIMIT 10";
		//$sql = "SELECT summary, act_time FROM activities";
		$result = mysql_query($sql);
		
		while ($row = mysql_fetch_assoc($result)) 
		{
			$a[] = $row;
		}
		
		return $a;
	}
	
	
	/* static */ function getIntakes()
	{
		$result = mysql_query('SELECT intakes.*, contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
			contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
			intake_id, intake_user_id FROM intakes 
			LEFT JOIN contacts ON intakes.client_id=contacts.contact_id
			ORDER BY last_name, first_name') or trigger_error(mysql_error());
		return $result;
	}

	// display a single, case-related activity record in HTML
	/* static */ function htmlCaseNote($contact)
	{
		/* static */ $user_id_menu = null;
		/* static */ $pba_id_menu = null;

		if (is_null($user_id_menu))
		{
			// 'user_id' should, hopefully, be init'ed before this function is called
			$user_id_menu = pikaMisc::fetchStaffArray();
			$pba_id_menu = array();
		}

		$base_url = pl_settings_get('base_url');
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
			/*
			if ($pba_id_menu[$contact['pba_id']])
			{
			$tmpname = $pba_id_menu[$contact['pba_id']] . " - pro bono";
			}

			else
			{
			$tmpname = $contact['pba_id'] . " - pro bono";
			}
			*/
		}

		else
		{
			$tmpname = "No name provided";
		}


		$C .= "{$tmpname}<br/>";

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
		$C .= pl_date_unmogrify($contact["act_date"]) . ' ' . pl_time_unmogrify($contact["act_time"]);
		if (strlen($hours) > 0)
		{
			$C .= " &nbsp; | &nbsp; {$hours}";
		}

		// Brian mod
        $C .= " &nbsp; | &nbsp; </span><a href='{$base_url}/activity.php?act_id={$contact['act_id']}&screen=edit&case_id={$contact['case_id']}'>Edit this record</a>\n";

		// Brian mod
        $C .= '<blockquote>' . "\n";

		if ($contact["summary"])
		{
			$C .= pl_clean_html($contact["summary"]);
			$notes_found = TRUE;
		}

		if ($contact["summary"] && $contact["notes"])
		{
			$C .= "<br/>\n";
		}

		if ($contact["notes"])
		{
			$C .= pl_html_text($contact["notes"]);
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

	/* static */ function htmlRedFlag($message)
	{
		$base_url = pl_settings_get('base_url');
		$C = '';

		$message2 = str_replace(' ', '&nbsp;', $message);

		// Brian mod
        $C .= "\n<span>\n";
		$C .= "<img width=\"16\" height=\"16\" src=\"{$base_url}/images/redflag.gif\" alt=\"red flag\"/>&nbsp;{$message2}</span> &nbsp; &nbsp;\n";

		return $C;
	}

	// Every time this is called, synchronize the directory contents to the metadata.
	// TODO - make sure the case_id for every file matches $case_id.

	
	// Return array of names of installed reports
	function htmlReportList()
	{
		$base_url = pl_settings_get('base_url');
		$dh = opendir('reports');
		$ban_list = array('case_print', 'conflict', 'compen_bill', 'survey', 'index.php');
		$reports = array();
		$html_str = '';

		if (!is_readable('reports'))
		{
			return "No reports found.";
		}

		while ($file = readdir($dh))
		{
			/*
			Ignore hidden files, current and parent directories, any reports on the banned
			list, and any with a dont_list.txt file present.
			*/
			if ($file[0] != '.' && !in_array($file, $ban_list)
			&& !file_exists("reports/{$file}/dont_list.txt"))
			{
				/*
				This is a displayable report.  Build an HTML link for it.  Then put the HTML in an array,
				and sort the array by the report title.
				*/
				$link_html = '';
				$title = '';

				// Determine the title.
				if (file_exists("reports/{$file}/title.txt"))
				{
					$x = file("reports/{$file}/title.txt");
					$title = implode("\n", $x);
					$title = pl_clean_html($title);
				}

				else
				{
					$title = $file;
				}

				// Build the link.
				if (file_exists("reports/{$file}/{$file}-form.php"))
				{
					$link_html = "<li><a href=\"{$base_url}/legacy_report.php?report={$file}\">{$title}</a>\n";
				}

				else
				{
					$link_html = "<li><a href=\"{$base_url}/reports/{$file}/\">{$title}</a>\n";
				}

				// If a description is specified, add it to the link.
				if (file_exists("reports/{$file}/description.txt"))
				{
					$x = file("reports/{$file}/description.txt");
					$description = implode("\n", $x);
					$description = pl_clean_html($description);
					$link_html .= "<br/>\n{$description}\n";
				}

				// The HTML link is now done.  Insert into an array, indexed by title (not file name).
				$reports[$title] = $link_html;
			}
		}

		closedir($dh);
		ksort($reports);


		// Brian mod
        $html_str .= "<ul id=\"all-reports-list\">\n";
		foreach ($reports as $val)
		{
			$html_str .= $val;
		}
		$html_str .= "</ul>\n";

		return $html_str;
	}


	/* static */ function getMatters($user_id = 0)
	{
		if (0 == $user_id)
		{
			trigger_error("");
			die();
		}

		$list_length = 1000;

		/*
		this little hack will save a few fractions of a second on case
		lists w/o filters.  Instead of doing a "COUNT(*)" to determine
		the number of records in the resulting list, it uses "SHOW STATUS
		TABLES" to get the number of records in the 'cases' table.  This
		is of course MySQL-specific.
		*/
		$db_name = pl_settings_get('db_name');
		$result = mysql_query("SELECT COUNT(*) AS Rows FROM cases WHERE matter = '1' AND active_matter = '1'")
		or trigger_error("Count not count all matters records");
		$row = mysql_fetch_assoc($result);
		$row_count = $row['Rows'];


		/*	next, run a query on matter-mode case record, sorting the results and only
		retrieving those records that will be displayed on this screen.
		*/
		// Use UNION to improve performance.
		$sql = '(SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2, cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, 
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\' ' . $sql . " AND cases.user_id = '{$filter["user_id"]}')";
		$sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding, funding1,funding2,funding3,client_id, 
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\' ' . $sql . " AND cases.cocounsel1 = '{$filter["user_id"]}')";
		$sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, 
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\' ' . $sql . " AND cases.cocounsel2 = '{$filter["user_id"]}')";
		$sql .= ' UNION (SELECT case_id, number, problem, status, cases.user_id, cocounsel1,
				cocounsel2,cocounsel3, office, open_date, close_date, funding,funding1,funding2,funding3, client_id, 
				contacts.first_name as \'contacts.first_name\', contacts.middle_name AS \'contacts.middle_name\',
				contacts.last_name AS \'contacts.last_name\', contacts.extra_name AS \'contacts.extra_name\', 
				area_code, phone, users.first_name as \'users.first_name\', 
				users.middle_name as \'users.middle_name\',	users.last_name as \'users.last_name\',
				users.extra_name as \'users.extra_name\' ' . $sql . " AND cases.cocounsel3 = '{$filter["user_id"]}')";
		$sql .= " FROM cases
			LEFT JOIN contacts ON cases.client_id=contacts.contact_id
			LEFT JOIN users ON cases.user_id=users.user_id
			WHERE matter = '1' AND active_matter = '1'";

		$sql .= " LIMIT {$list_length}";
		$result = mysql_query($sql) or trigger_error(mysql_error());
		return $result;
	}
	
	
	/* static */ function getMotdEntries()
	{
		$result = mysql_query('SELECT motd.*, users.* FROM motd LEFT JOIN users ON motd.user_id = users.user_id');
		return $result;
	}
	
	
	/* static */ function getMotd()
	{
		$a = array();
		$result = mysql_query('SELECT motd.*, users.* FROM motd LEFT JOIN users ON motd.user_id = users.user_id');
		
		while ($row = mysql_fetch_assoc($result)) 
		{
			$a[] = $row;
		}
		
		if (sizeof($a) == 0) 
		{
			$a[] = array('content' => "Welcome to the Pika Case Management System!");
		}
		
		return $a;
	}
	
	
	function getMegaReports()
	{
		$a = array();
		$result = mysql_query("SELECT * FROM megareports ORDER BY report_title ASC");
		
		while ($row = mysql_fetch_assoc($result)) 
		{
			$a[] = $row;
		}
		
		return $a;
	}
	
	function getStuff()
	{
		return true;
	}


	/* static */ function htmlContactList($mode = 'contacts')
	{
		require_once('plFlexList.php');
		
		$case_id = null;
		$relation_code = null;
		
		$filter = array();
		$filter['first_name'] = pl_grab_get('first_name');
		$filter['middle_name'] = pl_grab_get('middle_name');
		$filter['last_name'] = pl_grab_get('last_name');
		$filter['extra_name'] = pl_grab_get('extra_name');
		$filter['birth_date'] = pl_grab_get('birth_date', null, 'date');
		$filter['ssn'] = pl_grab_get('ssn');
		$filter['area_code'] = pl_grab_get('area_code');
		$filter['phone'] = pl_grab_get('phone');
		// These are not used for SQL filtering, but are needed on the pager's get_url.
		$filter['case_id'] = pl_grab_get('case_id');
		$filter['number'] = pl_grab_get('number');
		$filter['relation_code'] = pl_grab_get('relation_code');
		

		$content_t = $filter;
		$content_t['search_list'] = '';
		$content_t['ab_list'] = '';
		$content_t['birth_date'] = pl_date_unmogrify($content_t['birth_date']);
		/* The offset specified by the user if they viewed this page
		by clicking on the pager from a previous page.
		*/
		$offset = pl_grab_get('offset');
		$search_performed = false;
		$matches_found = 0;
		$base_url = pl_settings_get('base_url');
		$dmode = 'search'; // Controls whether search or browse results are displayed.
		$total_records = 0;
		$screen = pl_grab_get('screen');
		
		if (strlen(pl_grab_get('dmodeb')) > 0) 
		{
			$dmode = 'browse';
		}
		
		switch ($mode)
		{
			case 'intake':
			$pager_url = 'intake2.php';
			$template_file = 'subtemplates/intake_contact_list.html';
			break;
			
			case 'contacts':
			default:
			$pager_url = 'addressbook.php';
			$template_file = 'subtemplates/contact_list.html';
			break;
			
			case 'case_contact':
			default:
			$pager_url = 'case_contact.php';
			$template_file = 'subtemplates/case_contact_list.html';
			$case_id = pl_grab_get('case_id');
			$relation_code = pl_grab_get('relation_code');
			break;
		}

		//$phon_str = '';
		//$phone_str = '';
		//$ssn_str = '';
		//$alpha_str = '';
		
		// Look for contacts that match the search parameters.
		if (strlen($filter['last_name']) > 0)
		{
			$search_performed = true;
			
			if ('search' == $dmode) 
			{
				
			
			// PHONETIC MATCHES TABLE
			$phonetic_table = new plFlexList();
			$phonetic_table->template_file = $template_file;

			$result = pikaMisc::getContactsPhonetically($filter['last_name'], $filter['first_name']);

			$i = 1;
			$matches_found = 0;
			while ($row = mysql_fetch_assoc($result))
			{
				$row['row_class'] = $i;
				if ($i > 1)
				{
					$i = 1;
				}
				else
				{
					$i++;
				}

				$matches_found++;
				
				$row['arrow_img'] = 0;
				$row['client_name'] = pl_text_name($row);
				$row['client_phone'] = pl_text_phone($row);
				$row['birth_date'] = pl_date_unmogrify($row['birth_date']);
				$row['case_id'] = $case_id;
				$row['relation_code'] = $relation_code;
				$row['screen'] = $screen;
				$phonetic_table->addRow($row);


				//$phon_str .= pl_template('subtemplates/intake.html', $row, 'contacts');
			}
			
			if ($matches_found > 0) 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>Phonetic Matches</h3>\n" . $phonetic_table->draw();
			}
			
			else 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>Phonetic Matches</h3>\n<p><em>No matches found</em></p>\n";
			}
			//$content_t['flex_header'] .= "<h2>Phonetic Matches</h2>\n{$phon_str}\n";
			}




			if ('browse' == $dmode) 
			{
			
			
			// ADDRESS BOOK MATCHES TABLE
			$contacts_table = new plFlexList();
			$contacts_table->template_file = $template_file;
			
			$filter['dmodeb'] = true;

			// Determine the offset where the list should start, if the user did not specify.
			$specified_offset = $offset;
			$name_offset = pikaMisc::getContactOffset($filter['last_name'], $filter['first_name'], $filter['middle_name']);
			
			if (is_numeric($specified_offset))
			{
				$arrow_offset = $name_offset - $specified_offset;
				$sql_offset = $specified_offset;
				
			}
			
			else 
			{
				if ($name_offset < 4)
				{
					$arrow_offset = $name_offset;
					$sql_offset = 0;
				}
	
				else
				{
					$sql_offset = $name_offset - 4;
					$arrow_offset = 4;
				}
			}
			
			$address_table_size = $_SESSION['paging'];

			$result = pikaMisc::getContactsAlphabetically($total_records, $filter['last_name'][0], $sql_offset, $address_table_size);
			$contacts_table->total_records = $total_records;
			$contacts_table->page_offset = $sql_offset;
			$contacts_table->records_per_page = $address_table_size;
			$contacts_table->table_url = "{$base_url}/{$pager_url}/";
			$contacts_table->setFilterParams($filter);

			$i = 1;
			$j = 0;
			$matches_found = 0;
			while ($row = mysql_fetch_assoc($result))
			{
				$row['row_class'] = $i;
				
				if ($i > 1)
				{
					$i = 1;
				}
				
				else
				{
					$i++;
				}
				
				if ($j == $arrow_offset)
				{
					// Brian mod
                    $row['arrow_img'] = 16;
				}
				
				else
				{
					$row['arrow_img'] = 0;
				}

				$matches_found++;
				$j++;

				$row['client_name'] = pl_text_name($row);
				$row['client_phone'] = pl_text_phone($row);
				$row['birth_date'] = pl_date_unmogrify($row['birth_date']);
				$row['case_id'] = $case_id;
				$row['relation_code'] = $relation_code;
				$row['screen'] = $screen;
				$contacts_table->addRow($row);


				//$alpha_str .= pl_template('subtemplates/intake.html', $row, 'contacts');
			}

			if ($matches_found > 0) 
			{
				// Brian mod
                $content_t['ab_list'] .= "<h3>Contact Matches</h3>\n" . $contacts_table->draw();
			}
			
			else 
			{
				// Brian mod
                $content_t['ab_list'] .= "<h3>Contact Matches</h3>\n<p><em>No matches found</em></p>\n";
			}
			//$content_t['flex_header'] .= "<h2>Address Book Matches</h2>\n{$alpha_str}\n";
			}
		}

		if ('search' == $dmode && strlen($filter['ssn']) > 0)
		{
			$search_performed = true;

			// SSN MATCHES TABLE
			$phonetic_table = new plFlexList();
			$phonetic_table->template_file = $template_file;

			$result = pikaMisc::getContacts(array('ssn' => $filter['ssn']));

			$i = 1;
			$matches_found = 0;
			while ($row = mysql_fetch_assoc($result))
			{
				$row['row_class'] = $i;
				if ($i > 1)
				{
					$i = 1;
				}
				else
				{
					$i++;
				}

				$matches_found++;
				
				$row['arrow_img'] = 0;
				$row['client_name'] = pl_text_name($row);
				$row['client_phone'] = pl_text_phone($row);
				$row['birth_date'] = pl_date_unmogrify($row['birth_date']);
				$row['case_id'] = $case_id;
				$row['relation_code'] = $relation_code;
				$row['screen'] = $screen;
				$phonetic_table->addRow($row);
			}

			if ($matches_found > 0) 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>SSN Matches</h3>\n" . $phonetic_table->draw();
			}
			
			else 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>SSN Matches</h3>\n<p><em>No matches found.</em></p>\n";
			}
		}

		if ('search' == $dmode && strlen($filter['phone']) > 0)
		{
			$search_performed = true;

			// TELEPHONE MATCHES
			$phonetic_table = new plFlexList();
			$phonetic_table->template_file = $template_file;

			$result = pikaMisc::getContacts(array('telephone' => $filter['phone']));

			$i = 1;
			$matches_found = 0;
			while ($row = mysql_fetch_assoc($result))
			{
				$row['row_class'] = $i;
				if ($i > 1)
				{
					$i = 1;
				}
				else
				{
					$i++;
				}

				$matches_found++;
				
				$row['arrow_img'] = 0;
				$row['client_name'] = pl_text_name($row);
				$row['client_phone'] = pl_text_phone($row);
				$row['birth_date'] = pl_date_unmogrify($row['birth_date']);
				$row['case_id'] = $case_id;
				$row['relation_code'] = $relation_code;
				$row['screen'] = $screen;
				$phonetic_table->addRow($row);
			}

			if ($matches_found > 0) 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>Telephone Matches</h3>\n" . $phonetic_table->draw();
			}
			
			else 
			{
				// Brian mod
                $content_t['search_list'] .= "<h3>Telephone Matches</h3>\n<p><em>No matches found.</em></p>\n";
			}
		}

		if (true == $search_performed && 'intake' == $mode)
		{
			$content_t['intake_text'] = pl_template($template_file, $content_t, 'intake_text');
		}

		if (true == $search_performed && ('intake' == $mode || 'case_contact' == $mode))
		{
			$content_t['case_id'] = $case_id;
			$content_t['relation_code'] = $relation_code;
			$content_t['screen'] = $screen;
			$content_t['new_contact_link'] = pl_template($template_file, $content_t, 'new_contact_link');
		}
		
		return $content_t;
	}
	
	function getCompens($case_id)
	{
		$sql = "SELECT compens.*
						FROM compens
						WHERE compens.case_id=$case_id";
		return mysql_query($sql);
	}
}
