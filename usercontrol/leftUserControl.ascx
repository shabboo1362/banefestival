<%@ Control Language="C#" AutoEventWireup="true" CodeFile="leftUserControl.ascx.cs" Inherits="leftUserControl" %>
<table width="150" bgcolor="linen" border="2" bordercolor="saddlebrown" style="background-color: wheat; table-layout: fixed;" align="right" cellspacing="0">
    <tr>
        <td  style="width: 150px; direction: rtl; border-bottom: wheat solid;">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:DropDownList ID="searchddl" runat="server" Width="97px">
                <asp:ListItem Selected="True" Value="Dastan">داستان</asp:ListItem>
                <asp:ListItem Value="Sher">شعر</asp:ListItem>
                <asp:ListItem Value="Ketab">کتاب</asp:ListItem>
                <asp:ListItem Value="Maghale">مقاله</asp:ListItem>
                <asp:ListItem Value="Namaiesh">نمایش</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td align="right" style="width: 150; direction: rtl; border-bottom: wheat solid; border-top: wheat solid; height: 53px;">
            <asp:TextBox ID="searchtb" runat="server" Width="124px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="لطفاٌ فیلد ستاره دار را وارد کنید." ControlToValidate="searchtb">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 150px; direction: rtl; border-top: wheat solid;">
            <asp:Button ID="searchcmd" runat="server" Text="جستجو" OnClick="searchcmd_Click" /></td>
    </tr>
    <tr>
        <td style="width: 150px; direction: rtl; height: 192px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="داستان" CaptionAlign="Right" style="direction: rtl" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="90%" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging"  >
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <Columns>
                    <asp:HyperLinkField DataTextField="DEnvan" DataNavigateUrlFields="DPath" HeaderText="عنوان" />
                    <asp:BoundField DataField="Takhalos" HeaderText="نويسنده" />
                </Columns>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td  style="width: 150px; direction: rtl">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Caption="عکس" CaptionAlign="Right" style="direction: rtl" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="90%" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView2_PageIndexChanging"  >
                <Columns>
                    <asp:HyperLinkField DataTextField="IName" />
                    <asp:ImageField DataImageUrlField="ImageURL">
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    </tr>
</table>
