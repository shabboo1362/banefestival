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
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.IO;
using System.Drawing.Imaging;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
            Response.Redirect("../error.aspx?pageerror=" + "Deny Access");

    }

    protected void Upload_Click(object sender, EventArgs e)
    {
        //int len = Upload.PostedFile.ContentLength;
        //byte[] pic = new byte[len];
        //Upload.PostedFile.InputStream.Read(pic, 0, len);
        //// Insert the image and comment into the database
        //codebehind ob = new codebehind();
        //ob.insert("AllImage","IName,PersonalID,Image","'"+TextBox1.Text.ToString()+"',1,'"+pic+"'");
        ////SqlConnection connection = new
        ////  SqlConnection(@"server=INDIA\INDIA;database=iSense;uid=sa;pwd=india");
        ////try
        ////{
        ////    connection.Open();
        ////    SqlCommand cmd = new SqlCommand("insert into Image "
        ////      + "(Picture, Comment) values (@pic, @text)", connection);
        ////    cmd.Parameters.Add("@pic", pic);
        ////    cmd.Parameters.Add("@text", Comment.Text);
        ////    cmd.ExecuteNonQuery();
        ////}
        ////finally
        ////{
        ////    connection.Close();
        ////}
    }
}
