# lsnc-google-api #
## Code models for integrating core Google Apps with the Pika case management system. ##

Project Home
<a href='/p/lsnc-google-api/downloads/list'>Downloads</a>
<a href='/p/lsnc-google-api/w/list'>Wiki</a>
<a href='/p/lsnc-google-api/issues/list'>Issues</a>
<a href='/p/lsnc-google-api/source/checkout'>Source</a>
# Google Apps API Readme #
## INSTALLATION INSTRUCTIONS ##
  1. Create Google account with calendar read/write proxy access to all calendars. Login to your Google Apps admin page (http://www.google.com/a/domainname.com) and go to the Calendar settings page: https://www.google.com/calendar/render?settings=0.  Click on &quot;Calendars&quot; tab and modify all the calendars you want to modify via proxy by clicking on &quot;Shared: Edit settings.&quot;
  1. Create RSA Certificate (with PEM format). The included sample script /keys/createcert.sh will work in a Linux or Cygwin environment. (http://code.google.com/googleapps/domain/articles/sso-keygen.html#OpenSSL)
  1. Install RSA certificate on Google (https://www.google.com/a/cpanel/yourdomainname.com/SetupOAuth). Upload your PEM formated certificate using the file browser next to &quot;X.509 certificate.&quot;
  1. Change the RSAKEY path in /pika/home/pika/app/lib/pikaGoogleSync.php to match your server configuration. (i.e. public $RSAKEY = &quot;/var/www/keys/rsakey.pem&quot;;)
  1. Change the &quot;OAuth consumer key&quot; in /pika/app/lib/pikaGoogleSync.php (i.e. private $OAUTHKEY = &quot;yourdomainname.com&quot;) to match your configuration
  1. Modify the $server\_timezone\_offset variable in /pika/app/lib/pikaGoogleSync.php to match your location (i.e. public $server\_timezone\_offset = &quot;-05&quot;;)
  1. Change all the paths in /google-gadgets/pika.xml (i.e. &quot;http://yourdomainname.com&quot;) to match your server location
  1. Change the &quot;Add Tickler URL&quot; in /google-gadgets/pika.xml (http://yourdomainname.com/pika/activity.php?screen=compose&amp;act_type=K) to match your Pika URL
  1. Upload files to server
  1. Modify your Pika database using this script: /sql/install.sql
  1. Manually run /pika/services/google-queue.php to authenticate the script with Google. This is the script moves content from Pika to your Google calendar in batches.
  1. Install a chron job to execute /pika/services/google-queue.php as your chosen interval.
  1. To install your Google Calendar Gadget, login to your Google account and use this link: https://www.google.com/calendar/render?gadgeturl=http://yourdomainname.com/google_gadgets/pika.xml

## DATABASE MODIFICATIONS ##
/pika/home/sql/install.sql
## AUTHENTICATION ##
/pika/home/keys/createcert.sh
## GOOGLE GADGET ##
/pika/home/google-gadgets/pika.xml
/pika/home/google-gadgets/images/logo.png
/pika/home/google-gadgets/images/busyLoader.gif
/pika/home/google-gadgets/js/shindig\_popup.js
/pika/home/google-gadgets/js/html\_funcs.min.js

## ZEND FRAMEWORK ##
/pika/home/pika/app/extralib/Zend/Date.php
/pika/home/pika/app/extralib/Zend/Debug.php
/pika/home/pika/app/extralib/Zend/Gdata.php
/pika/home/pika/app/extralib/Zend/Loader.php
/pika/home/pika/app/extralib/Zend/Oauth.php
/pika/home/pika/app/extralib/Zend/Crypt/**/pika/home/pika/app/extralib/Zend/Date/**
/pika/home/pika/app/extralib/Zend/Gdata/**/pika/home/pika/app/extralib/Zend/Loader/**
/pika/home/pika/app/extralib/Zend/Oauth/