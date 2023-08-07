<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<%@ Register Src="usercontrol/adminUserControl.ascx" TagName="adminUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ã‘‰Ê«—Â œ«” «‰ »«‰Â</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="800" bgcolor="#e3e4f3">
            <tr>
                <td style="height: 26px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/baner.gif" /></td>
            </tr>
            <tr>
                <td style="height: 26px">
                    &nbsp;<uc1:adminUserControl ID="AdminUserControl1" runat="server" />
                   
                </td>
            </tr>
        </table>
    
    
    </div>
    </form>
</body>
</html>
