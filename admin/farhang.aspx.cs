using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_farhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");

    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            string _filepath = Request.PhysicalApplicationPath + "farhang\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", "! ���� ��� ���� ��� �� ����� ����");
                return;
            }
            if (_filetype != "text/html")
            {
                RegisterStartupScript("", ("��� ���� ����  html����"));
                return;
            }
            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
            ob.insert("Farhang", "FPath,FEnvan,Zaban", "'" + dd + "','" + envantxt.Text + "','" + int.Parse(zabanrbl.SelectedValue.ToString())+ "'");
             
        }
    }
}
