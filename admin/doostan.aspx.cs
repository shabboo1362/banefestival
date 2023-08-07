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

public partial class admin_doostan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");

    }
    protected void submitcmd_Click(object sender, EventArgs e)
    {
        if (ValidationSummary1.Page.IsValid)
        {
            codebehind ob = new codebehind();

            ob.insert("Site", "SiteTypeF,SiteTypeK,Url", "'" + typektxt.Text + "','" + typetxt.Text + "','" + urltxt.Text + "'");
        }
    }
}
