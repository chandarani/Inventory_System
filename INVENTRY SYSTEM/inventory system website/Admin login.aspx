<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin login.aspx.cs" Inherits="Admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="txt"><u><center><font size="25px" color="yellow"> Admin Login</font></center></u></h1>   
 <br />
<p>
 <center><font color="yellow">Please enter your username and password.</center><br /><br />
  </p>
  
<center><img src="img/regis.jpg" align="top" width="400px" height="400px"/></center><br />
    
    <fieldset class="login">
    <legend><font color="black">Account Information</font></legend><br /><br />
User Email:  <asp:TextBox ID="txtuid" runat="server"></asp:TextBox> <br /><br />
Password:  <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox></font>
<br /><br />
<p>
  <asp:CheckBox ID="RememberMe" runat="server"/>
    <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label> 
  </p>
</fieldset>
<br />
   <center> <asp:Button ID="txtlogin" runat="server" Text="Admin login" onclick="txtlogin_Click" 
        style="height: 26px" /></center><br /><br />
   
</asp:Content>

