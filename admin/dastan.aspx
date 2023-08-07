<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dastan.aspx.cs" Inherits="admin_dastan" %>

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
                                مسیر:</td>
                            <td align="right">
                                <asp:FileUpload ID="masir" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="masir"
                                    ErrorMessage="لطفاً مسیر داستان را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                جشنواره:</td>
                            <td align="right">
                                <asp:DropDownList ID="jashnvareddl" runat="server" DataTextField="JashnvareNameF"
                                    DataValueField="JashnvareID" OnSelectedIndexChanged="jashnvareddl_SelectedIndexChanged" OnTextChanged="jashnvareddl_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="jashnvareddl"
                                    ErrorMessage="لطفاً فیلد جشنواره را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="right">
                 <asp:Panel ID="bargozide" runat="server" Direction="RightToLeft" GroupingText="برگزیده"
                     Height="50px" Width="125px">
                     <asp:RadioButtonList ID="bargoziderbl" runat="server">
                         <asp:ListItem Value="0">بله</asp:ListItem>
                         <asp:ListItem Selected="True" Value="1">خیر</asp:ListItem>
                     </asp:RadioButtonList></asp:Panel>
             </td>
         </tr>
         <tr>
             <td align="right" style="height: 102px">
                 <asp:Panel ID="montakhab" runat="server" Direction="RightToLeft" GroupingText="منتخب"
                     Height="50px" Width="125px" Visible="False">
                     <asp:RadioButtonList ID="montakahbrbl" runat="server">
                         <asp:ListItem Value="0">بله</asp:ListItem>
                         <asp:ListItem Selected="True" Value="1">خیر</asp:ListItem>
                     </asp:RadioButtonList></asp:Panel>
                 
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
