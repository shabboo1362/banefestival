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

public partial class admin_sher : System.Web.UI.Page
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
        if (Page.Request["ID"].ToString() == "z")
        {
            Label1.Text = "نویسنده";
            HyperLink1.Text = "نویسنده جدید";
            ob.get_Info("TypeName as name,ZabanTypeID as ID", "ZabanType", "ZabanTypeID IS NOT NULL", ds);
            typeddl.DataSource = ds.Tables[0];
            typeddl.DataBind();
        }
        else
        {
            ob.get_Info("TypeName as name,TypeID as ID", "Type", "TypeID IS NOT NULL", ds);
            typeddl.DataSource = ds.Tables[0];
            typeddl.DataBind();
        }

        ob.get_Info("PersonalID,FirstName,LastName,FirstNameK", "Personal inner join Naghsh on Naghsh.NaghshID=Personal.NaghshID", "Naghsh.NaghshID=2 OR Naghsh.NaghshID=3", ds);
        for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
        {
            ds.Tables[1].Rows[i][3] = (ds.Tables[1].Rows[i][1].ToString() + " " + ds.Tables[1].Rows[i][2].ToString());
        }
        writterddl.DataSource = ds.Tables[1];
        writterddl.DataBind();
    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            string _filepath="";
            if (Page.Request["ID"].ToString() == "z")
                 _filepath= Request.PhysicalApplicationPath + "zaban\\";
            else
                 _filepath = Request.PhysicalApplicationPath + "sher\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("", ("! لطفا نام فايل خود را تغيير دهيد"));
                return;
            }
            if (_filetype != "text/html")
            {
                RegisterStartupScript("", ("نوع فايل بايد  jpegباشد"));
                return;
            }

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
            if (Page.Request["ID"].ToString() == "z")
                ob.insert("Sher", "ZEnvan,PersonalID,Path,Zaban,ZabanTypeID", "'" + envantxt.Text + "','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "','" + int.Parse(typeddl.SelectedValue.ToString()) + "'");
            else
                ob.insert("Sher", "Envan,PersonalID,SPath,Zaban,TypeID", "'" + envantxt.Text + "','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "','"+int.Parse(typeddl.SelectedValue.ToString())+"'");
            clear();

        }
    }
    public void clear()
    {
        envantxt.Text = "";
    }
}
