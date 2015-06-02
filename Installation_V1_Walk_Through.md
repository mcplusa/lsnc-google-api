<!DOCTYPE html>


&lt;html&gt;




&lt;head&gt;


> 

&lt;link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico"&gt;




> 

&lt;script type="text/javascript"&gt;






> var codesite\_token = "7b47841ff39e51f1b38f3b9f47e848d2";


> var CS\_env = {"profileUrl":["/u/@UBBfRl1WBBVGWQh8GQ%3D%3D/"],"token":"7b47841ff39e51f1b38f3b9f47e848d2","assetHostPath":"http://www.gstatic.com/codesite/ph","domainName":null,"assetVersionPath":"http://www.gstatic.com/codesite/ph/274877064420089206","projectHomeUrl":"/p/lsnc-google-api","relativeBaseUrl":"","projectName":"lsnc-google-api","loggedInUserEmail":"michael.cizmar@mcplusa.com"};
> var _gaq =_gaq || [.md](.md);
> _gaq.push(
> ['siteTracker._setAccount', 'UA-18071-1'],
> ['siteTracker._trackPageview']);_

> _gaq.push(
> ['projectTracker._setAccount', 'UA-19271393-4'],
> ['projectTracker._trackPageview']);_


> 

&lt;/script&gt;




> 

&lt;title&gt;

Installation\_V1\_Walk\_Through.wiki -
> lsnc-google-api -


> Code models for integrating core Google Apps with the Pika case management system. - Google Project Hosting
> 

&lt;/title&gt;


> 

&lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8" &gt;


> 

&lt;meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" &gt;



> 

&lt;meta name="ROBOTS" content="NOARCHIVE"&gt;



> 

&lt;link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/274877064420089206/css/core.css"&gt;



> 

&lt;link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/274877064420089206/css/ph\_detail.css" &gt;




> 

&lt;link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/274877064420089206/css/d\_sb.css" &gt;





<!--[IE](if.md)>
> 

&lt;link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/274877064420089206/css/d\_ie.css" &gt;


<![endif](endif.md)-->
> 

&lt;style type="text/css"&gt;


> .menuIcon.off { background: no-repeat url(![http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif](http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif)) 0 -42px }
> .menuIcon.on { background: no-repeat url(![http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif](http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif)) 0 -28px }
> .menuIcon.down { background: no-repeat url(![http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif](http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif)) 0 0; }



> tr.inline\_comment {
> background: #fff;
> vertical-align: top;
> }
> div.draft, div.published {
> padding: .3em;
> border: 1px solid #999;
> margin-bottom: .1em;
> font-family: arial, sans-serif;
> max-width: 60em;
> }
> div.draft {
> background: #ffa;
> }
> div.published {
> background: #e5ecf9;
> }
> div.published .body, div.draft .body {
> padding: .5em .1em .1em .1em;
> max-width: 60em;
> white-space: pre-wrap;
> white-space: -moz-pre-wrap;
> white-space: -pre-wrap;
> white-space: -o-pre-wrap;
> word-wrap: break-word;
> font-size: 1em;
> }
> div.draft .actions {
> margin-left: 1em;
> font-size: 90%;
> }
> div.draft form {
> padding: .5em .5em .5em 0;
> }
> div.draft textarea, div.published textarea {
> width: 95%;
> height: 10em;
> font-family: arial, sans-serif;
> margin-bottom: .5em;
> }


> .nocursor, .nocursor td, .cursor\_hidden, .cursor\_hidden td {
> background-color: white;
> height: 2px;
> }
> .cursor, .cursor td {
> background-color: darkblue;
> height: 2px;
> display: '';
> }


.list {
> border: 1px solid white;
> border-bottom: 0;
}


> 

&lt;/style&gt;




Unknown end tag for &lt;/head&gt;




&lt;body class="t4"&gt;




&lt;script type="text/javascript"&gt;


> (function() {
> var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
> ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
> (document.getElementsByTagName('head')[0](0.md) || document.getElementsByTagName('body')[0](0.md)).appendChild(ga);
> })();


&lt;/script&gt;


<div></li></ul>

<blockquote><div></blockquote>


> <span></li></ul>


<blockquote><b>michael.cizmar@mcplusa.com</b>


> | <a href="/u/@UBBfRl1WBBVGWQh8GQ%3D%3D/" id="projects-dropdown" onclick="return false;"
> ><u>My favorites</u> 

&lt;small&gt;

&#9660;

&lt;/small&gt;



Unknown end tag for &lt;/a&gt;


> | <a href="/u/@UBBfRl1WBBVGWQh8GQ%3D%3D/" onclick="_CS\_click('/gb/ph/profile');"
> title="Profile, Updates, and Settings"
> >_<u>Profile</u>

Unknown end tag for &lt;/a&gt;


> | <a href="https://www.google.com/accounts/Logout?continue=http%3A%2F%2Fcode.google.com%2Fp%2Flsnc-google-api%2Fsource%2Fbrowse%2Fwiki%2FInstallation_V1_Walk_Through.wiki"
> onclick="_CS\_click('/gb/ph/signout');"
> >_<u>Sign out</u>

Unknown end tag for &lt;/a&gt;



> </span></blockquote>

<blockquote></div></blockquote>

<blockquote><div></div>
<div></div></blockquote>


<blockquote><div></div>
<!--<a href='if.md'>lte IE 7</a>><br>
<div>
Your version of Internet Explorer is not supported. Try a browser that<br>
contributes to open source, such as <a href='http://www.firefox.com'>Firefox</a>,<br>
<a href='http://www.google.com/chrome'>Google Chrome</a>, or<br>
<a href='http://code.google.com/chrome/chromeframe/'>Google Chrome Frame</a>.<br>
</div>
<!<a href='endif.md'>endif</a>--></blockquote>




<blockquote><table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0"<br>
itemscope itemtype="<a href='http://schema.org/CreativeWork'>http://schema.org/CreativeWork</a>"><br>
<tr></blockquote>

<blockquote><td>
> 

&lt;link itemprop="url" href="/p/lsnc-google-api"&gt;


> <a href='/p/lsnc-google-api/'></blockquote>


> <img src="/p/lsnc-google-api/logo?cct=1316232115"
> alt="Logo" itemprop="image">

> </a>
<blockquote>

Unknown end tag for &lt;/td&gt;



> <td></blockquote>

> <div>
<blockquote><a href='/p/lsnc-google-api/'><span>lsnc-google-api</span></a>
</div></blockquote>

> <div>
<blockquote><a id="project_summary_link"<br>
href="/p/lsnc-google-api/"><span>Code models for integrating core Google Apps with the Pika case management system.</span>

Unknown end tag for </a>

</blockquote>

<blockquote></div></blockquote>


> </td>
<blockquote><td></blockquote>

> 

&lt;form action="/hosting/search"&gt;


> 

&lt;input size="30" name="q" value="" type="text"&gt;



> 

&lt;input type="submit" name="projectsearch" value="Search projects" &gt;


> 

Unknown end tag for &lt;/form&gt;



> 

Unknown end tag for &lt;/tr&gt;


> 

Unknown end tag for &lt;/table&gt;





Unknown end tag for &lt;/div&gt;




<div>
<blockquote><a href='/p/lsnc-google-api/'>Project&nbsp;Home</a></blockquote>




<blockquote><a href='/p/lsnc-google-api/downloads/list'>Downloads</a></blockquote>





<blockquote><a href='/p/lsnc-google-api/w/list'>Wiki</a></blockquote>





<blockquote><a href="/p/lsnc-google-api/issues/list"<br>
class="tab ">Issues<br>
<br>
Unknown end tag for </a><br>
<br>
</blockquote>





<blockquote><a href="/p/lsnc-google-api/source/checkout"<br>
class="tab active">Source<br>
<br>
Unknown end tag for </a><br>
<br>
</blockquote>


<blockquote><a href="/p/lsnc-google-api/admin"<br>
class="tab inactive">Administer<br>
<br>
Unknown end tag for </a><br>
<br>
</blockquote>




<blockquote><div>
</div>
<table cellpadding='0' width='100%' align='center' border='0' cellspacing='0'>
<tr></blockquote>






<blockquote><td>
<div>
<div></blockquote>




<blockquote><span><a href='/p/lsnc-google-api/source/checkout'>Checkout</a></span> &nbsp;<br>
<span><a href='/p/lsnc-google-api/source/browse/'>Browse</a></span> &nbsp;<br>
<span><a href='/p/lsnc-google-api/source/list'>Changes</a></span> &nbsp;</blockquote>

<blockquote><form action="<a href='http://www.google.com/codesearch'>http://www.google.com/codesearch</a>" method="get" style="display:inline"<br>
onsubmit="document.getElementById('codesearchq').value = document.getElementById('origq').value + ' package:<a href='http://lsnc-google-api\\.googlecode\\.com'>http://lsnc-google-api\\.googlecode\\.com</a>'"><br>
<br>
<br>
<input type="hidden" name="q" id="codesearchq" value=""><br>
<br>
<br>
<br>
<br>
<input type="text" maxlength="2048" size="38" id="origq" name="origq" value="" title="Google Code Search" style="font-size:92%"><br>
<br>
&nbsp;<br>
<br>
<input type="submit" value="Search Trunk" name="btnG" style="font-size:92%"><br>
<br>
</blockquote>

<blockquote>&nbsp;<br>
</blockquote><blockquote><a href='/p/lsnc-google-api/issues/entry?show=review&former=sourcelist'>Request code review</a></blockquote>


<blockquote>

Unknown end tag for </form>

<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>

<blockquote>

Unknown end tag for </td>

</blockquote>



<blockquote><td align='right' valign='top'></td>
<br>
<br>
Unknown end tag for </tr><br>
<br>
<br>
<br>
<br>
Unknown end tag for </table><br>
<br>
</blockquote>


<br>
<br>
<script type="text/javascript"><br>
<br>
<br>
<blockquote>var cancelBubble = false;<br>
function <i>go(url) { document.location = url; }<br>
<br>
<br>
</script><br>
<br>
<br>
<div id="maincol"</blockquote></i>

><br>
<br>
<br>
<!-- IE --><br>
<br>
<br>
<br>
<br>
<div>
<div>
<br>
<br>
<style type="text/css"><br>
<br>
<br>
<ol><li>ile_flipper { white-space: nowrap; padding-right: 2em; }<br>
</li><li>ile_flipper.hidden { display: none; }<br>
</li><li>ile_flipper .pagelink { color: #0000CC; text-decoration: underline; }<br>
</li><li>ile_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }<br>
<br>
<br>
</style><br>
<br>
<br>
<table id="nav_and_rev" class="list"<br>
</li></ol><blockquote>cellpadding="0" cellspacing="0" width="100%"><br>
<tr></blockquote>

<blockquote><td width='33%'>
<strong>Source path:&nbsp;</strong>
<span></blockquote>

<blockquote><a href='/p/lsnc-google-api/source/browse/'>svn</a>/&nbsp;</span>
<span><a href='/p/lsnc-google-api/source/browse/wiki/'>wiki</a><span>/&nbsp;</span>Installation_V1_Walk_Through.wiki</span></blockquote>



<blockquote></td></blockquote>


<blockquote><td width='33%' align='center'>
<a href="/p/lsnc-google-api/source/browse/wiki/Installation_V1_Walk_Through.wiki?edit=1"<br>
><img src="<img src='http://www.gstatic.com/codesite/ph/images/pencil-y14.png' />"<br>
class="edit_icon">Edit file<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
</td></blockquote>


<blockquote><td width='33%' align='right'>
<table cellpadding='0' cellspacing='0'><tr></blockquote>


<blockquote><td>
<ul></blockquote>

<blockquote><li><a href='/p/lsnc-google-api/source/browse/wiki/Installation_V1_Walk_Through.wiki?r=8' title='Previous'>&lsaquo;<a href='https://code.google.com/p/lsnc-google-api/source/detail?r=8'>r8</a></a></li></blockquote>

<blockquote></ul>
</td></blockquote>

<blockquote><td><b><a href='https://code.google.com/p/lsnc-google-api/source/detail?r=15'>r15</a></b></td></blockquote>

<blockquote></tr></table>
</td>
</tr>
<br>
<br>
Unknown end tag for </table><br>
<br>
</blockquote>

<div>



<br>
<br>
<style type="text/css"><br>
<br>
<br>
.undermouse span {<br>
<blockquote>background-image: url(<a href='http://www.gstatic.com/codesite/ph/images/comments.gif);'>http://www.gstatic.com/codesite/ph/images/comments.gif);</a> }<br>
<br>
<br>
</style><br>
<br>
<br>
<table class="opened" id="review_comment_area"<br>
onmouseout="gutterOut()"><tr>
<td>
<pre><table width="100%"><tr class="nocursor"><td><br>
<br>
Unknown end tag for </td><br>
<br>
<br>
<br>
Unknown end tag for </tr><br>
<br>
<br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn15_1"<br>
<br>
onmouseover="gutterOver(1)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',1);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="1"><a href="#1">1<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_2"<br>
<br>
onmouseover="gutterOver(2)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',2);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="2"><a href="#2">2<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_3"<br>
<br>
onmouseover="gutterOver(3)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',3);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="3"><a href="#3">3<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_4"<br>
<br>
onmouseover="gutterOver(4)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',4);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="4"><a href="#4">4<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_5"<br>
<br>
onmouseover="gutterOver(5)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',5);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="5"><a href="#5">5<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_6"<br>
<br>
onmouseover="gutterOver(6)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',6);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="6"><a href="#6">6<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_7"<br>
<br>
onmouseover="gutterOver(7)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',7);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="7"><a href="#7">7<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_8"<br>
<br>
onmouseover="gutterOver(8)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',8);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="8"><a href="#8">8<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_9"<br>
<br>
onmouseover="gutterOver(9)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',9);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="9"><a href="#9">9<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_10"<br>
<br>
onmouseover="gutterOver(10)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',10);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="10"><a href="#10">10<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_11"<br>
<br>
onmouseover="gutterOver(11)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',11);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="11"><a href="#11">11<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_12"<br>
<br>
onmouseover="gutterOver(12)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',12);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="12"><a href="#12">12<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_13"<br>
<br>
onmouseover="gutterOver(13)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',13);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="13"><a href="#13">13<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_14"<br>
<br>
onmouseover="gutterOver(14)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',14);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="14"><a href="#14">14<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_15"<br>
<br>
onmouseover="gutterOver(15)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',15);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="15"><a href="#15">15<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_16"<br>
<br>
onmouseover="gutterOver(16)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',16);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="16"><a href="#16">16<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_17"<br>
<br>
onmouseover="gutterOver(17)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',17);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="17"><a href="#17">17<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_18"<br>
<br>
onmouseover="gutterOver(18)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',18);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="18"><a href="#18">18<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_19"<br>
<br>
onmouseover="gutterOver(19)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',19);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="19"><a href="#19">19<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_20"<br>
<br>
onmouseover="gutterOver(20)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',20);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="20"><a href="#20">20<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_21"<br>
<br>
onmouseover="gutterOver(21)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',21);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="21"><a href="#21">21<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_22"<br>
<br>
onmouseover="gutterOver(22)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',22);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="22"><a href="#22">22<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_23"<br>
<br>
onmouseover="gutterOver(23)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',23);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="23"><a href="#23">23<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_24"<br>
<br>
onmouseover="gutterOver(24)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',24);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="24"><a href="#24">24<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_25"<br>
<br>
onmouseover="gutterOver(25)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',25);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="25"><a href="#25">25<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_26"<br>
<br>
onmouseover="gutterOver(26)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',26);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="26"><a href="#26">26<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_27"<br>
<br>
onmouseover="gutterOver(27)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',27);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="27"><a href="#27">27<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_28"<br>
<br>
onmouseover="gutterOver(28)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',28);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="28"><a href="#28">28<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_29"<br>
<br>
onmouseover="gutterOver(29)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',29);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="29"><a href="#29">29<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_30"<br>
<br>
onmouseover="gutterOver(30)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',30);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="30"><a href="#30">30<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_31"<br>
<br>
onmouseover="gutterOver(31)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',31);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="31"><a href="#31">31<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_32"<br>
<br>
onmouseover="gutterOver(32)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',32);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="32"><a href="#32">32<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_33"<br>
<br>
onmouseover="gutterOver(33)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',33);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="33"><a href="#33">33<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_34"<br>
<br>
onmouseover="gutterOver(34)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',34);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="34"><a href="#34">34<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_35"<br>
<br>
onmouseover="gutterOver(35)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',35);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="35"><a href="#35">35<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_36"<br>
<br>
onmouseover="gutterOver(36)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',36);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="36"><a href="#36">36<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_37"<br>
<br>
onmouseover="gutterOver(37)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',37);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="37"><a href="#37">37<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_38"<br>
<br>
onmouseover="gutterOver(38)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',38);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="38"><a href="#38">38<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_39"<br>
<br>
onmouseover="gutterOver(39)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',39);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="39"><a href="#39">39<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_40"<br>
<br>
onmouseover="gutterOver(40)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',40);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="40"><a href="#40">40<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_41"<br>
<br>
onmouseover="gutterOver(41)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',41);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="41"><a href="#41">41<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_42"<br>
<br>
onmouseover="gutterOver(42)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',42);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="42"><a href="#42">42<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_43"<br>
<br>
onmouseover="gutterOver(43)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',43);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="43"><a href="#43">43<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_44"<br>
<br>
onmouseover="gutterOver(44)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',44);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="44"><a href="#44">44<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_45"<br>
<br>
onmouseover="gutterOver(45)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',45);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="45"><a href="#45">45<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_46"<br>
<br>
onmouseover="gutterOver(46)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',46);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="46"><a href="#46">46<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_47"<br>
<br>
onmouseover="gutterOver(47)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',47);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="47"><a href="#47">47<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_48"<br>
<br>
onmouseover="gutterOver(48)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',48);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="48"><a href="#48">48<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_49"<br>
<br>
onmouseover="gutterOver(49)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',49);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="49"><a href="#49">49<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_50"<br>
<br>
onmouseover="gutterOver(50)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',50);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="50"><a href="#50">50<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_51"<br>
<br>
onmouseover="gutterOver(51)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',51);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="51"><a href="#51">51<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_52"<br>
<br>
onmouseover="gutterOver(52)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',52);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="52"><a href="#52">52<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_53"<br>
<br>
onmouseover="gutterOver(53)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',53);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="53"><a href="#53">53<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_54"<br>
<br>
onmouseover="gutterOver(54)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',54);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="54"><a href="#54">54<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_55"<br>
<br>
onmouseover="gutterOver(55)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',55);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="55"><a href="#55">55<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_56"<br>
<br>
onmouseover="gutterOver(56)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',56);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="56"><a href="#56">56<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_57"<br>
<br>
onmouseover="gutterOver(57)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',57);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="57"><a href="#57">57<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_58"<br>
<br>
onmouseover="gutterOver(58)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',58);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="58"><a href="#58">58<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_59"<br>
<br>
onmouseover="gutterOver(59)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',59);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="59"><a href="#59">59<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_60"<br>
<br>
onmouseover="gutterOver(60)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',60);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="60"><a href="#60">60<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_61"<br>
<br>
onmouseover="gutterOver(61)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',61);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="61"><a href="#61">61<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_62"<br>
<br>
onmouseover="gutterOver(62)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',62);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="62"><a href="#62">62<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_63"<br>
<br>
onmouseover="gutterOver(63)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',63);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="63"><a href="#63">63<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_64"<br>
<br>
onmouseover="gutterOver(64)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',64);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="64"><a href="#64">64<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_65"<br>
<br>
onmouseover="gutterOver(65)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',65);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="65"><a href="#65">65<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_66"<br>
<br>
onmouseover="gutterOver(66)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',66);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="66"><a href="#66">66<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_67"<br>
<br>
onmouseover="gutterOver(67)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',67);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="67"><a href="#67">67<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_68"<br>
<br>
onmouseover="gutterOver(68)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',68);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="68"><a href="#68">68<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_69"<br>
<br>
onmouseover="gutterOver(69)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',69);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="69"><a href="#69">69<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_70"<br>
<br>
onmouseover="gutterOver(70)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',70);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="70"><a href="#70">70<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_71"<br>
<br>
onmouseover="gutterOver(71)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',71);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="71"><a href="#71">71<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_72"<br>
<br>
onmouseover="gutterOver(72)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',72);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="72"><a href="#72">72<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_73"<br>
<br>
onmouseover="gutterOver(73)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',73);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="73"><a href="#73">73<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr id="gr_svn15_74"<br>
<br>
onmouseover="gutterOver(74)"<br>
<br>
><td><span title="Add comment" onclick="codereviews.startEdit('svn15',74);">&nbsp;</span<br>
><br>
<br>
Unknown end tag for </td><br>
<br>
<td id="74"><a href="#74">74<br>
<br>
Unknown end tag for </a><br>
<br>
<br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
<pre><table width="100%"><tr class="nocursor"><td><br>
<br>
Unknown end tag for </td><br>
<br>
<br>
<br>
Unknown end tag for </tr><br>
<br>
<br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
</td>
<td>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td><br>
<br>
Unknown end tag for </td><br>
<br>
<br>
<br>
Unknown end tag for </tr><br>
<br>
<br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
<pre><table id="src_table_0"><tr<br>
id=sl_svn15_1<br>
<br>
onmouseover="gutterOver(1)"<br>
<br>
><td class="source">#summary Realtime edited install<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_2<br>
<br>
onmouseover="gutterOver(2)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_3<br>
<br>
onmouseover="gutterOver(3)"<br>
<br>
><td class="source">= Introduction =<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_4<br>
<br>
onmouseover="gutterOver(4)"<br>
<br>
><td class="source">The following notes were taken while doing a fresh install of the application. End result was a successful install<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_5<br>
<br>
onmouseover="gutterOver(5)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_6<br>
<br>
onmouseover="gutterOver(6)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_7<br>
<br>
onmouseover="gutterOver(7)"<br>
<br>
><td class="source">= Details =<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_8<br>
<br>
onmouseover="gutterOver(8)"<br>
<br>
><td class="source">1.	Download pika_gadget_v1.zip and extract<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_9<br>
<br>
onmouseover="gutterOver(9)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_10<br>
<br>
onmouseover="gutterOver(10)"<br>
<br>
><td class="source">2.	Open and read readme.txt<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_11<br>
<br>
onmouseover="gutterOver(11)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_12<br>
<br>
onmouseover="gutterOver(12)"<br>
<br>
><td class="source">3. 	Download missing install.sql script<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_13<br>
<br>
onmouseover="gutterOver(13)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_14<br>
<br>
onmouseover="gutterOver(14)"<br>
<br>
><td class="source">4.	Remove $$ characters from line endings<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_15<br>
<br>
onmouseover="gutterOver(15)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_16<br>
<br>
onmouseover="gutterOver(16)"<br>
<br>
><td class="source">5.	Remove 2 alter table lines and the end of sql script and ran them separately<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_17<br>
<br>
onmouseover="gutterOver(17)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_18<br>
<br>
onmouseover="gutterOver(18)"<br>
<br>
><td class="source">6.	Modified createcert.sh script by changing ST=IL to ST=”My State abbreviation” .. L=Chicago to L=”My city abbreviation”..dropped www prefix from domain and added my domain<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_19<br>
<br>
onmouseover="gutterOver(19)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_20<br>
<br>
onmouseover="gutterOver(20)"<br>
<br>
><td class="source">7.	Created new ssl folder and copied new rsakey to correct server location. /etc/apache2/ssl/<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_21<br>
<br>
onmouseover="gutterOver(21)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_22<br>
<br>
onmouseover="gutterOver(22)"<br>
<br>
><td class="source">8.	Copied google-gadgets folder to /home/google-gadgets<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_23<br>
<br>
onmouseover="gutterOver(23)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_24<br>
<br>
onmouseover="gutterOver(24)"<br>
<br>
><td class="source">9.	Copied Zend folder to /home/pika/app/extralib/Zend<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_25<br>
<br>
onmouseover="gutterOver(25)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_26<br>
<br>
onmouseover="gutterOver(26)"<br>
<br>
><td class="source">10.	Copied modified core pika files to correct folders<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_27<br>
<br>
onmouseover="gutterOver(27)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_28<br>
<br>
onmouseover="gutterOver(28)"<br>
<br>
><td class="source">11.	Copied new pika files to correct folders..clearsession.php and google-gadget.html and missing from pika_gadget_v1.zip package<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_29<br>
<br>
onmouseover="gutterOver(29)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_30<br>
<br>
onmouseover="gutterOver(30)"<br>
<br>
><td class="source">12.	Created calendars per instructions<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_31<br>
<br>
onmouseover="gutterOver(31)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_32<br>
<br>
onmouseover="gutterOver(32)"<br>
<br>
><td class="source">13.	Installed  .pem formatted certificate to Google apps as per instructions<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_33<br>
<br>
onmouseover="gutterOver(33)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_34<br>
<br>
onmouseover="gutterOver(34)"<br>
<br>
><td class="source">14.	Modified /pika/app/lib/pikaGoogleSync.php as per lines 4,5,6 of instructions<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_35<br>
<br>
onmouseover="gutterOver(35)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_36<br>
<br>
onmouseover="gutterOver(36)"<br>
<br>
><td class="source">15.	Modified /home/google-gadgets/pika.xml   where http://yourdomian.com/  becomes https://mydomain.com/  as per lines 7 and 8 of the instructions<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_37<br>
<br>
onmouseover="gutterOver(37)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_38<br>
<br>
onmouseover="gutterOver(38)"<br>
<br>
><td class="source">16.	Noted syntax on line 435 of   /home/google-gadgets/pika.xml  &lt;img src=&quot;http:////yourdomain.com/google_gadgets/images/busyLoader.gif&quot; alt=&quot;BusyLoader Image&quot;&gt;  has 4 //// don’t know effect until I test<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_39<br>
<br>
onmouseover="gutterOver(39)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_40<br>
<br>
onmouseover="gutterOver(40)"<br>
<br>
><td class="source">17.	Attempted to run https://yourdomian.com/pika/services/google-queue.php in browser. . Error logs show /Zend/Locale.php is missing from pika_gadget_v1.zip package. Downloaded and added Locale.php and /Zend/Locale library from the Zend Framework at  www.zend.com<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_41<br>
<br>
onmouseover="gutterOver(41)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_42<br>
<br>
onmouseover="gutterOver(42)"<br>
<br>
><td class="source">18.	You will get the same error for /Zend/Http/Client.php so add the Http folder from the Zend Framework chmod if necessary<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_43<br>
<br>
onmouseover="gutterOver(43)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_44<br>
<br>
onmouseover="gutterOver(44)"<br>
<br>
><td class="source">19.	Same error for  /Zend/Uri.php ..Add files /Zend/Uri.php and folder /Zend/Uri<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_45<br>
<br>
onmouseover="gutterOver(45)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_46<br>
<br>
onmouseover="gutterOver(46)"<br>
<br>
><td class="source">20.	Same error for  /Zend/Validate/Hostname.php .. folder /Zend/Validate<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_47<br>
<br>
onmouseover="gutterOver(47)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_48<br>
<br>
onmouseover="gutterOver(48)"<br>
<br>
><td class="source">21.	Same error for /Zend/Version.php ..Add file /Zend/version.php<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_49<br>
<br>
onmouseover="gutterOver(49)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_50<br>
<br>
onmouseover="gutterOver(50)"<br>
<br>
><td class="source">22.	Chmod  /home/pika/app/extralib/Zend/  to give apache access to new files if necessary<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_51<br>
<br>
onmouseover="gutterOver(51)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_52<br>
<br>
onmouseover="gutterOver(52)"<br>
<br>
><td class="source">23.	Attempted to run https://yourdomian.com /pika/services/google-queue.php in browser. Takes you to login for developer Apps account.  Change line 97 of /pika/app/lib/pikaGoogleSync.php  to (yourdomian.com)<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_53<br>
<br>
onmouseover="gutterOver(53)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_54<br>
<br>
onmouseover="gutterOver(54)"<br>
<br>
><td class="source">24.	Run https://yourdomian.com /pika/services/google-queue.php in browser. Should run OK now and show Queue is empty<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_55<br>
<br>
onmouseover="gutterOver(55)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_56<br>
<br>
onmouseover="gutterOver(56)"<br>
<br>
><td class="source">25.	Add tickle to case.  Run https://yourdomian.com /pika/services/google-queue.php in browser<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_57<br>
<br>
onmouseover="gutterOver(57)"<br>
<br>
><td class="source"> <br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_58<br>
<br>
onmouseover="gutterOver(58)"<br>
<br>
><td class="source">26.	Logs show error for /Zend/Exception.php ..Add file /Zend/Exception.php<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_59<br>
<br>
onmouseover="gutterOver(59)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_60<br>
<br>
onmouseover="gutterOver(60)"<br>
<br>
><td class="source">27.	Add tickle to case.  Run https://yourdomian.com /pika/services/google-queue.php in browser.<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_61<br>
<br>
onmouseover="gutterOver(61)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_62<br>
<br>
onmouseover="gutterOver(62)"<br>
<br>
><td class="source">28.	Should run fine now unless you did not fill out Subject or Where in the tickle form<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_63<br>
<br>
onmouseover="gutterOver(63)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_64<br>
<br>
onmouseover="gutterOver(64)"<br>
<br>
><td class="source">29.	Modified table activities.subject and activites.location_long to allow null values. This will prevent the google-queue operation from failing if values are not present<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_65<br>
<br>
onmouseover="gutterOver(65)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_66<br>
<br>
onmouseover="gutterOver(66)"<br>
<br>
><td class="source">30.	Found error lines 21,22, 421 and 435 /home/google-gadgets/pika.xml  change underscore google_gadgets to hyphen google-gadgets<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_67<br>
<br>
onmouseover="gutterOver(67)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_68<br>
<br>
onmouseover="gutterOver(68)"<br>
<br>
><td class="source">31.	Change underscore to hyphen on  line 13 of instructions To install your Google Calendar Gadget, login to your Google account and use this link: https://www.google.com/calendar/render?gadgeturl=http://yourdomainname.com/google_gadgets/pika.xml    to  To install your Google Calendar Gadget, login to your Google account and use this link: https://www.google.com/calendar/render?gadgeturl=http://yourdomainname.com/google-gadgets/pika.xml <br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_69<br>
<br>
onmouseover="gutterOver(69)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_70<br>
<br>
onmouseover="gutterOver(70)"<br>
<br>
><td class="source">32.	Add google gadget per new instructions<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_71<br>
<br>
onmouseover="gutterOver(71)"<br>
<br>
><td class="source"> <br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_72<br>
<br>
onmouseover="gutterOver(72)"<br>
<br>
><td class="source">33.	For command line google-queue download new pika patch  add and modify /home/pika/app/lib/pikaGoogleSync  as needed .  Add/replace files /home/pika/services  google_ clearsession.php ,google-queue.php and gettokken.php <br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_73<br>
<br>
onmouseover="gutterOver(73)"<br>
<br>
><td class="source"><br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><tr<br>
id=sl_svn15_74<br>
<br>
onmouseover="gutterOver(74)"<br>
<br>
><td class="source">34.	Changed line 304 pikaGoogleSync.php from: $_extprop-&gt;setAttribute(&#39;value&#39;,&quot;http://&quot; . $_SERVER[&quot;HTTP_HOST&quot;] . &quot;/pika/&quot;)   to $_extprop-&gt;setAttribute(&#39;value&#39;,&quot;https://&quot; . $_SERVER[&quot;HTTP_HOST&quot;] . &quot;/pika/&quot;) to fix Edit Tickle button in Google Gadget. Adds https to url rather than http<br><br>
<br>
Unknown end tag for </td><br>
<br>
</tr<br>
><br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td><br>
<br>
Unknown end tag for </td><br>
<br>
<br>
<br>
Unknown end tag for </tr><br>
<br>
<br>
<br>
Unknown end tag for </table><br>
<br>
</pre>
</td>
</tr>

Unknown end tag for </table>

</blockquote>


<br>
<br>
<script type="text/javascript"><br>
<br>
<br>
<blockquote>var lineNumUnderMouse = -1;</blockquote>

<blockquote>function gutterOver(num) {<br>
gutterOut();<br>
var newTR = document.getElementById('gr_svn15<i>' + num);<br>
if (newTR) {<br>
newTR.className = 'undermouse';<br>
}<br>
lineNumUnderMouse = num;<br>
}<br>
function gutterOut() {<br>
if (lineNumUnderMouse != -1) {<br>
var oldTR = document.getElementById(<br>
'gr_svn15</i>' + lineNumUnderMouse);<br>
if (oldTR) {<br>
oldTR.className = '';<br>
}<br>
lineNumUnderMouse = -1;<br>
}<br>
}<br>
var numsGenState = {table_base_id: 'nums_table<i>'};<br>
var srcGenState = {table_base_id: 'src_table</i>'};<br>
var alignerRunning = false;<br>
var startOver = false;<br>
function setLineNumberHeights() {<br>
if (alignerRunning) {<br>
startOver = true;<br>
return;<br>
}<br>
numsGenState.chunk_id = 0;<br>
numsGenState.table = document.getElementById('nums_table_0');<br>
numsGenState.row_num = 0;<br>
if (!numsGenState.table) {<br>
return; // Silently exit if no file is present.<br>
}<br>
srcGenState.chunk_id = 0;<br>
srcGenState.table = document.getElementById('src_table_0');<br>
srcGenState.row_num = 0;<br>
alignerRunning = true;<br>
continueToSetLineNumberHeights();<br>
}<br>
function rowGenerator(genState) {<br>
if (genState.row_num < genState.table.rows.length) {<br>
var currentRow = genState.table.rows[genState.row_num];<br>
genState.row_num++;<br>
return currentRow;<br>
}<br>
var newTable = document.getElementById(<br>
genState.table_base_id + (genState.chunk_id + 1));<br>
if (newTable) {<br>
genState.chunk_id++;<br>
genState.row_num = 0;<br>
genState.table = newTable;<br>
return genState.table.rows<a href='0.md'>0</a>;<br>
}<br>
return null;<br>
}<br>
var MAX_ROWS_PER_PASS = 1000;<br>
function continueToSetLineNumberHeights() {<br>
var rowsInThisPass = 0;<br>
var numRow = 1;<br>
var srcRow = 1;<br>
while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {<br>
numRow = rowGenerator(numsGenState);<br>
srcRow = rowGenerator(srcGenState);<br>
rowsInThisPass++;<br>
if (numRow && srcRow) {<br>
if (numRow.offsetHeight != srcRow.offsetHeight) {<br>
numRow.firstChild.style.height = srcRow.offsetHeight + 'px';<br>
}<br>
}<br>
}<br>
if (rowsInThisPass >= MAX_ROWS_PER_PASS) {<br>
setTimeout(continueToSetLineNumberHeights, 10);<br>
} else {<br>
alignerRunning = false;<br>
if (startOver) {<br>
startOver = false;<br>
setTimeout(setLineNumberHeights, 500);<br>
}<br>
}<br>
}<br>
function initLineNumberHeights() {<br>
// Do 2 complete passes, because there can be races<br>
// between this code and prettify.<br>
startOver = true;<br>
setTimeout(setLineNumberHeights, 250);<br>
window.onresize = setLineNumberHeights;<br>
}<br>
initLineNumberHeights();<br>
<br>
<br>
</script><br>
<br>
</blockquote>



<blockquote><div>
<div>
<a href='#'>Show details</a>
<a href='#'>Hide details</a>
</div>
<div></blockquote>


<blockquote><div>
<div></div>
<div></div>
<div></div>
<div>
<div>
<p>Change log</p>
<div>
<a href='/p/lsnc-google-api/source/detail?spec=svn15&amp;r=9'><a href='https://code.google.com/p/lsnc-google-api/source/detail?r=9'>r9</a></a>
by msawyer@lsnc.net<br>
on Jul 25, 2011<br>
&nbsp; <a href='/p/lsnc-google-api/source/diff?spec=svn15&r=9&amp;format=side&amp;path=/wiki/Installation_V1_Walk_Through.wiki&amp;old_path=/wiki/Installation_V1_Walk_Through.wiki&amp;old=8'>Diff</a>
</div>
<pre>Edited wiki page<br>
<a title="Realtime edited install" href="/p/lsnc-google-api/wiki/Installation_V1_Walk_Through">Installation_V1_Walk_Through<br>
<br>
Unknown end tag for </a><br>
<br>
 through web<br>
user interface.</pre>
</div></blockquote>






<blockquote>

<script type="text/javascript">

<br>
var detail_url = '/p/lsnc-google-api/source/detail?r=9&spec=svn15';<br>
var publish_url = '/p/lsnc-google-api/source/detail?r=9&spec=svn15#publish';<br>
// describe the paths of this revision in javascript.<br>
var changed_paths = <a href='.md'>.md</a>;<br>
var changed_urls = <a href='.md'>.md</a>;</blockquote>

<blockquote>changed_paths.push('/wiki/Installation_V1_Walk_Through.wiki');<br>
changed_urls.push('/p/lsnc-google-api/source/browse/wiki/Installation_V1_Walk_Through.wiki?r\x3d9\x26spec\x3dsvn15');</blockquote>

<blockquote>var selected_path = '/wiki/Installation_V1_Walk_Through.wiki';</blockquote>


<blockquote>function getCurrentPageIndex() {<br>
for (var i = 0; i < changed_paths.length; i++) {<br>
if (selected_path == changed_paths<a href='i.md'>i</a>) {<br>
return i;<br>
}<br>
}<br>
}<br>
function getNextPage() {<br>
var i = getCurrentPageIndex();<br>
if (i < changed_paths.length - 1) {<br>
return changed_urls<a href='i.md'>+ 1</a>;<br>
}<br>
return null;<br>
}<br>
function getPreviousPage() {<br>
var i = getCurrentPageIndex();<br>
if (i > 0) {<br>
return changed_urls<a href='i.md'>- 1</a>;<br>
}<br>
return null;<br>
}<br>
function gotoNextPage() {<br>
var page = getNextPage();<br>
if (!page) {<br>
page = detail_url;<br>
}<br>
window.location = page;<br>
}<br>
function gotoPreviousPage() {<br>
var page = getPreviousPage();<br>
if (!page) {<br>
page = detail_url;<br>
}<br>
window.location = page;<br>
}<br>
function gotoDetailPage() {<br>
window.location = detail_url;<br>
}<br>
function gotoPublishPage() {<br>
window.location = publish_url;<br>
}<br>
<br>
<br>
</script><br>
<br>
</blockquote>


<blockquote>

<style type="text/css">

<br>
</blockquote><ol><li>eview_nav {<br>
</li></ol><blockquote>border-top: 3px solid white;<br>
padding-top: 6px;<br>
margin-top: 1em;<br>
}<br>
</blockquote><ol><li>eview_nav td {<br>
</li></ol><blockquote>vertical-align: middle;<br>
}<br>
</blockquote><ol><li>eview_nav select {<br>
</li></ol><blockquote>margin: .5em 0;<br>
}<br>
<br>
<br>
</style><br>
<br>
<br>
<div>
<table><tr><td>Go to:&nbsp;</td><td>
<br>
<br>
<select name="files_in_rev" onchange="window.location=this.value"><br>
<br>
</blockquote>

<blockquote><option value="/p/lsnc-google-api/source/browse/wiki/Installation_V1_Walk_Through.wiki?r=9&amp;spec=svn15"<br>
selected="selected"<br>
>...nstallation_V1_Walk_Through.wiki<br>
<br>
Unknown end tag for </option><br>
<br>
</blockquote>

<blockquote>

</select>

<br>
</td></tr></table></blockquote>


<blockquote><div>
<a href='/p/lsnc-google-api/source/detail?r=9&spec=svn15#publish'>Publish your comments</a>
<div>Double click a line to add a comment</div>
</div></blockquote>

<blockquote></div></blockquote>


<blockquote></div>
<div></div>
<div></div>
<div></div>
</div>
<div>
<div></div>
<div></div>
<div></div>
<div>
<div>
<p>Older revisions</p></blockquote>


<blockquote><div>
<img src='http://www.gstatic.com/codesite/ph/images/plus.gif'>
<img src='http://www.gstatic.com/codesite/ph/images/minus.gif'>
<a href='/p/lsnc-google-api/source/detail?spec=svn15&r=8'><a href='https://code.google.com/p/lsnc-google-api/source/detail?r=8'>r8</a></a>
by msawyer@lsnc.net<br>
on Jul 25, 2011<br>
&nbsp; <a href='/p/lsnc-google-api/source/diff?spec=svn15&r=8&amp;format=side&amp;path=/wiki/Installation_V1_Walk_Through.wiki&amp;old_path=/wiki/Installation_V1_Walk_Through.wiki&amp;old=7'>Diff</a>
<br>
<pre>Edited wiki page<br>
<a title="Realtime edited install" href="/p/lsnc-google-api/wiki/Installation_V1_Walk_Through">Installation_V1_Walk_Through<br>
<br>
Unknown end tag for </a><br>
<br>
 through<br>
web user interface.</pre>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>

<blockquote><div>
<img src='http://www.gstatic.com/codesite/ph/images/plus.gif'>
<img src='http://www.gstatic.com/codesite/ph/images/minus.gif'>
<a href='/p/lsnc-google-api/source/detail?spec=svn15&r=7'><a href='https://code.google.com/p/lsnc-google-api/source/detail?r=7'>r7</a></a>
by msawyer@lsnc.net<br>
on Jul 25, 2011<br>
&nbsp; <a href='/p/lsnc-google-api/source/diff?spec=svn15&r=7&amp;format=side&amp;path=/wiki/Installation_V1_Walk_Through.wiki&amp;old_path=/wiki/Installation_V1_Walk_Through.wiki&amp;old=6'>Diff</a>
<br>
<pre>Edited wiki page<br>
<a title="Realtime edited install" href="/p/lsnc-google-api/wiki/Installation_V1_Walk_Through">Installation_V1_Walk_Through<br>
<br>
Unknown end tag for </a><br>
<br>
 through<br>
web user interface.</pre>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>

<blockquote><div>
<img src='http://www.gstatic.com/codesite/ph/images/plus.gif'>
<img src='http://www.gstatic.com/codesite/ph/images/minus.gif'>
<a href='/p/lsnc-google-api/source/detail?spec=svn15&r=6'><a href='https://code.google.com/p/lsnc-google-api/source/detail?r=6'>r6</a></a>
by msawyer@lsnc.net<br>
on Jul 25, 2011<br>
&nbsp; <a href='/p/lsnc-google-api/source/diff?spec=svn15&r=6&amp;format=side&amp;path=/wiki/Installation_V1_Walk_Through.wiki&amp;old_path=/wiki/Installation_V1_Walk_Through.wiki&amp;old=5'>Diff</a>
<br>
<pre>Edited wiki page<br>
<a title="Realtime edited install" href="/p/lsnc-google-api/wiki/Installation_V1_Walk_Through">Installation_V1_Walk_Through<br>
<br>
Unknown end tag for </a><br>
<br>
 through<br>
web user interface.</pre>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>


<blockquote><a href='/p/lsnc-google-api/source/list?path=/wiki/Installation_V1_Walk_Through.wiki&start=9'>All revisions of this file</a>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<div></div>
<div></div>
<div></div>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>

<blockquote><div>
<div></div>
<div></div>
<div></div>
<div>
<div>
<p>File info</p></blockquote>

<blockquote><div>Size: 4242 bytes,<br>
74 lines</div></blockquote>

<blockquote><div><a href='//lsnc-google-api.googlecode.com/svn/wiki/Installation_V1_Walk_Through.wiki'>View raw file</a></div>
</div></blockquote>

<blockquote></div>
<div></div>
<div></div>
<div></div>
</div>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
</blockquote>


<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<br>
<br>
<br>
<script src="http://www.gstatic.com/codesite/ph/274877064420089206/js/prettify/prettify.js"><br>
<br>
<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<script type="text/javascript"><br>
<br>
prettyPrint();<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<br>
<br>
<script src="http://www.gstatic.com/codesite/ph/274877064420089206/js/source_file_scripts.js"><br>
<br>
<br>
<br>
</script><br>
<br>
<br>
<br>
<blockquote>

<script type="text/javascript" src="https://kibbles.googlecode.com/files/kibbles-1.3.3.comp.js">

<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<script type="text/javascript"><br>
<br>
<br>
var lastStop = null;<br>
var initialized = false;</blockquote>

<blockquote>function updateCursor(next, prev) {<br>
if (prev && prev.element) {<br>
prev.element.className = 'cursor_stop cursor_hidden';<br>
}<br>
if (next && next.element) {<br>
next.element.className = 'cursor_stop cursor';<br>
lastStop = next.index;<br>
}<br>
}</blockquote>

<blockquote>function pubRevealed(data) {<br>
updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');<br>
if (initialized) {<br>
reloadCursors();<br>
}<br>
}</blockquote>

<blockquote>function draftRevealed(data) {<br>
updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');<br>
if (initialized) {<br>
reloadCursors();<br>
}<br>
}</blockquote>

<blockquote>function draftDestroyed(data) {<br>
updateCursorForCell(data.cellId, 'nocursor');<br>
if (initialized) {<br>
reloadCursors();<br>
}<br>
}<br>
function reloadCursors() {<br>
kibbles.skipper.reset();<br>
loadCursors();<br>
if (lastStop != null) {<br>
kibbles.skipper.setCurrentStop(lastStop);<br>
}<br>
}<br>
// possibly the simplest way to insert any newly added comments<br>
// is to update the class of the corresponding cursor row,<br>
// then refresh the entire list of rows.<br>
function updateCursorForCell(cellId, className) {<br>
var cell = document.getElementById(cellId);<br>
// we have to go two rows back to find the cursor location<br>
var row = getPreviousElement(cell.parentNode);<br>
row.className = className;<br>
}<br>
// returns the previous element, ignores text nodes.<br>
function getPreviousElement(e) {<br>
var element = e.previousSibling;<br>
if (element.nodeType == 3) {<br>
element = element.previousSibling;<br>
}<br>
if (element && element.tagName) {<br>
return element;<br>
}<br>
}<br>
function loadCursors() {<br>
// register our elements with skipper<br>
var elements = CR_getElements('<b>', 'cursor_stop');<br>
var len = elements.length;<br>
for (var i = 0; i < len; i++) {<br>
var element = elements<a href='i.md'>i</a>;<br>
element.className = 'cursor_stop cursor_hidden';<br>
kibbles.skipper.append(element);<br>
}<br>
}<br>
function toggleComments() {<br>
CR_toggleCommentDisplay();<br>
reloadCursors();<br>
}<br>
function keysOnLoadHandler() {<br>
// setup skipper<br>
kibbles.skipper.addStopListener(<br>
kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);<br>
// Set the 'offset' option to return the middle of the client area<br>
// an option can be a static value, or a callback<br>
kibbles.skipper.setOption('padding_top', 50);<br>
// Set the 'offset' option to return the middle of the client area<br>
// an option can be a static value, or a callback<br>
kibbles.skipper.setOption('padding_bottom', 100);<br>
// Register our keys<br>
kibbles.skipper.addFwdKey("n");<br>
kibbles.skipper.addRevKey("p");<br>
kibbles.keys.addKeyPressListener(<br>
'u', function() { window.location = detail_url; });<br>
kibbles.keys.addKeyPressListener(<br>
'r', function() { window.location = detail_url + '#publish'; });</blockquote></b>

<blockquote>kibbles.keys.addKeyPressListener('j', gotoNextPage);<br>
kibbles.keys.addKeyPressListener('k', gotoPreviousPage);</blockquote>


<blockquote>kibbles.keys.addKeyPressListener('h', toggleComments);</blockquote>

<blockquote>}<br>
<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<script src="http://www.gstatic.com/codesite/ph/274877064420089206/js/code_review_scripts.js"><br>
<br>
<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<script type="text/javascript"><br>
<br>
<br>
function showPublishInstructions() {<br>
var element = document.getElementById('review_instr');<br>
if (element) {<br>
element.className = 'opened';<br>
}<br>
}<br>
var codereviews;<br>
function revsOnLoadHandler() {<br>
// register our source container with the commenting code<br>
var paths = {'svn15': '/wiki/Installation_V1_Walk_Through.wiki'}<br>
codereviews = CR_controller.setup(<br>
{"profileUrl":["/u/@UBBfRl1WBBVGWQh8GQ%3D%3D/"],"token":"7b47841ff39e51f1b38f3b9f47e848d2","assetHostPath":"<a href='http://www.gstatic.com/codesite/ph'>http://www.gstatic.com/codesite/ph</a>","domainName":null,"assetVersionPath":"<a href='http://www.gstatic.com/codesite/ph/274877064420089206'>http://www.gstatic.com/codesite/ph/274877064420089206</a>","projectHomeUrl":"/p/lsnc-google-api","relativeBaseUrl":"","projectName":"lsnc-google-api","loggedInUserEmail":"michael.cizmar@mcplusa.com"}, '', 'svn15', paths,<br>
CR_BrowseIntegrationFactory);</blockquote>

<blockquote>// register our source container with the commenting code<br>
// in this case we're registering the container and the revison<br>
// associated with the contianer which may be the primary revision<br>
// or may be a previous revision against which the primary revision<br>
// of the file is being compared.<br>
codereviews.registerSourceContainer(document.getElementById('lines'), 'svn15');</blockquote>

<blockquote>codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);</blockquote>

<blockquote>codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);<br>
codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);<br>
codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);</blockquote>







<blockquote>var initialized = true;<br>
reloadCursors();<br>
}<br>
window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};</blockquote>

<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/274877064420089206/js/dit_scripts.js"><br>
<br>
<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
<br>
<br>
<blockquote>

<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/274877064420089206/js/ph_core.js">

<br>
<br>
</script><br>
<br>
</blockquote>




<blockquote>

<script type="text/javascript" src="/js/codesite_product_dictionary_ph.pack.04102009.js">

<br>
<br>
</script><br>
<br>
<br>
<br>
<br>
Unknown end tag for </div><br>
<br>
<br>
<div dir='ltr'>
<div>
&copy;2011 Google -<br>
<a href='/projecthosting/terms.html'>Terms</a> -<br>
<a href='http://www.google.com/privacy.html'>Privacy</a> -<br>
<a href='/p/support/'>Project Hosting Help</a>
</div>
</div>
<div>
<span>Powered by <a href='http://code.google.com/projecthosting/'>Google Project Hosting</a></span>
</div></blockquote>





<blockquote>

Unknown end tag for </body>

<br>
<br>
<br>
Unknown end tag for </html><br>
<br>
</blockquote>
