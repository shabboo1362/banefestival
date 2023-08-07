using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;

public partial class admin_dastan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["admin"] != null)
        {
            if (!Page.IsPostBack)
            {
                fill();
                if (Page.Request["ID"].ToString() == "m")
        {
            montakhab.Visible = false;
            bargozide.Visible = false;
        }
            }

        }
        else
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");
    }
    public void fill()
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        ob.get_Info("PersonalID,FirstName,LastName,FirstNameK", "Personal inner join Naghsh on Naghsh.NaghshID=Personal.NaghshID", "Naghsh.NaghshID=1 or Naghsh.NaghshID=2", ds);
        ob.get_Info("JashnvareID,JashnvareNameF", "Jashnvare", "JashnvareID IS NOT NULL", ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            ds.Tables[0].Rows[i][3] = (ds.Tables[0].Rows[i][1].ToString() + " " + ds.Tables[0].Rows[i][2].ToString());
        }
        writterddl.DataSource = ds.Tables[0];
        writterddl.DataBind();
        jashnvareddl.DataSource = ds;
        jashnvareddl.DataBind();
        if (Page.Request["ID"] ==null || Page.Request["ID"].ToString() =="d")
        {
            ListItem item = new ListItem("مربوط به جشنواره نمیباشد");
            item.Value = "00";
            item.Selected = true;
            jashnvareddl.Items.Add(item);
            montakhab.Visible = true;
        }
       
    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            
            string _filepath = "";
            if (Page.Request["ID"].ToString() ==null ||  Page.Request["ID"].ToString() == "d")
            _filepath = Request.PhysicalApplicationPath + "dastan\\";
            else if (Page.Request["ID"].ToString() == "m")
            _filepath = Request.PhysicalApplicationPath + "maghale\\";
            string[] _filename = masir.PostedFile.FileName.Split('\\');
            string _name = _filename[_filename.Length - 1];
            int _filelen = masir.PostedFile.ContentLength;
            string _filetype = masir.PostedFile.ContentType.ToString();
            if (System.IO.File.Exists(_filepath + _name))
            {
                RegisterStartupScript("","! لطفا نام فايل خود را تغيير دهيد");
                return;
            }
            if (_filetype != "text/html")
            {
                RegisterStartupScript("", "نوع فايل بايد  pdfباشد");
                return;
            }

            masir.PostedFile.SaveAs(_filepath + _name);
            string dd = _filepath + _name;
            codebehind ob = new codebehind();
            if (Page.Request["ID"] == null || Page.Request["ID"].ToString() == "d")
            {
                if (jashnvareddl.SelectedValue != "00")
                    ob.insert("Dastan", "DEnvan,Bargozide,JashnvareID,PersonalID,DPath,Zaban", "'" + envantxt.Text + "','" + int.Parse(bargoziderbl.SelectedValue.ToString()) + "','" + int.Parse(jashnvareddl.SelectedValue.ToString()) + "','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
                else
                    ob.insert("Dastan", "DEnvan,Montakhab,PersonalID,DPath,Zaban", "'" + envantxt.Text + "','" + int.Parse(montakahbrbl.SelectedValue.ToString()) + "','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
            }
            else if (Page.Request["ID"].ToString() == "m")
                ob.insert("Maghale", "MEnvan,JashnvareID,PersonalID,Path,Zaban", "'" + envantxt.Text + "','" + int.Parse(jashnvareddl.SelectedValue.ToString()) + "','" + int.Parse(writterddl.SelectedValue.ToString()) + "','" + dd + "','" + int.Parse(zabanrbl.SelectedValue.ToString()) + "'");
            clear();
            
        }
    }
    public void clear()
    {
        envantxt.Text = "";
    }
    protected void jashnvareddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Page.Request["ID"] == null || Page.Request["ID"].ToString() == "d"){
            if (jashnvareddl.SelectedValue == "00")
            {
                montakhab.Visible = true;
                bargozide.Visible = false;
            }
            else
            {
                montakhab.Visible = false;
                bargozide.Visible = true;
            }
        }
    }
}
