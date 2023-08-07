<%@ Control Language="C#" AutoEventWireup="true" CodeFile="rightusercontrol.ascx.cs" Inherits="rightusercontrol" %>
<table width="150px" bgcolor="mistyrose" border="2" bordercolor="saddlebrown" style="background-color: wheat; table-layout: fixed;" cellspacing="0">
    <tr>
        <td style="width: 150px; direction: rtl">
            <asp:Label ID="jashnvarelbl" runat="server" Text="جشنواره"></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl" align="right" dir="rtl">
            &nbsp;
            <asp:Menu ID="Menu1" runat="server" Font-Overline="False" Font-Strikeout="False" OnMenuItemClick="Menu1_MenuItemClick" BackColor="Peru" Width="150" BorderColor="#804040" DisappearAfter="200" ForeColor="Black" ItemWrap="True">
                <StaticItemTemplate>
                    <asp:Image ID="Image" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' /><%# Eval("Text") %>
                </StaticItemTemplate>
                <LevelMenuItemStyles>
                    <asp:MenuItemStyle BorderColor="#C0FFC0" Font-Underline="False" />
                </LevelMenuItemStyles>
                <DynamicMenuStyle BackColor="PapayaWhip" BorderColor="PapayaWhip" BorderStyle="Solid"
                    HorizontalPadding="1px" VerticalPadding="1px" />
                <StaticSelectedStyle Font-Underline="True" />
                <DynamicHoverStyle BackColor="#FFC080" />
                <StaticHoverStyle BackColor="Chocolate" />
            </asp:Menu>
        </td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl">
            <asp:Label ID="honarlbl" runat="server" Text="هنر"></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl">
            <asp:HyperLink ID="geraphiclink" runat="server" NavigateUrl="~/image.aspx?ID=g">گرافیک</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl">
            <asp:HyperLink ID="namaieshlink" runat="server" NavigateUrl="~/namaiesh.aspx">نمایش</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px;">
            <asp:HyperLink ID="mosighilink" runat="server">موسیقی</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px;">
            &nbsp;<asp:HyperLink ID="sherlink" runat="server" NavigateUrl="~/sher.aspx">شعر</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px">
            <asp:HyperLink ID="farhanglink" runat="server" NavigateUrl="~/farhang.aspx">فرهنگ</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ketab.aspx">کتاب</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px;">
            &nbsp;<asp:HyperLink ID="dostanlink" runat="server" NavigateUrl="~/doostan.aspx">دوستان</asp:HyperLink></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 21px">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/zaban.aspx">زبان</asp:HyperLink></td>
    </tr>
</table>
