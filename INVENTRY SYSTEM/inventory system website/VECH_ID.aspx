<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VECH_ID.aspx.cs" Inherits="VECH_ID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-base.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-topbar.css" />
<link rel="stylesheet" type="text/css" href="ddlevelsfiles/ddlevelsmenu-sidebar.css" />

<link href="StyleSheet2.css" rel=Stylesheet />
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
        GridLines="None">
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
 <br /><br /><br />
<p>
 Please enter VEHICLE ID    </p>
    <br /><br />
    
    
VEHICLE ID:  <asp:TextBox ID="txtky" runat="server"></asp:TextBox> <br /><br /><br />
        <asp:Button ID="txtsubmit" runat="server" Text="submit" onclick="txtsubmit_Click" 
        style="height: 26px" />
        <br /><br /><br /><br />
        <asp:Button ID="txtview" runat="server" Text="VIEW ALL" onclick="txtview_Click" style="height: 26px" /> <br />
         <br /><br /><br />
          <center><a href="vech_id.aspx"><font color="lime" size='6px'>view vechile entry</font></a><br />
           <a href="cmid.aspx"> <font color="lime" size='6px'>view complaint Entry</font></a><br />
          <a href="cmid.aspx"> <font color="lime" size='6px'>view customer Entry</font></a><br />
          <a href="order.aspx"><font color="lime" size='6px'>view transaction</font></a><br />
          <a href="key.aspx"><font color="lime" size='6px'>view intimation</font></a><br />
          <a href="inv.aspx"><font color="lime" size='6px'>view invoice</font></a></center><br />
    </div>
    </form>
</body>
</html>
