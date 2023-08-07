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

public partial class image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["zaban"]!=null && Page.Request["ID"] != null)
            fullgrid();
    }
    public void fullgrid() 
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        string constraint="";
        if (Page.Request["ID"].ToString() == "g")
        {
            if (Session["zaban"].ToString() == "kurdi")
            {
                GridView3.Columns[0].HeaderText = " وێنە";
                GridView3.Columns[1].HeaderText = " Andaze";
                GridView3.Columns[2].HeaderText = "سازكەر";
                ob.get_Info("Graphic.ImageURL,Andaze,FirstNameK,LastNameK,Takhalos as name", "Graphic inner join Personal  on Graphic.PersonalID=Personal.PersonalID", "GraphicID is not null", ds);
            }
            else
                ob.get_Info("Graphic.ImageURL,Andaze,FirstName,LastName,Takhalos as name", "Graphic inner join Personal  on Graphic.PersonalID=Personal.PersonalID", "GraphicID is not null", ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ds.Tables[0].Rows[i][4] = (ds.Tables[0].Rows[i][2].ToString() +" " + ds.Tables[0].Rows[i][3].ToString());
            }
            GridView3.DataSource = ds;
            GridView3.DataBind();
        }
        else
        {
            constraint += "JashnvareID=" + int.Parse(Page.Request["ID"].Remove(0, 1).ToString());
            if (Page.Request["ID"].Remove(1).ToString() == "i")
            {
                if (Session["zaban"].ToString() == "kurdi")
                {
                    GridView1.Columns[0].HeaderText = " وێنە";
                    GridView1.Columns[1].HeaderText = " ناو";
                    ob.get_Info("ImageUrl,INameK as name", "Image", constraint, ds);
                }
                else
                    ob.get_Info("ImageUrl,IName as name", "Image", constraint, ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (Page.Request["ID"].Remove(1).ToString() == "p")
            {
                if (Session["zaban"].ToString() == "kurdi")
                {
                    GridView2.Columns[0].HeaderText = " وێنە";
                    GridView2.Columns[1].HeaderText = " ناو";
                    GridView2.Columns[2].HeaderText = "سازكەر";
                    ob.get_Info("Poster.ImageUrl,PName as name,FirstNameK,LastNameK,Takhalos as TarahName", "Poster inner join Personal  on Poster.PersonalID=Personal.PersonalID", constraint, ds);
                }
                else
                    ob.get_Info("Poster.ImageUrl,PName as name,FirstName,LastName,Takhalos as TarahName", "Poster inner join Personal  on Poster.PersonalID=Personal.PersonalID", constraint, ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ds.Tables[0].Rows[i][4] = (ds.Tables[0].Rows[i][2].ToString() + " " + ds.Tables[0].Rows[i][3].ToString());
                }
            }
            else if (Page.Request["ID"].Remove(1).ToString() == "m")
            {
                if (Session["zaban"].ToString() == "kurdi")
                {
                    GridView2.Columns[0].HeaderText = " وێنە";
                    GridView2.Columns[1].HeaderText = " ناو";
                    ob.get_Info("ImageUrl,MNameK as name", "Matboat", constraint, ds);
                }
                else
                    ob.get_Info("ImageUrl,MName as name", "Matboat", constraint, ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
       

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fullgrid();
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        fullgrid();
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        fullgrid();
    }
}
