<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h1 class="txt"><u><center><font color="yellow">Create new account</font></center></u></h1>
                    <br /><br />
                    <center><img src="image/reg.jpg" width="400px" height="200px" /></center>
                    <p>
                       Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
</p>
<br />
 <div class="accountInfo">
   <fieldset class="register">
    <legend>Account Information</legend>
 <p>
    First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox><br /><br />
    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtlname" runat="server"></asp:TextBox><br /><br />
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
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <br /><br />
    Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtpass" runat="server"></asp:TextBox><br />
    </fieldset>
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Create User" onclick="Button1_Click" />
            <br /><br />
    
</asp:Content>

