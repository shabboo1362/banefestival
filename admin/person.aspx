<%@ Page Language="C#" AutoEventWireup="true" CodeFile="person.aspx.cs" Inherits="admin_person" %>

<%@ Register Src="usercontrol/adminUserControl.ascx" TagName="adminUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>جشنواره داستان بانه</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE id="table0" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0" bgcolor="#e3e4f3">
				<TR>
					<TD style="BACKGROUND-POSITION: right top; BACKGROUND-REPEAT: repeat-y" width="50%"
						 height="100%" rowSpan="2"></TD>
					<TD width="1" bgColor="#000000" rowSpan="2"></TD>
					<TD colSpan="2"></TD>
					<TD width="1" bgColor="#000000" rowSpan="2"></TD>
					<TD style="BACKGROUND-POSITION: left top; BACKGROUND-REPEAT: repeat-y" width="50%" 
						height="100%" rowSpan="2"></TD>
				</TR>
				<TR>
					<TD vAlign="top" width="800">
						<TABLE id="table1" cellSpacing="0" cellPadding="0" width="800" border="0">
							<TR>
								<TD height="33"><IMG src="../image/baner.gif" width="800"></TD>
							</TR>
							<TR>
								<TD style="direction: rtl" align="right">
									<TABLE id="Table3" style="HEIGHT: 136px" borderColor="#e3e4f3" cellSpacing="0" cellPadding="0"
										width="800" align="center" border="1" background="#e3e4f3">
                                        <tr>
                                            <td align="center" bgcolor="#e3e4f3" style="border-top-style: none; border-bottom: #e3e4f3 thin solid;
                                                border-right-style: none; border-left-style: none; height: 59px">
                                                <uc1:adminUserControl ID="AdminUserControl1" runat="server" />
                                            </td>
                                        </tr>
										<TR>
											<TD style="BORDER-TOP-STYLE: none; BORDER-BOTTOM: #e3e4f3 thin solid; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; height: 59px;"
												bgColor="#e3e4f3" align="center"><asp:validationsummary id="ValidationSummary1" runat="server"></asp:validationsummary></TD>
										</TR>
										<TR>
											<TD style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'" vAlign="top" align="center"
												width="800" bgColor="#e3e4f3">
												<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="800" border="0">
													<TR>
														<TD style="WIDTH: 119px" align="right"><asp:label id="firstname" runat="server" Font-Size="12px" Font-Names="Verdana">نام(فارسی):</asp:label></TD>
														<TD align="right"><asp:textbox id="firstnametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="firstnametxt" ErrorMessage="لطفاً نام(فارسی ) را وارد کنید."
																EnableViewState="False">*</asp:requiredfieldvalidator></TD>
													</TR>
													<TR>
														<TD style="WIDTH: 119px; HEIGHT: 24px" align="right"><asp:label id="lastnamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">نام خانوادگی(فارسی):</asp:label></TD>
														<TD align="right"><asp:textbox id="lastnametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ControlToValidate="lastnametxt" ErrorMessage="لطفاً نام خانوادگی(فارسی ) را وارد کنید."
																EnableViewState="False">*</asp:requiredfieldvalidator></TD>
													</TR>
                                                    <tr>
                                                        <td align="right" style="width: 119px; height: 24px">
                                                            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="12px">نام( کوردی):</asp:Label></td>
                                                        <td align="right">
                                                            <asp:textbox id="namektxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox>
                                                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="namektxt"
                                                                EnableViewState="False" ErrorMessage="لطفاً نام(کوردی ) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" style="width: 119px; height: 24px">
                                                            <asp:label id="Label3" runat="server" Font-Size="12px" Font-Names="Verdana">نام خانوادگی(کوردی):</asp:label></td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lastnamektxt" runat="server" BorderColor="LightSteelBlue" BorderStyle="Solid"
                                                                BorderWidth="1px" Width="120px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ControlToValidate="lastnamektxt"
                                                                EnableViewState="False" ErrorMessage="لطفاً نام خانوادگی(کوردی ) را وارد کنید.">*</asp:RequiredFieldValidator></td>
                                                    </tr>
													<TR>
														<TD style="WIDTH: 119px" align="right"><asp:label id="countrylbl" runat="server" Font-Size="12px" Font-Names="Verdana">بیوگرافی:</asp:label></TD>
														<TD align="right"><asp:textbox id="biographytxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px" TextMode="MultiLine"></asp:textbox></TD>
													</TR>
													<TR>
														<TD style="WIDTH: 119px" align="right"><asp:label id="Label1" runat="server" Font-Size="12px" Font-Names="Verdana">تخلص:</asp:label></TD>
														<TD align="right">
                                                            <asp:TextBox ID="takhalostxt" runat="server" BorderColor="LightSteelBlue" BorderStyle="Solid"
                                                                BorderWidth="1px" Width="120px"></asp:TextBox>
                                                        </TD>
													</TR>
													<TR>
														<TD align="right"><asp:label id="naghshlbl" runat="server" Font-Size="12px" Font-Names="Verdana">نقش:</asp:label></TD>
														<TD align="right">
                                                            <asp:DropDownList ID="naghshddl" runat="server" DataTextField="NaghshName" DataValueField="NaghshID">
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="لطفاً نقش را وارد کنید." ControlToValidate="naghshddl">*</asp:RequiredFieldValidator></TD>
													</TR>
													<TR>
														<TD align="right" width="70"><asp:label id="addresslbl" runat="server" Font-Size="12px" Font-Names="Verdana">عکس:</asp:label></TD>
														<TD align="right">
                                                            <asp:FileUpload ID="masir" runat="server" />
                                                        </TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
									</TD>
							</TR>
                            <tr>
                                <td align="center" style="direction: rtl">
                                    <asp:Button ID="submitcmd" runat="server" OnClick="submitcmd_Click" Text="تایید"
                                        Width="59px" /></td>
                            </tr>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
    </div>
    </form>
</body>
</html>
