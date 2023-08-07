<%@ Page Language="C#" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="image" %>

<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc4" %>
<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc5" %>
<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ã‘‰Ê«—Â œ«” «‰ »«‰Â</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="800" cellpadding="0" cellspacing="0" align="center" bgcolor="#e3e4f3" style="table-layout: fixed" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" rowspan="">
                    <uc5:topUserControl ID="TopUserControl1" runat="server" />
                    </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td style="height: 538px" valign="top" width="150">
                                <uc4:leftUserControl ID="LeftUserControl1" runat="server" />
                            </td>
                            <td style="height: 538px" align="center" valign="top" width="500">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="direction: rtl" Width="90%" AllowPaging="True" EnableTheming="True" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="ImageURL" HeaderText="⁄ò”">
                                        </asp:ImageField>
                                        <asp:HyperLinkField DataNavigateUrlFields="ImageUrl" DataTextField="name" />
                                    </Columns>
                                    <RowStyle Wrap="True" BackColor="#EFF3FB" />
                                    <AlternatingRowStyle Height="20px" HorizontalAlign="Center" VerticalAlign="Top" BackColor="White" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    EnableSortingAndPagingCallbacks="True" HorizontalAlign="Center" Style="direction: rtl"
                                    Width="90%" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView2_PageIndexChanging">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="ImageUrl" HeaderText="ÅÊ” —">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="TarahName" HeaderText=" ÿ—«Õ" />
                                        <asp:HyperLinkField DataTextField="name" HeaderText="‰«„" />
                                    </Columns>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView><asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    EnableSortingAndPagingCallbacks="True" HorizontalAlign="Center" Style="direction: rtl"
                                    Width="90%" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView3_PageIndexChanging">
                                    <Columns>
                                        <asp:ImageField DataImageUrlField="ImageURL" HeaderText="⁄ò”">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="Andaze" HeaderText="«‰œ«“Â" />
                                        <asp:HyperLinkField DataTextField="name" HeaderText="ÿ—«Õ" />
                                    </Columns>
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                            </td>
                            <td align="right" style="height: 538px" valign="top" width="150">
                                <uc6:rightusercontrol ID="Rightusercontrol1" runat="server" />
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
