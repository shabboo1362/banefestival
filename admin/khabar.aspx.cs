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

public partial class admin_khabar : System.Web.UI.Page
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
            codebehind ob = new codebehind();
            DataSet ds = new DataSet();
            string _filepath1 = "";
            _filepath1 = Request.PhysicalApplicationPath + "khabar\\";
            string[] _filename1 = khabar.PostedFile.FileName.Split('\\');
            string _name1 = _filename1[_filename1.Length - 1];
            int _filelen1 = khabar.PostedFile.ContentLength;
            string _filetype1 = khabar.PostedFile.ContentType.ToString();
            if (masir.FileName.Length != 0)
            {
                string _filepath = "";
                _filepath = Request.PhysicalApplicationPath + "image\\";
                string[] _filename = masir.PostedFile.FileName.Split('\\');
                string _name = _filename[_filename.Length - 1];
                int _filelen = masir.PostedFile.ContentLength;
                string _filetype = masir.PostedFile.ContentType.ToString();
                if (System.IO.File.Exists(_filepath + _name) || System.IO.File.Exists(_filepath1 + _name1))
                {
                    RegisterStartupScript("", "! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                    return;
                }
                if (_filelen1 > 60000)
                {
                    RegisterStartupScript("", ("! ÕÃ„ ⁄ò” »Ì‘ «“ «‰œ«“Â „Ã«“ «” "));
                    return;
                }
                if (_filetype != "image/pjpeg")
                {
                    RegisterStartupScript("", ("‰Ê⁄ ›«Ì· »«Ìœ  jpeg»«‘œ"));
                    return;
                }
                if (_filetype1 != "text/html")
                {
                    RegisterStartupScript("", ("‰Ê⁄ ›«Ì· »«Ìœ  html»«‘œ"));
                    return;
                }
                masir.PostedFile.SaveAs(_filepath + _name);
                string dd = _filepath + _name;
                khabar.PostedFile.SaveAs(_filepath1 + _name1);
                string dd1 = _filepath1+ _name1;
                int id = ob.insert("Khabar", "KhPath,Zaban,Summery,ImageURL", "'" + dd1 + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "','" + summerytxt.Text + "','" + dd + "'");
            }
            else
            {
                if ( System.IO.File.Exists(_filepath1 + _name1))
                {
                    RegisterStartupScript("", "! ·ÿ›« ‰«„ ›«Ì· ŒÊœ —«  €ÌÌ— œÂÌœ");
                    return;
                }
                if (_filetype1 != "text/html")
                {
                    RegisterStartupScript("", ("‰Ê⁄ ›«Ì· »«Ìœ  html»«‘œ"));
                    return;
                }
                
                khabar.PostedFile.SaveAs(_filepath1 + _name1);
                string dd1 = _filepath1+ _name1;
                int id = ob.insert("Khabar", "KhPath,Zaban,Summery", "'" + dd1 + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "','" + summerytxt.Text + "'");
            }
            clear();
        }
    }
    public void clear()
    {
       summerytxt.Text = "";
    }
}
