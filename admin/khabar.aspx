<%@ Page Language="C#" AutoEventWireup="true" CodeFile="khabar.aspx.cs" Inherits="admin_khabar" %>

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
                            <td align="right" style="width: 146px">
                                خلاصه خبر:</td>
                            <td align="right">
                                &nbsp;<asp:TextBox ID="summerytxt" runat="server" Width="90%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="summerytxt"
                                    ErrorMessage="لطفاً خلاصه خبر را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 146px">
                                مسیر خبر:</td>
                            <td align="right">
                                &nbsp;<asp:FileUpload ID="khabar" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="khabar"
                                    ErrorMessage="لطفاً خبر را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 146px">
                                عکس</td>
                            <td align="right">
                                &nbsp; &nbsp;&nbsp;<asp:FileUpload ID="masir" runat="server" />&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
         <tr>
             <td align="right">
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
                 &nbsp;<asp:Button ID="submitcmd" runat="server" Font-Size="Large" OnClick="submitcmd_Click"
                     Text="تایید" Width="80px" /></td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
