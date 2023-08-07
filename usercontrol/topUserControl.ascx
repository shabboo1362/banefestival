<%@ Control Language="C#" AutoEventWireup="true" CodeFile="topUserControl.ascx.cs" Inherits="topUserControl" %>
<table width="100%" >
                        <tr>
                            <td align="left" style="width: 70%" valign="top">
                                <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu2_MenuItemClick" BackColor="#B5C7DE" Font-Names="Verdana" Font-Size="XX-Small" ForeColor="Maroon"  >
                                    <StaticMenuItemStyle BorderWidth="10px" HorizontalPadding="5px" VerticalPadding="2px" BorderColor="#E3E4F3" />
                                    <Items>
                                        <asp:MenuItem Text="Ku" Value="Ku"></asp:MenuItem>
                                        <asp:MenuItem Text="Fa" Value="Fa"></asp:MenuItem>
                                    </Items>
                                    <DynamicHoverStyle BackColor="#B5C7DE" ForeColor="White" />
                                    <DynamicMenuStyle BackColor="#B5C7DE" />
                                    <StaticSelectedStyle BackColor="#B5C7DE" />
                                    <DynamicSelectedStyle BackColor="#B5C7DE" />
                                    <StaticHoverStyle BackColor="CornflowerBlue" />
                                </asp:Menu>
                            </td>
                            <td style="width: 70%" valign="top">
                                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick" BackColor="#B5C7DE"  Font-Names="Verdana" Font-Size="XX-Small" ForeColor="Maroon" >
                                    <Items>
                                        <asp:MenuItem Text="صفحه اصلی" Value="Home" NavigateUrl="~/form1.aspx"></asp:MenuItem>
                                        <asp:MenuItem Text="درباره ما" Value="aboutus"></asp:MenuItem>
                                        <asp:MenuItem Text="تماس با ما" Value="connectus"></asp:MenuItem>
                                    </Items>
                                    <StaticMenuItemStyle  BackColor="LightSteelBlue" BorderWidth="10px" HorizontalPadding="5px" BorderColor="#E3E4F3" />
                                    <DynamicHoverStyle BackColor="#B5C7DE" BorderColor="#B5C7DE" />
                                    <DynamicMenuStyle BackColor="#404000" />
                                    <StaticSelectedStyle BackColor="#B5C7DE"  />
                                    <DynamicSelectedStyle BackColor="#B5C7DE" />
                                    <DynamicMenuItemStyle  BackColor="#B5C7DE" />
                                    <StaticHoverStyle BackColor="CornflowerBlue"  />
                                    <StaticMenuStyle BackColor="#B5C7DE" />
                                </asp:Menu>
                            </td>
                        </tr>
                    </table>