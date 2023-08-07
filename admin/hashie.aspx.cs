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

public partial class admin_hashie : System.Web.UI.Page
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
            string _filepath = Request.PhysicalApplicationPath + "hashie\\";
            string[] _filename = naghd.PostedFile.FileName.Split('\\');
            string[] _filename1 = davaran.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            string _name1 = _filename1[_filename1.Length - 1];
            int _filelen = naghd.PostedFile.ContentLength;
            string _filetype = naghd.PostedFile.ContentType.ToString();
            int _filelen1 =davaran.PostedFile.ContentLength;
            string _filetype1 = davaran.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name) || System.IO.File.Exists(_filepath + _name1) ||  _name1 ==  _name)
            {
                RegisterStartupScript("", "! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                return;
            }
            if (_filetype != "text/html" || _filetype1 != "text/html")
            {
                RegisterStartupScript("", "‰Ê⁄ ›«Ì· »«Ìœ  htm»«‘œ");
                return;
            }

            naghd.PostedFile.SaveAs(_filepath + _name);
            davaran.PostedFile.SaveAs(_filepath + _name1);
            string dd = _filepath + _name;
            string dd1 = _filepath + _name1;
            codebehind ob = new codebehind();
            DataSet ds = new DataSet();
            ob.insert("Hashie", "NPath,RPath,JashnvareID,Zaban", "'" + dd + "','"+dd1+"','" + int.Parse(jashnvareddl.SelectedValue.ToString()) + "','"+ int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
             }
    }
}
