<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kordiform.aspx.cs" Inherits="kordiform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta name="جشنواره" content="جشنواره بانه، فستیڤال، فستیڤال بانه، داستان،"/>
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table width="100%">
                        <tr>
                            <td align="left">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/arm.bmp" /></td>
                            <td align="center" valign="bottom">
                                <asp:Label ID="Label1" runat="server" Text="فورمی به شداری له  فستیڤال " Font-Bold="True"></asp:Label></td>
                            <td align="right">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/arm.bmp" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label2" runat="server" Text="تكایه فورمی ژێره وه پڕ وه كه ن وله گه ڵ به رهه مه كه تانه بۆ نووسینگه ی فستیڤالی نۆی بنێرن"></asp:Label></td>
            </tr>
            <tr><td>
            <table width="100%" style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid"> <tr><td>
                            <table width="100%" style="border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;" >
                        <tr>
                            <td style=" width: 25%; border-right: black thin solid;" align="center">
                                <asp:Label ID="Label20" runat="server" Text="دانانی وێنه پێویسته" Font-Bold="True"></asp:Label></td>
          
                            <td style="width:  75% " valign="top">
                                <table width="100%">
                                    <tr>
                                        <td style="border-bottom: black thin solid; height: 21px;" >
                                            <table width="100%">
                                                <tr>
                                                    <td style="height: 21px; direction: rtl;" align="right">
                                                        <asp:Label ID="Label5"  runat="server" Text="ساڵی له دایك بوون:" ></asp:Label></td>
                                                    <td align="right" style="height: 21px; direction: rtl;">
                                                        <asp:Label ID="Label4" runat="server" Text="شۆره ت: "></asp:Label></td>
                                                    <td style="height: 21px; direction: rtl;" align="right">
                                                        <asp:Label ID="Label3" runat="server" Text="ناو: "></asp:Label></td>
                                                </tr>
                                            </table>
                                      
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td style="height: 21px; direction: rtl; border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;" align="right">
                                                        <asp:Label ID="Label8" runat="server" Text="شه قامی:"></asp:Label></td>
                                                    <td style="height: 21px; direction: rtl; border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;" align="right">
                                                        <asp:Label ID="Label7" runat="server" Text="باژێڕی: "></asp:Label></td>
                                                    <td style="height: 21px; direction: rtl; border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;" align="right">
                                                        <asp:Label ID="Label6" runat="server" Text="ناونیشانی شوێنی نیشته جێیی پارێزگای: "></asp:Label></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border-bottom: black thin solid">
                                            <table width="100%">
                                                <tr>
                                                    <td align="right" style="direction: rtl">
                                                        <asp:Label ID="Label10" runat="server" Text="ژماره ی پۆستی:"></asp:Label></td>
                                                    <td>
                                                    </td>
                                                    <td style="direction: rtl" align="right">
                                                        <asp:Label ID="Label9" runat="server" Text="ژماره:  "></asp:Label></td>
                                                    <td style="direction: rtl;" align="right">
                                                        <asp:Label ID="Label14" runat="server" Text="كۆڵانی: "></asp:Label></td>
                                                </tr>
                                            </table >
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="direction: rtl; border-bottom: black thin solid;" align="right">
                                            <asp:Label ID="Label11" runat="server" Text="ژماره ته له فوونی شوێنی نیشته جێیی:"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="direction: rtl" align="right">
                                            <asp:Label ID="Label15" runat="server" Text="موبایل:"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="border-bottom: black thin solid">
                                            <asp:Label ID="Label12" runat="server" Text="E-mail:"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="direction: rtl; height:40px;" align="right" valign="top">
                                            <asp:Label ID="Label13" runat="server" Text="ناونیشانی شوێنی كار: "></asp:Label></td>
                                    </tr>
                                    </table>
                                    </td></tr>
                                    </table>
                            </td>
                        </tr>
                                    <tr>
                <td align="right" style="direction: rtl; height: 80px; border-top: black thin solid ;  border-bottom: black thin solid;" valign="top">
                    <asp:Label ID="Label17" runat="server" Text="بواره كانی چالاكی هونه ری:"></asp:Label></td>
            </tr>
             <tr>
                <td align="right" style="direction: rtl; height: 60px; border-bottom: black thin solid;" valign="top">
                    <asp:Label ID="Label18" runat="server" Text='به رهه می بڵاوكراوه "له چ ساڵ ی له كوێ":'></asp:Label></td>
            </tr>
            <tr>
                <td style="direction: rtl; height: 80px; border-bottom: black thin solid;" align="right" valign="top">
                    <asp:Label ID="Label16" runat="server" Text="هاوكار له گه ڵ بڵاڤۆ و شوێنه فه ر هه نگی و ئه ده بی و …."></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="direction: rtl; height: 143px;" valign="top">
                    <asp:Label ID="Label19" runat="server" Text="ئه گه ر تا ئیستا له فستیڤالی بانه دا به شدار بوون پێشنیا ره كانتان بنووسن"></asp:Label></td>
            </tr>
                    
                    </table>        
                   
            </td></tr>
            </table>
            </div>
    </form>
</body>
</html>