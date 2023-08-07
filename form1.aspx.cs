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

public partial class form1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fullgrid();
    }
    public void fullgrid() 
    {
        //if (Session["zaban"] == "Kurdi")
        //{
        //    GridView1.Columns[0].HeaderText=
        //}
        DataSet ds = new DataSet();
        codebehind ob= new codebehind();
        if (Session["zaban"].ToString() == "kurdi")
            ob.get_Info("ImageURL,Summery,KhPath,KhabarID", "Khabar", "Zaban=1 order by  KhabarID desc", ds);
        else
            ob.get_Info("ImageURL,Summery,KhPath", "Khabar", "Zaban=0 order by  KhabarID desc", ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fullgrid();
    }
}
