using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

#region dbAccess CLASS
/// <summary>
/// Provides a wrapper around the underyling SQL database. This class
/// provides all methods that are required to INSERT / SELECT 
/// images within the underyling SQL database. 
/// </summary>
public sealed class dbAccess
{
    /// <summary>
    /// Returns a Byte[] array which represents the database stored image
    /// whos primary key is the same as the img_pk input parameter
    /// </summary>
    /// <param name="img_pk">The primary key of the image to retrieve</param>
    /// <returns>A Byte[] array which represents the database stored image
    /// whos primary key is the same as the img_pk input parameter</returns>
    public static byte[] GetImageByID(int img_pk)
    {
        //use the web.config to store the connection string, using statement ensure connection always closes				
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EasyThumbs_DB"].ConnectionString))
        {
            try
            {
                SqlCommand command = new SqlCommand("sp_GetImageByID", connection);
                command.CommandType = CommandType.StoredProcedure;
                //build params
                SqlParameter param0 = new SqlParameter("@img_pk", SqlDbType.Int);
                param0.Value = img_pk;
                command.Parameters.Add(param0);
                //open connection, and execute stored procedure
                connection.Open();
                byte[] imgdata = (byte[])(command.ExecuteScalar());
                connection.Close();
                return imgdata;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }
    }

    /// <summary>
    /// Inserts a new image using the details provided, and will then update the input parameter
    /// img_pk with the correct primary key value from the database, and shall also return the
    /// number of rows affected by the call to this method.
    /// </summary>
    /// <param name="img_pk">The image primary key, the will get assigned value by this method call
    /// as the parameter is passed by Reference</param>
    /// <param name="imgbin">A byte[] array representing the image to be stored</param>
    /// <returns>The number of rows affected by the call to this method</returns>
    public static int SaveImageToDB(ref int img_pk, byte[] imgbin)
    {
        try
        {
            //use the web.config to store the connection string, using statement ensure connection always closes				
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EasyThumbs_DB"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("sp_AddImage", connection);
                command.CommandType = CommandType.StoredProcedure;
                //build params
                int IMG_PK = 0;
                SqlParameter param0 = new SqlParameter("@img_pk", SqlDbType.Int);
                param0.Value = IMG_PK;
                command.Parameters.Add(param0);
                param0.Direction = ParameterDirection.Output;
                SqlParameter param1 = new SqlParameter("@img_data", SqlDbType.Image);
                param1.Value = imgbin;
                command.Parameters.Add(param1);
                //open connection, and execute stored procedure
                connection.Open();
                int numRowsAffected = command.ExecuteNonQuery();
                connection.Close();
                //set the ref parameter and return value
                img_pk = int.Parse(param0.Value.ToString());
                //return the rows affected
                return numRowsAffected;
            }
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message, ex);
        }
    }

    /// <summary>
    /// Returns a DataSet which contains all database stored images
    /// </summary>
    /// <returns>A DataSet which contains all database stored images
    /// images</returns>
    public static DataSet GetImages()
    {
        //use the web.config to store the connection string, using statement ensure connection always closes				
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EasyThumbs_DB"].ConnectionString))
        {
            try
            {
                SqlCommand command = new SqlCommand("sp_GetImages", connection);
                command.CommandType = CommandType.StoredProcedure;
                //execute stored procedure and return DataSet
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                DataSet ds = new DataSet();
                da.Fill(ds, "IMAGES");
                return ds;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }
    }
}
#endregion
