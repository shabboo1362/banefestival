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

public partial class topUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["zaban"] != null)
        {
            if (Session["zaban"].ToString() == "kurdi")
            {
                Menu1.Items[0].Text = "لاپەرەی یەكەم";
                Menu1.Items[1].Text = "پەیوەندی";
                Menu1.Items[2].Text = "لەمەڕئێمەوە";
            }
        }

    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu2.SelectedValue == "Ku")
        {
            Session["zaban"] = "kurdi";
            Response.Redirect(this.Parent.Page.ToString().Remove(0,4).Replace("_","."));
        }
        if (Menu2.SelectedValue == "Fa")
            Session["zaban"] = "farsi";
        Response.Redirect(this.Parent.Page.ToString().Remove(0, 4).Replace("_", "."));
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "Home")
            Response.Redirect("form1.aspx");
        if (Menu1.SelectedValue == "connectus")
            Response.Redirect("connectus.aspx");
        if (Menu1.SelectedValue == "aboutus")
            Response.Redirect("aboutus.aspx");
        
    }
}
