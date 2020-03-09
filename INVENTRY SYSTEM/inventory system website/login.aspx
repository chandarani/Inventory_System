<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<h1 class="txt"><u><font size="25px"><center><font color="yellow">Login</font></center></font></u></h1>
 <br /><br />        
 <center><img src="image/rr.jpg" width="500px" height="200px" /><br />
<p>
 Please enter your username and password.<br />
  Register if you don't have an account.<br /><br /><br /><br /><br /><br />
  <img src="image/xx.jpg"width="500px" height="200px" /></center><br />
    </p>
    
    <fieldset class="login">
    <legend>Account Information</legend><br /><br />
User Email:  <asp:TextBox ID="txtuid" runat="server"></asp:TextBox><asp:TextBoxWatermarkExtender
    ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtuid" WatermarkText="Enter user ID">
        </asp:TextBoxWatermarkExtender> <br /><br /><br />
Password:  <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox>
<br /><br />
<p>
  <asp:CheckBox ID="RememberMe" runat="server"/>
    <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label> 
  </p>
</fieldset>
<br /><br />

    <asp:Button ID="txtlogin" runat="server" Text="login" onclick="txtlogin_Click" 
        style="height: 26px" /><br />
        
</asp:Content>
