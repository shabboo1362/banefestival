<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doostan.aspx.cs" Inherits="admin_doostan" %>

<%@ Register Src="usercontrol/adminUserControl.ascx" TagName="adminUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="800" align="center" bgcolor="#e3e4f3">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/baner.gif" /></td>
            </tr>
        <tr>
            <td align="center">
                <uc1:adminUserControl ID="AdminUserControl1" runat="server" />
            </td>
        </tr>
            <tr>
                <td align="center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    
                    <table style="direction: rtl" width="100%">
                        <tr>
                            <td align="right">
                                نوع سايت(کوردی):</td>
                            <td align="right">
                                <asp:TextBox ID="typektxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="typektxt"
                                    ErrorMessage="لطفاً نوع جشنواره (کوردی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                نوع سايت(فارسی):</td>
                            <td align="right">
                                <asp:TextBox ID="typetxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="typetxt"
                                    ErrorMessage="لطفاً نوع جشنواره (فارسی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                آدرس سايت:</td>
                            <td align="right">
                                <asp:TextBox ID="urltxt" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="urltxt" Display="Dynamic" ErrorMessage="آدرس سايت را درست وارد كنيد." ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="urltxt"
                                    ErrorMessage="آدرس سايت را وارد كنيد.">*</asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="center">
                 &nbsp;<asp:Button ID="submitcmd" runat="server" Font-Size="Large" OnClick="submitcmd_Click"
                     Text="تایید" Width="80px" /></td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
