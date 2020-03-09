﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />

<script type="text/javascript" src="ddlevelsfiles/ddlevelsmenu.js">

    /***********************************************
    * All Levels Navigational Menu- (c) Dynamic Drive DHTML code library (http://www.dynamicdrive.com)
    * This notice MUST stay intact for legal use
    * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
    ***********************************************/

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="ddtopmenubar" class="mattblackmenu">
<ul>
<li><a href="http://www.dynamicdrive.com">Home</a></li>
<li><a href="http://www.dynamicdrive.com/new.htm" rel="ddsubmenu1">DHTML</a></li>
<li><a href="http://www.dynamicdrive.com/style/" rel="ddsubmenu2">CSS</a></li>
<li><a href="http://www.dynamicdrive.com/forums/">Forums</a></li>
<li><a href="http://tools.dynamicdrive.com/" rel="ddsubmenu3">Web Tools</a></li>
</ul>
</div>

<a class="animateddrawer" id="ddtopmenubar-mobiletoggle" href="#">
<span></span>
</a>

<script type="text/javascript">
ddlevelsmenu.setup("ddtopmenubar", "topbar") //ddlevelsmenu.setup("mainmenuid", "topbar|sidebar")



<!--HTML for the Drop Down Menus associated with Top Menu Bar-->
<!--They should be inserted OUTSIDE any element other than the BODY tag itself-->
<!--A good location would be the end of the page (right above "</BODY>")-->

<!--Top Drop Down Menu 1 HTML-->


<ul id="ddsubmenu1" class="ddsubmenustyle">
<li><a href="#">Item 1a</a></li>
<li><a href="#">Item 2a</a></li>
<li><a href="#">Item Folder 3a</a>
  <ul>
  <li><a href="#">Sub Item 3.1a</a></li>
  <li><a href="#">Sub Item 3.2a</a></li>
  <li><a href="#">Sub Item 3.3a</a></li>
  <li><a href="#">Sub Item 3.4a</a></li>
  </ul>
</li>
<li><a href="#">Item 4a</a></li>
<li><a href="#">Item Folder 5a</a>
  <ul>
  <li><a href="#">Sub Item 5.1a</a></li>
  <li><a href="#">Item Folder 5.2a</a>
    <ul>
    <li><a href="#">Sub Item 5.2.1a</a></li>
    <li><a href="#">Sub Item 5.2.2a</a></li>
    <li><a href="#">Sub Item 5.2.3a</a></li>
    <li><a href="#">Sub Item 5.2.4a</a></li>
    </ul>
  </li>
	</ul>
</li>
<li><a href="#">Item 6a</a></li>
</ul>


<!--Top Drop Down Menu 2 HTML-->

<ul id="ddsubmenu2" class="ddsubmenustyle">
<li><a href="#">Item 1b</a></li>
<li><a href="#">Item 2b</a></li>
<li><a href="#">Item Folder 3b</a>
  <ul>
  <li><a href="#">Sub Item 3.1b</a></li>
  <li><a href="#">Sub Item 3.2b</a></li>
  <li><a href="#">Sub Item 3.3b</a></li>
  <li><a href="#">Sub Item 3.4b</a></li>
  </ul>
</li>
<li><a href="#">Item 4b</a></li>
<li><a href="#">Item Folder 5b</a>
  <ul>
  <li><a href="#">Sub Item 5.1b</a></li>
  <li><a href="#">Item Folder 5.2b</a>
    <ul>
    <li><a href="#">Sub Item 5.2.1b</a></li>
    <li><a href="#">Sub Item 5.2.2b</a></li>
    <li><a href="#">Sub Item 5.2.3b</a></li>
    </ul>
  </li>
	</ul>
</li>
<li><a href="#">Item 6b</a></li>
</ul>

<!--Top Drop Down Menu 3 HTML-->

<ul id="ddsubmenu3" class="ddsubmenustyle">
<li><a href="http://tools.dynamicdrive.com/imageoptimizer/">Image Optimizer</a></li>
<li><a href="http://tools.dynamicdrive.com/favicon/">FavIcon Generator</a></li>
<li><a href="http://www.dynamicdrive.com/emailriddler/">Email Riddler</a></li>
<li><a href="http://tools.dynamicdrive.com/password/">htaccess Password</a></li>
<li><a href="http://tools.dynamicdrive.com/userban/">htaccess Banning</a></li>
</ul>

</asp:Content>

