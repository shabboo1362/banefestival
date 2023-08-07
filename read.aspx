<%@ Page Language="C#" AutoEventWireup="true" CodeFile="read.aspx.cs" Inherits="read" %>

<%@ Register Src="usercontrol/rightusercontrol.ascx" TagName="rightusercontrol" TagPrefix="uc1" %>
<%@ Register Src="usercontrol/topUserControl.ascx" TagName="topUserControl" TagPrefix="uc2" %>
<%@ Register Src="usercontrol/leftUserControl.ascx" TagName="leftUserControl" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<script language=javascript>
function frame(){
frame1.src=Label1;
}
</script>
<head runat="server">
    <title>Ã‘‰Ê«—Â œ«” «‰ »«‰Â</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="left: 100px; position: relative" width="800" cellpadding="0" cellspacing="0" >
            <tr>
                <td >
                    <img src="image/baner.gif"  /></td>
            </tr>
            <tr>
                <td align="right" rowspan="">
                    <uc2:topUserControl ID="TopUserControl1" runat="server" />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td style="height: 538px" valign="top" width="150">
                                <uc3:leftUserControl ID="LeftUserControl1" runat="server" />
                            </td>
                            <td style="height: 538px" align="center" valign="top" width="500" id="TD1" runat="server"><iframe id=frame1 runat=server scrolling="yes" width="100%"></iframe>
                               </td>
                            <td align="right" style="height: 538px" valign="top" width="150">
                                <uc1:rightusercontrol ID="Rightusercontrol1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="150">
                            </td>
                            <td runat="server" align="center" valign="top" width="500">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            <td align="right" valign="top" width="150">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    
        </table>
        <script language=javascript> 
        </script>
    </div>
    
    </form>
</body>
</html>
