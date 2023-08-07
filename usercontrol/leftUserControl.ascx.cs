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

public partial class leftUserControl : System.Web.UI.UserControl
{
    private codebehind ob = new codebehind();
    private DataSet dataset = new DataSet("dastan");
    protected void Page_Load(object sender, EventArgs e)
    {
        fullgrid();
    }
    public void fullgrid()
    {
        if(Session["zaban"] != null){
            if (Session["zaban"].ToString() == "kurdi")
            {
                searchddl.Items[0].Text = "چیڕۆ‌ک";
                searchddl.Items[1].Text = "شێعر";
                searchddl.Items[2].Text = "كتێب";
                searchddl.Items[3].Text = "وتار";
                searchddl.Items[4].Text = "شانۆ";
                searchcmd.Text = "گەڕان";
                ob.get_Info("DEnvan,DastanID,Dpath,FirstName,LastName,Takhalos", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "Montakhab=1 AND DZaban=1 AND JashnvareID IS NULL", dataset);
                ob.get_Info("ImageID,Image,IName", "AllImage", "Montakhab=1", dataset);
                GridView1.Caption = "چیڕۆ‌ک";
                GridView2.Caption = "وێنە";
            }
            else
            {
                ob.get_Info("ImageID,Image,IName", "AllImage", "Montakhab=1", dataset);
                ob.get_Info("DEnvan,DastanID,Dpath,FirstName,LastName,Takhalos", "Dastan inner join Personal  on Dastan.PersonalID=Personal.PersonalID", "Montakhab=1 AND DZaban=0 AND JashnvareID IS NULL", dataset);
            }
        for (int i = 0; i < dataset.Tables[0].Rows.Count; i++)
        {
            dataset.Tables[0].Rows[i][5] = (dataset.Tables[0].Rows[i][3].ToString() + dataset.Tables[0].Rows[i][4].ToString());
        }
        GridView1.DataSource = dataset;
        GridView1.DataBind();
        GridView2.DataSource = dataset;
        GridView2.DataBind();
        if (Session["zaban"].ToString() == "kurdi")
        {
            GridView1.Columns[0].HeaderText = "";
            GridView1.Columns[1].HeaderText = "نوسەر";

        }
        }

    }
    //protected void GridView1_PageIndexChanged(object sender,EventArgs e)
    //{
    //    GridViewPageEventArgs d = new GridViewPageEventArgs(GridView1.);
    //    GridView1.PageIndex = d.NewPageIndex;
    //    fullgrid();
    //}
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
    protected void searchcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            Response.Redirect("search.aspx?select="+searchddl.SelectedValue.ToString()+"&envan="+searchtb.Text);
        }
        
    }
   
}
