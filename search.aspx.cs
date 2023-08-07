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

public partial class search : System.Web.UI.Page
{
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
        DataSet ds = new DataSet();
        codebehind ob = new codebehind();
        if (Page.Request["select"] != null)
        {
            string table = Page.Request["select"].ToString();
            string envan ="%"+Page.Request["envan"].ToString()+"%";
            if (table == "Dastan")
                ob.get_Info("DEnvan as envan,DPath as path,FirstName,LastName,Takhalos as writter", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "DEnvan  like '" + envan + "'", ds);
            else if(table == "Ketab")
                ob.get_Info("KEnvan as envan,Path as path,FirstName,LastName,Takhalos as writter", "Ketab inner join Personal  on Ketab.PersonalID=Personal.PersonalID", "KEnvan  like '" + envan + "'", ds);
            else if(table == "Sher")
                ob.get_Info("Envan as envan,SPath as path,FirstName,LastName,Takhalos as writter", "Sher inner join Personal  on Sher.PersonalID=Personal.PersonalID", "Envan  like '" + envan + "'", ds);
            else if(table == "Namaiesh")
                ob.get_Info("Envan as envan,NPath as path,FirstName,LastName,Takhalos as writter", "Namaiesh inner join Personal  on Namaiesh.PersonalID=Personal.PersonalID", "Envan  like '" + envan + "'", ds);
            else if (table == "Maghale")
                ob.get_Info("Menvan as envan,Path as path,FirstName,LastName,Takhalos as writter", "Maghale inner join Personal  on Maghale.PersonalID=Personal.PersonalID", "Menvan  like '" + envan + "'", ds);
            if (ds.Tables[0].Rows.Count <= 0)
            {
                Label1.Visible = true;
                return;
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
