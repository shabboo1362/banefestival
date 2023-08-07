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

public partial class admin_person : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            if (!Page.IsPostBack)
                fill();
        }
        else
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");
    }
    public void fill()
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        ob.get_Info("NaghshID,NaghshName", " Naghsh" , "NaghshID Is not null", ds);
        naghshddl.DataSource = ds.Tables[0];
        naghshddl.DataBind();
       
    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            codebehind ob = new codebehind();
            int id = 0;
            if (masir.FileName.Length != 0)
            {
                string _filepath = "";
                _filepath = Request.PhysicalApplicationPath + "image\\";
                string[] _filename = masir.PostedFile.FileName.Split('\\');
                string _name = _filename[_filename.Length - 1];
                int _filelen = masir.PostedFile.ContentLength;
                string _filetype = masir.PostedFile.ContentType.ToString();
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
                if (_filetype != "image/pjpeg")
                {
                    RegisterStartupScript("", ("‰Ê⁄ ›«Ì· »«Ìœ  jpeg»«‘œ"));
                    return;
                }
                masir.PostedFile.SaveAs(_filepath + _name);
                string dd = _filepath + _name;
                id = ob.insert("Personal", "FirstName,LastName,FirstNamek,LastNamek,NaghshID,ImageUrl", "'" + firstnametxt.Text + "','" + lastnametxt.Text + "','" + namektxt.Text + "','" + lastnamektxt.Text + "','" + int.Parse(naghshddl.SelectedValue.ToString()) + "','"+dd+"'");
            }
            else
                id = ob.insert("Personal", "FirstName,LastName,FirstNamek,LastNamek,NaghshID", "'" + firstnametxt.Text + "','" + lastnametxt.Text + "','" + namektxt.Text + "','" + lastnamektxt.Text + "','" + int.Parse(naghshddl.SelectedValue.ToString()) + "'");
            if (takhalostxt.Text != "")
                    ob.update("Personal", "Takhalos='" + takhalostxt.Text + "'", "PersonalID='" + id + "'");
            if (biographytxt.Text != "")
                    ob.update("Personal", "Biography='" + biographytxt.Text + "'", "PersonalID='" + id + "'");
         
            clear(); 
        }

    }
    public void clear()
    {
        namektxt.Text="";
        firstnametxt.Text = "";
        lastnamektxt.Text = "";
        lastnametxt.Text = "";
        takhalostxt.Text = "";
        biographytxt.Text = "";
    }
}
