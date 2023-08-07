﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dastan.aspx.cs" Inherits="dastan" %>

<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc4" %>
<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc5" %>
<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc6" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="table-layout: fixed">
     <table width="800" cellpadding="0" cellspacing="0" align="center" bgcolor="#e3e4f3" style="table-layout: fixed" rules="none" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" rowspan="">
                    <uc6:topUserControl ID="TopUserControl1" runat="server" />
                   </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td style="width: 150px;" valign="top" align="right">
                              <uc4:leftUserControl ID="LeftUserControl1" runat="server" />
                            </td>
                            <td style="height: 538px" align="center" valign="top" width="500">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="direction: rtl" Width="90%" AllowPaging="True" EnableTheming="True" HorizontalAlign="Center" CellPadding="2" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20" >
                                    <Columns>
                                        <asp:HyperLinkField DataNavigateUrlFields="Dpath"
                                            DataTextField="DEnvan" HeaderText="عنوان" />
                                        <asp:BoundField DataField="writter" HeaderText="نویسنده" ReadOnly="True" />
                                    </Columns>
                                    <RowStyle Wrap="True" BackColor="#EFF3FB" />
                                    <AlternatingRowStyle Height="20px" HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
