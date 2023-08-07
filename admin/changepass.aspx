<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="admin_changepass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
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
                <td align="center" style="direction: rtl">
                    &nbsp; &nbsp;
                    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail"
                        SubmitButtonText="تایید" UserNameInstructionText="لطفاً نام کاربری را وارد کنید."
                        UserNameLabelText="نام کاربری:" UserNameRequiredErrorMessage="نام کاربری را وارد کنید/"
                        UserNameTitleText="رمز عبور را فراموش کرده اید؟">
                        <SubmitButtonStyle Width="80px" />
                    </asp:PasswordRecovery>
                </td>
            </tr>
            <tr>
                <td align="center">
                    </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
