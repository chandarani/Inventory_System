<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vprofile.aspx.cs" Inherits="vprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />

<link href="StyleSheet.css" rel=Stylesheet />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="txt" ><u><center><font color="BLUE">VIEW PROFILE</font></center></u></h1>
<center><img src="img/ss.jpg" align="top" width="600px" height="400px"/></center>
<br /><br />
<a href="logout.aspx"><center>Logout</a><br /><br /><br /><br />
First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblfn" runat="server" Text="Label"></asp:Label><br /><br />
    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="lblln" runat="server" Text="Label"></asp:Label><br /><br />
    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="lblgen" runat="server" Text="Label"></asp:Label><br /><br />
    Your City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label><br /><br />
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblemail" runat="server" Text="Label"></center></asp:Label><br /><br />
    <a href="eprofile.aspx"><center>Edit</a>
    <br /><br /><br /><br />
</asp:Content>

