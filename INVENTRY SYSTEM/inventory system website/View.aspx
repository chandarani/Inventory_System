<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="StyleSheet.css" rel=Stylesheet />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <br>  <table width="1000px" align="center">
       <tr><td ><img src="image/tvs_logo_1.jpg" align="middle" width="200px" height="100px" align="left" /></td><td><center><b><u><font size="100px" color="maroon" style="font-family:Algerian">VIEW</font></u></b></center></td> 
          <td align="right"><font size="3px" color="red" style="background-color:yellow" colspan="2"><a>DATE: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="DATE" runat="server" Text=""></asp:Label> </a><br /><br /><a>DA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="DA" runat="server" Text=""></asp:Label></a><br /><br />
        
           </td> 
  </tr>
     <td width="200px" valign="top'><font size="3px" color="red" style="background-color:transparent">
                     <br /><br /><br /><br />
                         Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtnam" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Father&#39;s name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtfath" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Permanent Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtpadd" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Mobile no.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtmob" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Model:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="txtmod" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Colour:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="txtcol" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Engine no.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txteng" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Chassis no.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtchas" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Key no.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtkey" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Cash/Finance:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtcash" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Name of salesman:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtsale" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         On Road Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtpri" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                         Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txttot" runat="server" Text=""></asp:Label>
                         <br />
                         <br />
                     </center>
                     </td>
             
       </table>
     <a href="print.aspx">print</a><br /><br />
    </div>
    </form>
</body>
</html>
