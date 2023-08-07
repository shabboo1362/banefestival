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

public partial class admin_ketab : System.Web.UI.Page
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
        ob.get_Info("PersonalID,FirstName,LastName,FirstNameK", "Personal inner join Naghsh on Naghsh.NaghshID=Personal.NaghshID", "Naghsh.NaghshID=1 OR Naghsh.NaghshID=2", ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            ds.Tables[0].Rows[i][3] = (ds.Tables[0].Rows[i][1].ToString() + " " + ds.Tables[0].Rows[i][2].ToString());
        }
        writterddl.DataSource = ds.Tables[0];
        writterddl.DataBind();
    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            string _filepath = Request.PhysicalApplicationPath + "ketab\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", "! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                return;
            }
            //if (_filetype != "/pdf")
            //{
            //    RegisterStartupScript("", "‰Ê⁄ ›«Ì· »«Ìœ  pdf»«‘œ");
            //    return;
            //}

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
             _filepath = Request.PhysicalApplicationPath + "image\\";
            _filename = masir.PostedFile.FileName.Split('\\');
            _name = _filename[_filename.Length - 1];
            _filelen = masir.PostedFile.ContentLength;
            _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", "! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                return;
            }
            if (_filelen > 60000)
            {
                RegisterStartupScript("", ("! ÕÃ„ ⁄ò” »Ì‘ «“ «‰œ«“Â „Ã«“ «” "));
                return;
            }
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", ("! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ"));
                return;
            }
            if (_filetype != "image/pjpeg")
            {
                RegisterStartupScript("", ("‰Ê⁄ ›«Ì· »«Ìœ  jpeg»«‘œ"));
                return;
            }

            masir.PostedFile.SaveAs(_filepath + _name);
            string image = _filepath + _name;
            codebehind ob = new codebehind();
            ob.insert("Ketab", "KEnvan,ImageURL,PersonalID,Path,Zaban", "'" + envantxt.Text + "','"+image+"','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
            clear();

        }
    }
    public void clear()
    {
        envantxt.Text = "";
    }
}
