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

public partial class admin_jashnvare : System.Web.UI.Page
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
            string _filepath = Request.PhysicalApplicationPath + "image\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", "! áØİÇ äÇã İÇíá ÎæÏ ÑÇ ÊÛííÑ ÏåíÏ");
                return;
            }
            if (_filelen > 60000)
            {
                RegisterStartupScript("",("! ÍÌã Ú˜Ó ÈíÔ ÇÒ ÇäÏÇÒå ãÌÇÒ ÇÓÊ"));
                return;
            }
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("",("! áØİÇ äÇã İÇíá ÎæÏ ÑÇ ÊÛííÑ ÏåíÏ"));
                return;
            }
            if (_filetype != "image/pjpeg")
            {
                RegisterStartupScript("",("äæÚ İÇíá ÈÇíÏ  jpegÈÇÔÏ"));
                return;
            }

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
            ob.insert("Jashnvare", "JashnvareNameK,JashnvareNameF,ImageURL", "'" + jashnvaretxt.Text + "','" + jashnvareftxt.Text + "','" + dd + "'");
        }
    }
}
