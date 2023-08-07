<%@ Page Language="C#" AutoEventWireup="true" CodeFile="khabar.aspx.cs" Inherits="khabar" %>

<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc1" %>
<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc2" %>
<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ã‘‰Ê«—Â œ«” «‰ »«‰Â</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="800" cellpadding="0" cellspacing="0" align="center" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" rowspan="">
                    <uc1:topUserControl ID="TopUserControl1" runat="server" />
                    </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td style="height: 538px" valign="top" width="150">
                                
                                <uc3:leftUserControl ID="LeftUserControl1" runat="server" OnLoad="LeftUserControl1_Load" />
                            </td>
                            <td style="height: 538px; direction: rtl;" runat=server align="center" valign="top" width="500" id="td1">
                                &nbsp;&nbsp;&nbsp;
                            </td>
                            <td align="right" style="height: 538px" valign="top" width="150">
                                <uc2:rightusercontrol ID="Rightusercontrol1" runat="server" />
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
