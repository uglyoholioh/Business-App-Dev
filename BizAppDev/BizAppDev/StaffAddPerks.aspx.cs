﻿using System;
using System.Configuration;
using System.Data.SqlClient;
namespace BizAppDev
{
    public partial class StaffAddPerks : System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            string queryStr = "INSERT into Perks(Name,PDesc)" + "values(@perkName,@perkDesc)";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            string perkName = tb_Name.Text;
            string perkDesc = tb_desc.Text;
            cmd.Parameters.AddWithValue("@perkName", perkName);
            cmd.Parameters.AddWithValue("@perkDesc", perkDesc);
            int nofRow = 0;
            conn.Open();
            nofRow += cmd.ExecuteNonQuery();

            conn.Close();
            if (nofRow > 0)
            {
                Response.Write("<script>alert('Perk creation successful');</script>");

            }
        }
    }
}
