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
using System.Data.OleDb;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;


#region ThumbFromID CLASS
/// <summary>
/// ThumbFromID inherits from <see System.Web.UI.Page>System.Web.UI.Page</see>
/// Retrieves a binary array from the SQL Server database by the use of the
/// <see dbAccess>dbAccess</see>class. Once this binary
/// array is retrieved from the database, it is written to a memory stream
/// which is then written to the standard Html Response stream, this binary data represents
/// an image from the database, which has been scaled using the fields within this class
/// </summary>
public partial class ThumbFromID : System.Web.UI.Page
{
    #region Instance Fields
    // constants used to create URLs to this page
    public const String PAGE_NAME = "ThumbFromID.aspx";
    //the image primary key for use when getting image data from database
    public const String IMAGE_ID = "img_pk";
    // height of the thumbnail created from the original image
    public static int THUMBNAIL_SIZE;
    // true if using thumbnail THUMBNAIL_SIZE for height, else it is used for width
    public static bool USE_SIZE_FOR_HEIGHT;
    #endregion
    #region Private Methods
    /// <summary>
    /// Retrieves a binary array from the SQL Server database by the use of the
    /// <see dbAccess>dbAccess</see>class. Once this binary
    /// array is retrtieved from the database, it is written to a memory stream
    /// which is then written to the standard Html Response stream, this binary data represents
    /// an image from the database, which has been scaled using the fields within this class
    /// </summary>
    private void Page_Load(object sender, System.EventArgs e)
    {
        byte[] imageData = null;
        MemoryStream ms = null;
        System.Drawing.Image fullsizeImage = null;
        String imageID = null;

        if (!Page.IsPostBack)
        {
            try
            {
                // get the ID of the image to retrieve from the database
                imageID = Request.QueryString[IMAGE_ID];
                imageData = dbAccess.GetImageByID(int.Parse(imageID));

                // create an image from the byte array
                ms = new MemoryStream(imageData);
                fullsizeImage = System.Drawing.Image.FromStream(ms);

                Response.ContentType = "image/Jpeg";
                ImageResize ir = new ImageResize();

                // Load your image and perform any resizing here
                ir.File = fullsizeImage;
                if (USE_SIZE_FOR_HEIGHT)
                    ir.Height = THUMBNAIL_SIZE;
                else
                    ir.Width = THUMBNAIL_SIZE;
                //get the thumbnail
                ir.GetThumbnail().Save(Response.OutputStream,
                    System.Drawing.Imaging.ImageFormat.Jpeg);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
            finally
            {
                ms.Close();
            }
        }
    }
    #endregion
    #region Web Form Designer generated code
    /// <summary>
    /// privided automaitically by Web Form Designer 
    /// </summary>
    /// <param name="e">the event args</param>
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        //
        InitializeComponent();
        base.OnInit(e);
    }

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        this.Load += new System.EventHandler(this.Page_Load);
    }
    #endregion
}
#endregion
