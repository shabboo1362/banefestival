<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc4" %>
<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc5" %>
<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="left: 100px; position: relative" cellpadding="0" cellspacing="0" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" rowspan="">
                    <uc4:topUserControl ID="TopUserControl2" runat="server" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td style="height: 538px" valign="top">
                                <uc5:leftUserControl ID="LeftUserControl1" runat="server" />
                                &nbsp;</td>
                            <td style="height: 538px" align="right" valign="top">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="direction: rtl">
                                    <Columns>
                                        <asp:BoundField DataField="ID" Visible="False" />
                                        <asp:HyperLinkField DataTextField="Envan" DataTextFormatString="Envan" HeaderText="عنوان" />
                                        <asp:BoundField DataField="Writter" HeaderText="نویسنده" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                            <td align="right" style="height: 538px" valign="top">
                                <uc6:rightusercontrol ID="Rightusercontrol1" runat="server" />
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
    
        </table>
    
    </div>
    </form>
</body>
</html>
