<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />


<link href="StyleSheet2.css" rel=Stylesheet />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
<h1 class="txt" ><u><center><font color="yellow">TRANSACTION FORM</font></center></u></h1>
                    <br /><br /><br /><br />
<center><FONT COLOR="fuchsia"> ORDER NO.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
     <asp:TextBox ID="txtorder" runat="server"></asp:TextBox><br /><br/> 
<asp:Panel ID="Panel1" runat="server">
<br /><br /><br /><br />

                   <div class="accountInfo">
   <fieldset class="register">
   
    <legend>MODEL INFORMATION</legend><br />
     MODEL:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:DropDownList id="ddlmodel" runat="server" Height="42px" Width="131px">
    
    </asp:DropDownList>
    
    <br /><br />
</fieldset>
    </asp:Panel>
    <br /><br /><br />
    <asp:Panel ID="Panel2" runat="server">
        CUSTOMER NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcust_name" runat="server"></asp:TextBox><br /><br/>
        CUSTOMER ADDRESS: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcust_add" runat="server"></asp:TextBox><br /><br/>
        CUSTOMER PHONE_NO.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtphone" runat="server"></asp:TextBox><br /><br/>
    <br /><br />
       </asp:Panel>
   <br />
     TOTAL AMOUNT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtamount" runat="server"></asp:TextBox><br /><br/> 
     <asp:Panel ID="Panel4" runat="server" Visible="false">
     <div class="DETAIL">
   <fieldset class="register">
   
    <legend>DETAIL</legend>
           
       
     DD/CHEQUE NO.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtddno" runat="server"></asp:TextBox><br /><br/> 
      BANK Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtbank_name" runat="server"></asp:TextBox><br /><br/> 
     </fieldset>
     </asp:Panel>
     
    ISSUE DATE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtissue_date" runat="server"></asp:TextBox><br /><br/> 
       MODEL ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtmodel_id" runat="server"></asp:TextBox><br /><br/>    
     CUSTOMER ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtcust_id" runat="server"></asp:TextBox><br /><br/>  
    <font color="fuchsia">MODE OF PAYMENT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:RadioButton ID="rd1" runat="server" Text="cash" GroupName="g" 
        oncheckedchanged="rd1_CheckedChanged" AutoPostBack="true" /> <asp:RadioButton GroupName="g" 
        ID="rd2" runat="server" Text="DD/CHEQUE" 
        oncheckedchanged="rd2_CheckedChanged" AutoPostBack="true" /></font></center><br /><br />
    </div>
     <br />
    <center><asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" /></center>

    <br /><br />

</asp:Content>

