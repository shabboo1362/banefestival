<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>

<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc4" %>
<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc5" %>
<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <table width="800" cellpadding="0" cellspacing="0" align="center" style="background-color: #e3e4f3; table-layout: fixed;" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" valign="bottom">
                    <uc4:topUserControl ID="TopUserControl1" runat="server" />
                    </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td valign="top" width="150" align="right">
                                <uc6:leftUserControl ID="LeftUserControl1" runat="server" />
                            </td>
                            <td style="height: 538px" align="center" valign="top" width="500">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="direction: rtl" Width="90%" AllowPaging="True" EnableTheming="True" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" Caption="خبر ها" OnPageIndexChanging="GridView1_PageIndexChanging">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="ImageURL">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="Summery" />
                                        <asp:HyperLinkField DataTextField="KhPath" DataTextFormatString="..." DataNavigateUrlFields="KhPath" />
                                    </Columns>
                                    <RowStyle Wrap="True" BackColor="#EFF3FB" />
                                    <AlternatingRowStyle Height="20px" HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                </asp:GridView>
                            </td>
                            <td align="right" style="height: 538px" valign="top" width="150">
                                <uc5:rightusercontrol ID="Rightusercontrol1" runat="server" />
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
    
        </table>
    </div>
    </form>
</body>
</html>
