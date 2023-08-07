<%@ Control Language="C#" AutoEventWireup="true" CodeFile="adminUserControl.ascx.cs" Inherits="admin_adminUserControl" %>
<table width="100%">
    <tr>
        <td align="right" style="width: 70%">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Sign out</asp:LinkButton>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/admin/Default.aspx">صفحه اصلی</asp:HyperLink>
        </td>
    </tr>
                        <tr>
                            <td style="width: 70%" align="right">
                                <asp:Menu ID="Menu1" runat="server"  ScrollDownText="" Style="direction: rtl; table-layout: fixed;" Orientation="Horizontal" DisappearAfter="10" Width="800px" BackColor="SteelBlue" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="Black" StaticSubMenuIndent="10px" BorderColor="#E3E4F3" >
                                    <Items>
                                        <asp:MenuItem Text="داستان" Value="dastan" Selectable="False">
                                            <asp:MenuItem Text="اضافه کردن داستان" Value="dadd" NavigateUrl="~/admin/dastan.aspx?ID=d"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف و ویرایش" Value="ddel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="جشنواره" Value="jashnvare" Selectable="False">
                                            <asp:MenuItem Text="اضافه کردن جشنواره" Value="jadd" NavigateUrl="~/admin/jashnvare.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="jdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="نشریه" Value="nashrie">
                                            <asp:MenuItem Text="اضافه کردن نشریه" Value="nadd" NavigateUrl="~/admin/bulten.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="ndel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="عکس" Value="axe">
                                            <asp:MenuItem Text="اضافه کردن عکس" Value="aadd" NavigateUrl="~/admin/image.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="adel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="کتاب" Value="ketab">
                                            <asp:MenuItem Text="اضافه کردن کتاب" Value="kadd" NavigateUrl="~/admin/ketab.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="kdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="مقاله" Value="maghale">
                                            <asp:MenuItem Text="اضافه کردن مقاله" Value="madd" NavigateUrl="~/admin/dastan.aspx?ID=m"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="mdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="نمایش" Value="namaiesh" NavigateUrl="~/admin/sher.aspx">
                                            <asp:MenuItem Text="اضافه کردن نمایشنامه" Value="sadd"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="sdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="شعر" Value="sher">
                                            <asp:MenuItem Text="اضافه کردن شعر" Value="shadd" NavigateUrl="~/admin/sher.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="shdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="زبان" Value="zaban">
                                            <asp:MenuItem NavigateUrl="~/sher.aspx?ID=z" Text="اضافه کردن " Value="اضافه کردن ">
                                            </asp:MenuItem>
                                        </asp:MenuItem>
                                    </Items>
                                    <StaticMenuItemStyle BorderWidth="10px" HorizontalPadding="5px" VerticalPadding="2px" BorderColor="#E3E4F3" />
                                    <DynamicItemTemplate>
                                        <%# Eval("Text") %>
                                    </DynamicItemTemplate>
                                    <StaticItemTemplate>
                                        <%# Eval("Text") %>
                                    </StaticItemTemplate>
                                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                                    <DynamicMenuStyle BackColor="LightSteelBlue" />
                                    <StaticSelectedStyle BackColor="#507CD1" Font-Size="Small" />
                                    <DynamicSelectedStyle BackColor="#507CD1" />
                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                                </asp:Menu>
                            </td>
                        </tr>
    <tr>
        <td align="right" style="width: 70%">
            <asp:Menu ID="Menu2" runat="server" ScrollDownText="" Style="direction: rtl; table-layout: fixed;" Orientation="Horizontal" DisappearAfter="10" Width="800px" BackColor="SteelBlue" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="Black" StaticSubMenuIndent="10px" BorderColor="#E3E4F3">
            <Items>
            <asp:MenuItem Selectable="False" Text="لینک دوستان" Value="link">
                                            <asp:MenuItem Text="اضافه کردن لینک " Value="ladd" NavigateUrl="~/admin/doostan.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="ldel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="حاشیه" Value="hashie">
                                            <asp:MenuItem NavigateUrl="~/admin/hashie.aspx" Text="اضافه کردن" Value="hadd"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="خبر" Value="khabar">
                                            <asp:MenuItem Text="اضافه کردن خبر" Value="khadd" NavigateUrl="~/admin/khabar.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف و ویرایش" Value="khdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="مطبوعات" Value="matboat">
                                            <asp:MenuItem Text="اضافه کردن" Value="matadd" NavigateUrl="~/admin/poster.aspx?ID=m"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="matdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="پوستر" Value="poster" NavigateUrl="~/admin/poster.aspx?ID=p">
                                            <asp:MenuItem Text="اضافه کردن پوستر" Value="padd" NavigateUrl="~/admin/poster.aspx?ID=p"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="pdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="گرافیک" Value="graphic">
                                            <asp:MenuItem Text="اضافه کردن" Value="gadd" NavigateUrl="~/admin/image.aspx?ID=g"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="gdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="فرهنگ" Value="farhang">
                                            <asp:MenuItem Text="اضافه کردن" Value="fadd" NavigateUrl="~/admin/farhang.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="fadd"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Selectable="False" Text="نویسنده" Value="personel">
                                            <asp:MenuItem Text="اضافه کردن" Value="peradd" NavigateUrl="~/admin/person.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="حذف یا ویرایش" Value="perdel"></asp:MenuItem>
                                        </asp:MenuItem>
                                        </Items>
                                    <StaticMenuItemStyle BorderWidth="10px" HorizontalPadding="5px" VerticalPadding="2px" BorderColor="#E3E4F3" />
                                    <DynamicItemTemplate>
                                        <%# Eval("Text") %>
                                    </DynamicItemTemplate>
                                    <StaticItemTemplate>
                                        <%# Eval("Text") %>
                                    </StaticItemTemplate>
                                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" BorderColor="White" />
                                    <DynamicMenuStyle BackColor="LightSteelBlue" />
                                    <StaticSelectedStyle BackColor="#507CD1" Font-Size="Small" />
                                    <DynamicSelectedStyle BackColor="#507CD1" />
                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuStyle BorderColor="#E3E4F3" />
            </asp:Menu>
        </td>
    </tr>
                    </table>