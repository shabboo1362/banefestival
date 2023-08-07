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

public partial class admin_bulten : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            if (!Page.IsPostBack)
            {
                fill();
            }

        }
        else
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");
    }
    public void fill()
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        ob.get_Info("JashnvareID,JashnvareNameF", "Jashnvare", "JashnvareID IS NOT NULL", ds);
        jashnvareddl.DataSource = ds;
        jashnvareddl.DataBind();
    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            string _filepath = Request.PhysicalApplicationPath + "bulten\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("","! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                return;
            }
            //if (_filetype != "/pdf")
            //{
            //    RegisterStartupScript("", "‰Ê⁄ ›«Ì· »«Ìœ  pdf»«‘œ");
            //    return;
            //}

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
                ob.insert("Bulten", "JashnvareID,Path,Zaban", "'" + int.Parse(jashnvareddl.SelectedValue.ToString()) + "','"+ dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
        }
    }
}
