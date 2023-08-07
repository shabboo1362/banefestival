using System;
using System.IO;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            //fill();

    }
    public void fill()
    {
        Label1.Text = "index.html";
        //if(File.Exists(Page.Request["P"].ToString()))
        //  frame1.InnerHtml =File.ReadAllBytes("index.html").ToString();
    }
}
