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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void kurdilink_Click(object sender, EventArgs e)
    {
        Session["zaban"] = "kurdi";
        Response.Redirect("form1.aspx");
    }
    protected void farsilink_Click(object sender, EventArgs e)
    {
        Session["zaban"] = "farsi";
        Response.Redirect("form1.aspx");
    }
}
