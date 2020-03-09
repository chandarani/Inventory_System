<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invnm.aspx.cs" Inherits="keynm" %>

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
 <br /><br /><br />
<p>
 Please enter invoice number    </p>
    <br /><br />
    
    
invoice number:  <asp:TextBox ID="txtky" runat="server"></asp:TextBox> <br /><br /><br />
        <asp:Button ID="txtsubmit" runat="server" Text="submit" onclick="txtsubmit_Click" 
        style="height: 26px" />
        <br /><br /><br /><br /><br /><br /><br /><br />
        
    </div>
    </form>
</body>
</html>
