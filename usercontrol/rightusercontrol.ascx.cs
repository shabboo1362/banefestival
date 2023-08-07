using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class rightusercontrol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            checklang();
            fullgrid();
        }
    }
    public void checklang() 
    {
        if (Session["zaban"]!= null && Session["zaban"].ToString() == "kurdi")
        {
            jashnvarelbl.Text = "فستیڤال";
            honarlbl.Text = "هونەر";
            mosighilink.Text = "موسیقا";
            geraphiclink.Text = "گرافیك";
            namaieshlink.Text = "شانۆ";
            dostanlink.Text = "دراوسێكان";
            sherlink.Text = "شێعر";
            farhanglink.Text = "فەرهەنگ";
            HyperLink1.Text = "كتێب";
            
        }
    }
    public void fullgrid()
    {
        DataSet dataset= new DataSet();
        codebehind ob= new codebehind();
        ob.get_Info("JashnvareNameK,JashnvareNameF,ImageURL,JashnvareID", "Jashnvare", "JashnvareID IS NOT NULL", dataset);
        //MenuItem menuitem = new MenuItem();
        if(Session["zaban"]!=null){
        for(int i=0; i< dataset.Tables[0].Rows.Count ; i++){
            if ( Session["zaban"].ToString() == "kurdi")
            {
                MenuItem menuitem = new MenuItem(dataset.Tables[0].Rows[i][0].ToString());
                menuitem.Value = dataset.Tables[0].Rows[i][3].ToString();
                Menu1.Items.Add(menuitem);
                Menu1.Items[i].ImageUrl = dataset.Tables[0].Rows[i][2].ToString();
                Menu1.Items[i].Selectable = false;
                MenuItem menuitem1 = new MenuItem("چیڕۆ‌ک");
                menuitem1.Value = "dastan";
                Menu1.Items[i].ChildItems.Add(menuitem1);
                MenuItem menuitem2 = new MenuItem("وتار");
                menuitem2.Value = "maghale";
                Menu1.Items[i].ChildItems.Add(menuitem2);
                MenuItem menuitem3 = new MenuItem("وێنە");
                menuitem3.Value = "image";
                Menu1.Items[i].ChildItems.Add(menuitem3);
                MenuItem menuitem7 = new MenuItem("بڵاڤۆكان");
                menuitem7.Value = "matboat";
                Menu1.Items[i].ChildItems.Add(menuitem7);
                MenuItem menuitem4 = new MenuItem("ڕەخنە");
                menuitem4.Value = "naghd";
                Menu1.Items[i].ChildItems.Add(menuitem4);
                MenuItem menuitem5 = new MenuItem("بڕیارنامەی داوەران");
                menuitem5.Value = "davaran";
                Menu1.Items[i].ChildItems.Add(menuitem5);
                MenuItem menuitem6 = new MenuItem("بڵاڤۆی ناوخۆ");
                menuitem6.Value = "bulten";
                Menu1.Items[i].ChildItems.Add(menuitem6);
                MenuItem menuitem8 = new MenuItem("پۆستێر");
                menuitem8.Value = "poster";
                Menu1.Items[i].ChildItems.Add(menuitem8);
            }
            else if( Session["zaban"].ToString() == "farsi")
            {
                MenuItem menuitem = new MenuItem(dataset.Tables[0].Rows[i][1].ToString());
                menuitem.Value = dataset.Tables[0].Rows[i][3].ToString();
                Menu1.Items.Add(menuitem);
                Menu1.Items[i].Selectable = false;
                Menu1.Items[i].ImageUrl= dataset.Tables[0].Rows[i][2].ToString();
                MenuItem menuitem1 = new MenuItem("داستان");
                menuitem1.Value = "dastan";
                Menu1.Items[i].ChildItems.Add(menuitem1);
                MenuItem menuitem2 = new MenuItem("مقاله");
                menuitem2.Value = "maghale";
                Menu1.Items[i].ChildItems.Add(menuitem2);
                MenuItem menuitem3 = new MenuItem("عکس");
                menuitem3.Value = "image";
                Menu1.Items[i].ChildItems.Add(menuitem3);
                MenuItem menuitem7 = new MenuItem("مطبوعات");
                menuitem7.Value = "matboat";
                Menu1.Items[i].ChildItems.Add(menuitem7);
                MenuItem menuitem4 = new MenuItem("نقد");
                menuitem4.Value = "naghd";
                Menu1.Items[i].ChildItems.Add(menuitem4);
                MenuItem menuitem5 = new MenuItem("رای داوران");
                menuitem5.Value = "davaran";
                Menu1.Items[i].ChildItems.Add(menuitem5);
                MenuItem menuitem6 = new MenuItem("نشریه");
                menuitem6.Value = "bulten";
                Menu1.Items[i].ChildItems.Add(menuitem6);
                MenuItem menuitem8 = new MenuItem("پوستر");
                menuitem8.Value = "poster";
                Menu1.Items[i].ChildItems.Add(menuitem8);
            }
        }
        }
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        SqlDataReader dr;
        codebehind ob = new codebehind();
        string path = "";
        if (Menu1.SelectedItem.Value == "dastan")
            Response.Redirect("dastan.aspx?ID=" + Menu1.SelectedItem.Parent.Value + "");
        if (Menu1.SelectedItem.Value == "maghale")
            Response.Redirect("maghale.aspx?ID=" + Menu1.SelectedItem.Parent.Value + "");
        if (Menu1.SelectedItem.Value == "image")
            Response.Redirect("image.aspx?ID=i" + Menu1.SelectedItem.Parent.Value + "");
        if (Menu1.SelectedItem.Value == "matboat")
            Response.Redirect("image.aspx?ID=m" + Menu1.SelectedItem.Parent.Value + "");
        if (Menu1.SelectedItem.Value == "naghd")
        {
            dr = ob.get_UserInfo("NPath", "Hashie", "JashnvareID='"+Menu1.SelectedItem.Parent.Value+"'");
            if (dr.Read())
                path = dr.GetValue(0).ToString();
            dr.Close();
            if (path != "")
             Response.Redirect(path);
        }
        if (Menu1.SelectedItem.Value == "davaran")
        {
            dr = ob.get_UserInfo("RPath", "Hashie", "JashnvareID='" + Menu1.SelectedItem.Parent.Value + "'");
            if (dr.Read())
                path = dr.GetValue(0).ToString();
            dr.Close();
            if (path != "")
            Response.Redirect(path);
        }
        if (Menu1.SelectedItem.Value == "bulten")
        {
            dr = ob.get_UserInfo("Path", "Bulten", "JashnvareID='" + Menu1.SelectedItem.Parent.Value + "'");
            if (dr.Read())
                path = dr.GetValue(0).ToString();
            dr.Close();
            if(path!="")
                Response.Redirect(path);
        }
        if (Menu1.SelectedItem.Value == "poster")
            Response.Redirect("image.aspx?ID=p" + Menu1.SelectedItem.Parent.Value + "");
        
    }
}
