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
using System.Data.SqlTypes;
using System.Data.SqlClient;

public partial class hashie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["zaban"]!=null && Page.Request["ID"]!=null)
            full();
    }
    public void full()
    {
        string constraint="";
        codebehind ob= new codebehind();
        SqlDataReader dr ;
        if (Session["zaban"].ToString() == "kurdi")
            constraint += "zaban=1";
        else
            constraint += "zaban=0";
        constraint += " AND JashnvareID=" + Page.Request["ID"].Remove(0, 1);
        if (Page.Request["ID"].Remove(1)=="n")
            dr = ob.get_UserInfo("Naghd", "Hashie", constraint);
        else
            dr = ob.get_UserInfo("RaiDavaran", "Hashie",constraint);
        if (dr.Read())
            td1.InnerText = dr[0].ToString();
        dr.Close();
        
    }
}
