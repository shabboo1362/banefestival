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

public partial class farhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["zaban"] != null)
            fullgrid();
    }
    public void fullgrid()
    {
        codebehind ob = new codebehind();
        DataSet ds = new DataSet();
        if(Session["zaban"].ToString() == "kurdi"){
            ob.get_Info("FEnvan,FPath", "farhang", "zaban=1", ds);
            GridView1.Columns[0].HeaderText="";
        }
        else
            ob.get_Info("FEnvan,FPath", "farhang", "zaban=0", ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
          
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fullgrid();
    }
}
