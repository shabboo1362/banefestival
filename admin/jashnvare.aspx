<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jashnvare.aspx.cs" Inherits="admin_jashnvare" %>

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
                                نام جشنواره(کوردی):</td>
                            <td align="right">
                                &nbsp;<asp:TextBox ID="jashnvaretxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="jashnvaretxt"
                                    ErrorMessage="لطفاً نام جشنواره (کوردی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                نام جشنواره(فارسی):</td>
                            <td align="right">
                                <asp:TextBox ID="jashnvareftxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="jashnvareftxt"
                                    ErrorMessage="لطفاً نام جشنواره (فارسی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                پوستر:</td>
                            <td align="right">
                                <asp:FileUpload ID="masir" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="masir"
                                    ErrorMessage="لطفاً مسیر داستان را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="center">
                 <asp:Button ID="submitcmd" runat="server" Font-Size="Large" OnClick="submitcmd_Click"
                     Text="تایید" Width="80px" /></td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
