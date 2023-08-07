<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ketab.aspx.cs" Inherits="admin_ketab" %>

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
                    &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <table style="direction: rtl" width="100%">
                        <tr>
                            <td align="right">
                                نویسنده:</td>
                            <td align="right">
                                <asp:DropDownList ID="writterddl" runat="server" DataTextField="FirstNameK" DataValueField="PersonalID">
                                </asp:DropDownList>
                            </td>
                            <td align="right">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/person.aspx">نویسنده جدید</asp:HyperLink></td>
                        </tr>
                        <tr>
                            <td align="right">
                                عنوان:</td>
                            <td align="right">
                                <asp:TextBox ID="envantxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="envantxt"
                                    ErrorMessage="لطفاً عنوان داستان را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                مسیر کتاب:<asp:Label ID="masirlbl" runat="server" Text="مسیر عکس:"></asp:Label></td>
                            <td align="right">
                                <asp:FileUpload ID="masir" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="masir"
                                    ErrorMessage="لطفاً مسیر کتاب را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                مسیر عکس:</td>
                            <td align="right"><asp:FileUpload ID="imagemasir" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    runat="server" ControlToValidate="imagemasir" ErrorMessage="لطفاً مسیر عکس را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="right" style="height: 97px">
                 <asp:Panel ID="zaban" runat="server" Direction="RightToLeft" GroupingText="زبان"
                     Height="50px" Width="125px">
                     <asp:RadioButtonList ID="zabanrbl" runat="server">
                         <asp:ListItem Value="0">فارسی</asp:ListItem>
                         <asp:ListItem Selected="True" Value="1">کردی</asp:ListItem>
                     </asp:RadioButtonList></asp:Panel>
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
