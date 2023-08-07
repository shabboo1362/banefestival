<%@ Page Language="C#" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="admin_image" %>

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
                                عکاس:</td>
                            <td align="right">
                                &nbsp;<asp:DropDownList ID="writterddl" runat="server" DataTextField="FirstNameK"
                                    DataValueField="PersonalID">
                                </asp:DropDownList></td>
                            <td align="right">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/person.aspx">عکاس جدید</asp:HyperLink></td>
                        </tr>
                        <tr>
                            <td align="right">
                                نام عکس(کوردی):</td>
                            <td align="right">
                                <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametxt"
                                    ErrorMessage="لطفاً نام عکس(کوردی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                نام عکس(فارسی):</td>
                            <td align="right">
                                <asp:TextBox ID="nameftxt" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="nameftxt" ErrorMessage="لطفاً  نام عکس(فارسی) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                مسیر:</td>
                            <td align="right">
                                <asp:FileUpload ID="masir" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="masir"
                                    ErrorMessage="لطفاً مسیر عکس را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                جشنواره:</td>
                            <td align="right">
                                <asp:DropDownList ID="jashnvareddl" runat="server" DataTextField="JashnvareNameF"
                                    DataValueField="JashnvareID" OnSelectedIndexChanged="jashnvareddl_SelectedIndexChanged">
                                </asp:DropDownList></td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="right">
                 <asp:Panel ID="montakhab" runat="server" Direction="RightToLeft" GroupingText="منتخب"
                     Height="50px" Width="125px">
                     <asp:RadioButtonList ID="montakahbrbl" runat="server">
                         <asp:ListItem Value="0">بله</asp:ListItem>
                         <asp:ListItem Selected="True" Value="1">خیر</asp:ListItem>
                     </asp:RadioButtonList></asp:Panel>
                 &nbsp;
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
