<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cust_id.aspx.cs" Inherits="cust_id" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel=Stylesheet />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br /><br /><br /><br />
<br /><br />
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
 Please enter key number    </p>
    <br /><br />
    
    
CUSTOMER ID:  <asp:TextBox ID="txtky" runat="server"></asp:TextBox> <br /><br /><br />
        <asp:Button ID="txtsubmit" runat="server" Text="submit" onclick="txtsubmit_Click" 
        style="height: 26px" />
        <br /><br /><br /><br />
        <asp:Button ID="txtview" runat="server" Text="VIEW ALL" onclick="txtview_Click" style="height: 26px" /> <br />
         <br /><br /><br />
    </div>
    </form>
</body>
</html>
