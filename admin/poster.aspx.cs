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

public partial class admin_poster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            if (Page.Request["ID"].ToString() == "m")
            {
                Label1.Visible = false;
                writterddl.Visible = false;
                HyperLink1.Visible = false;
                Label2.Text = "نام روزنامه(کوردی):";
                Label3.Text = "نام روزنامه(فارسی):";
            }
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
        ob.get_Info("PersonalID,FirstName,LastName,FirstNameK", "Personal inner join Naghsh on Naghsh.NaghshID=Personal.NaghshID", "Naghsh.NaghshID=5", ds);
        ob.get_Info("JashnvareID,JashnvareNameF", "Jashnvare", "JashnvareID IS NOT NULL", ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            ds.Tables[0].Rows[i][3] = (ds.Tables[0].Rows[i][1].ToString() + " " + ds.Tables[0].Rows[i][2].ToString());
        }
        writterddl.DataSource = ds.Tables[0];
        writterddl.DataBind();
        jashnvareddl.DataSource = ds;
        jashnvareddl.DataBind();
        
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
                RegisterStartupScript("", "! لطفا نام فايل خود را تغيير دهيد");
                return;
            }
            if (_filelen > 60000)
            {
                RegisterStartupScript("", ("! حجم عکس بيش از اندازه مجاز است"));
                return;
            }
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", ("! لطفا نام فايل خود را تغيير دهيد"));
                return;
            }
            if (_filetype != "image/pjpeg")
            {
                RegisterStartupScript("", ("نوع فايل بايد  jpegباشد"));
                return;
            }

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
            if (Page.Request["ID"].ToString() == "m")
            {
                ob.insert("Matboat", "JashnvareID,ImageUrl,MName,MNamek", "'"+int.Parse(jashnvareddl.SelectedValue.ToString()) + "','" + dd + "','" + nameftxt.Text + "','" + nametxt.Text + "'");
            }
            else
                ob.insert("Poster", "PersonalID,JashnvareID,ImageUrl,PName,PNamek", "'" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + int.Parse(jashnvareddl.SelectedValue.ToString()) + "','" + dd + "','" + nameftxt.Text + "','" + nametxt.Text + "'");
             clear();
        }
    }
    public void clear()
    {
        nameftxt.Text = "";
        nametxt.Text = "";
    }
}
