<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sher.aspx.cs" Inherits="admin_sher" %>

<%@ Register Src="usercontrol/adminUserControl.ascx" TagName="adminUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="800" align="center" bgcolor="#e3e4f3" style="table-layout: fixed;"">
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="فیلهای ستاره دار را وارد کنید." />
                    
                    <table style="direction: rtl" width="100%">
                    <tr>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server" Text="شاعر"></asp:Label></td>
                            <td align="right">
                                <asp:DropDownList ID="writterddl" runat="server" DataTextField="FirstNameK" DataValueField="PersonalID" Width="122px">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="فیلهای ستاره دار را وارد کنید.">*</asp:RequiredFieldValidator></td>
                        <td align="right">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/person.aspx">شاعرجدید</asp:HyperLink></td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 146px">
                                عنوان:</td>
                            <td align="right">
                                <asp:TextBox ID="envantxt" runat="server" Width="90%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="naghdtxt"
                                    ErrorMessage="لطفاً فیلد نقد را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                متن:</td>
                            <td align="right">
                                &nbsp;<asp:FileUpload ID="masir" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="masir"
                                    ErrorMessage="لطفاً فیلد رای داوران را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 146px">
                                نوع:</td>
                            <td align="right">
                                &nbsp; &nbsp;&nbsp;
                                <asp:DropDownList ID="typeddl" runat="server" DataTextField="name"
                                    DataValueField="ID" EnableTheming="True" 
                                    TabIndex="1" Width="129px">
                                </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="jashnvareddl" ErrorMessage="لطفاً فیلد جشنواره را وارد کنید.">*</asp:RequiredFieldValidator></td>
                            <td align="right">
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
                 &nbsp;<asp:Button ID="submitcmd" runat="server" Font-Size="Large"                      Text="تایید" Width="80px" /></td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
