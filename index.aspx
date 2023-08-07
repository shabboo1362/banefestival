<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table  width="100%" cellpadding="10" align="center" bgcolor="#e3e4f3" >
        <tr>
            <td align="center">
                <img src="image/baner.gif" /></td>
        </tr>
         <tr>
             <td align="center" style="height: 39px">
                 <asp:LinkButton ID="farsilink" runat="server" OnClick="farsilink_Click">فارسي</asp:LinkButton>
                 &nbsp;
                 <asp:LinkButton ID="kurdilink" runat="server" OnClick="kurdilink_Click">کوردی</asp:LinkButton></td>
         </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
