<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ã‘‰Ê«—Â œ«” «‰ »«‰Â</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="800" align="center">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/baner.gif" /></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Login ID="Login1" runat="server" OnLoggingIn="Login1_LoggingIn" OnLoginError="Login1_LoginError">
                    </asp:Login>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/changepass.aspx">—„“ ⁄»Ê— ŒÊœ —« ›—«„Ê‘ ò—œ„.</asp:HyperLink></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
