<?php
//session_start();
//unset($_SESSION['sessionToken']);
/**********************************************/
/* Google Calendar Module                     */
/*                                            */
/* Michael Cizmar + Associates Ltd. (C) 2011  */
/* written by Richard Loerzel			      */
/* http://www.mcplusa.com		   		      */
/**********************************************/

$obj = new pikaGoogleLib();

//$obj->scope = "http://www.google.com/calendar/feeds/";
//$obj->init();
//$obj->createEvent ();

$obj->clientConnect();
?>