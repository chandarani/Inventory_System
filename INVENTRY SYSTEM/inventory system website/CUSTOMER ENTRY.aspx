<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CUSTOMER ENTRY.aspx.cs" Inherits="CUSTOMER_ENTRY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />


<link href="StyleSheet2.css" rel=Stylesheet />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br />
 <h1 class="txt"><u><center><font color="yellow">CUSTOMER-ENTRY FORM</font></center></u></h1>
                    <br /><br />
                   
<br />
 <div class="accountInfo">
   <fieldset class="register" style="background-color:InfoBackground"><br /><br /><br />
    <legend>Account Information</legend>
    CUSTOMER ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
           ID="txtcust" runat="server"></asp:TextBox>
<br /><br /><br />
    customer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtcust_name" runat="server"></asp:TextBox><br /><br /><br />
    mode of payment:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:RadioButton ID="rd1" runat="server" Text="cash" GroupName="g" /> <asp:RadioButton GroupName="g" ID="rd2" runat="server" Text="debit card" /><asp:RadioButton GroupName="g" ID="rd3" runat="server" Text="other" /><br /><br /><br />
    CUSTOMER ADDRESS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TEXTBOX id="txtcust_add" runat="server"></asp:TEXTBOX><br /><br /><br />
     CUSTOMER PHONE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TEXTBOX id="txtcust_ph" runat="server"></asp:TEXTBOX><br /><br /><br />
    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <br /><br /><br />
    ADDRESS-PROOF:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtadd_proof" runat="server"></asp:TextBox><br /><br />
    </fieldset>
    </div>
    <br /><br /><br />
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
    <br /><br /><br /><br />
    
</asp:Content>


