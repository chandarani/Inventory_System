<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="eprofile.aspx.cs" Inherits="eprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />

<link href="StyleSheet.css" rel=Stylesheet />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="txt" ><u><center><font color="BLUE">EDIT PROFILE</font></center></u></h1>
<center><img src="img/in.jpg" align="top" width="300px" height="300px"/></center>
<a href="logout.aspx"><center>Logout</a><br /><br /><br /><br />
 First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfn" runat="server"></asp:TextBox><br /><br />
    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtln" runat="server"></asp:TextBox><br /><br />
    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:RadioButton ID="rd1" runat="server" Text="Male" GroupName="g" /> <asp:RadioButton GroupName="g" ID="rd2" runat="server" Text="Female" /><br /><br />
    Your City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:DropDownList id="ddlcity" runat="server">
    <asp:ListItem Text='patna' Value='patna'></asp:ListItem>
        <asp:ListItem>ranchi</asp:ListItem>
        <asp:ListItem>Gaya</asp:ListItem>
        <asp:ListItem>Ara</asp:ListItem>
        <asp:ListItem>Muzafarpur</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:Button ID="btnupdate" runat="server" Text="update" 
        onclick="btnupdate_Click" /></center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

