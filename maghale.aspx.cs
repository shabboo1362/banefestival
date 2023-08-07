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

public partial class maghale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["zaban"] != null && Page.Request["ID"] != null)
            full();
    }
    public void full()
    {
        string constraint = "";
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        constraint += "JashnvareID=" + int.Parse(Page.Request["ID"].ToString());
       if (Session["zaban"].ToString() == "kurdi")
       {

           GridView1.Columns[0].HeaderText = " نوسەر ";
           GridView1.Columns[1].HeaderText = " بابەت ";
            constraint += " AND zaban=1";
            ob.get_Info("path,MEnvan,FirstNameK,LastNameK,Takhalos as writter", "Maghale inner join Personal  on Maghale.PersonalID=Personal.PersonalID", constraint, ds);
       }
        else
       {
           constraint += "AND zaban=0";
           ob.get_Info("path,MEnvan,FirstName,LastName,Takhalos as writter", "Maghale inner join Personal  on Maghale.PersonalID=Personal.PersonalID", constraint, ds);
       }
       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {
           ds.Tables[0].Rows[i][4] = (ds.Tables[0].Rows[i][2].ToString() +" " + ds.Tables[0].Rows[i][3].ToString());
       }
       GridView1.DataSource = ds;
       GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        full();
    }
}
