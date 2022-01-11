using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BizAppDev
{
    public partial class StaffAddPointTier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<int> addedPerks = new List<int>();
            addedPerks.Add(2);
            HttpContext.Current.Session["list"] = addedPerks ;
            addedPerks = (List<int>)HttpContext.Current.Session["list"];
            addedPerks.Add(1);
            HttpContext.Current.Session["list"] = addedPerks;

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Customer updated successfully');</script>");

        }


        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "AddPerk")
            {
            }
            else
            {
                Response.Write("<script>alert('Customer updated successfully');</script>");

            }
            int result = 0;
            string queryStr = "INSERT INTO PointTiersPerks(PerkID,pointTierID)"
                + " values (@PerkID,@pointTierID)";
            string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            int pointTierID = 1;
            int PerkID = int.Parse(e.CommandArgument.ToString());
            cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            cmd.Parameters.AddWithValue("@PerkID", PerkID);
            conn.Open();

            List<int> checkPerklist = new List<int>();
            checkPerklist = (List<int>)HttpContext.Current.Session["list"];
            checkPerklist.Add(3);
            if (checkPerklist.Contains(int.Parse(e.CommandArgument.ToString())))
            {
                Response.Write("<script>alert('Perk already added!');</script>");
            }
            else
            {
                result += cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    int argInt = int.Parse((e.CommandArgument).ToString());
                    lbl_PerkList.Text += " " + e.CommandArgument.ToString() + "; ";
                    checkPerklist.Add(argInt);
                    HttpContext.Current.Session["list"] = checkPerklist;
                }
                else
                {

                }
            }

            conn.Close();


        }
    }
}