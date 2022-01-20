using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BizAppDev
{
    public partial class EduVideoInsert : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void eduInsert_Click(object sender, EventArgs e)
        {
            if (eduVidUpload.HasFile)
            {
                string filename = Path.GetFileName(eduVidUpload.FileName);
                if (eduVidUpload.PostedFile.ContentLength < 104857600)
                {
                    eduVidUpload.SaveAs(Server.MapPath("/EducationalVideos/" + filename));
                    SqlConnection sqlconn = new SqlConnection(_connStr);
                    string query = "insert into EducationVideo(Description,Path)" + "values (@Desc,@Path)";
                    sqlconn.Open();
                    SqlCommand sqlcomm = new SqlCommand(query, sqlconn);
                    sqlcomm.Parameters.AddWithValue("@Desc", tb_vidDesc.Text);
                    sqlcomm.Parameters.AddWithValue("@Path", "/EducationalVideos/" + filename);
                    sqlcomm.ExecuteNonQuery();
                    sqlconn.Close();
                    Response.Redirect("EduVideoInsert.aspx");
                }
                else
                {
                    Response.Write("<script>alert('File too Big');</script>");
                }
            }
        }

    }
}