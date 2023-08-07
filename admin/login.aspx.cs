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

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        codebehind ob = new codebehind();
        if (ob.login(Login1.UserName, Login1.Password))
        {

            Session["admin"] = "1";
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {
        Login1.FailureText = "dsfasdfdsF";
    }
}
