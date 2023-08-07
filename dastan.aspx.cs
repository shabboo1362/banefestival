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

public partial class dastan : System.Web.UI.Page
{
    private codebehind ob = new codebehind();
    private DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["zaban"].ToString() == "kurdi")
        {
            GridView1.Columns[0].HeaderText = "بابەت";
            GridView1.Columns[1].HeaderText = "نوسەر";
        }
        fullgrid();
    }
    public void fullgrid() 
    {
        
        if (Page.Request["ID"] !=null)
        {
            if (Session["zaban"].ToString() == "kurdi" && int.Parse(Page.Request["ID"].ToString()) != 0)
                ob.get_Info("Dpath,DEnvan,FirstNameK,LastNameK,Takhalos as writter", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "zaban=1 and JashnvareID='" + int.Parse(Page.Request["ID"].ToString()) + "'", ds);
            else if (Session["zaban"].ToString() == "kurdi" && int.Parse(Page.Request["ID"].ToString()) == 0)
                ob.get_Info("Dpath,DEnvan,FirstNameK,LastNameK,Takhalos as writter", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "zaban=1 and JashnvareID Is null", ds);
            else if (Session["zaban"].ToString() == "farsi" && int.Parse(Page.Request["ID"].ToString()) == 0)
                ob.get_Info("Dpath,DEnvan,FirstName,LastName,Takhalos as writter", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "zaban=0 and JashnvareID Is null", ds);
            else
                ob.get_Info("Dpath,DEnvan,FirstName,LastName,Takhalos as writter", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "zaban=0 and JashnvareID='" + int.Parse(Page.Request["ID"].ToString()) + "'", ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ds.Tables[0].Rows[i][4] = (ds.Tables[0].Rows[i][2].ToString() +" " + ds.Tables[0].Rows[i][3].ToString());
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fullgrid();
    }
}
