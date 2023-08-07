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

public partial class namaiesh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["zaban"] != null)
            fullgrid();
    }
    private void fullgrid()
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        if (Session["zaban"].ToString() == "kurdi")
        {

            GridView1.Columns[0].HeaderText = " نوسەر ";
            GridView1.Columns[1].HeaderText = " بابەت ";
            ob.get_Info("Npath,Envan,FirstNameK,LastNameK,Takhalos as name", "Namaiesh inner join Personal  on Namaiesh.PersonalID=Personal.PersonalID", "zaban=1", ds);
        }
        else
            ob.get_Info("Npath,Envan,FirstName,LastName,Takhalos as name", "Namaiesh inner join Personal  on Namaiesh.PersonalID=Personal.PersonalID", "zaban=0", ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            ds.Tables[0].Rows[i][4] = (ds.Tables[0].Rows[i][2].ToString() + " " + ds.Tables[0].Rows[i][3].ToString());
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fullgrid();
    }
}
