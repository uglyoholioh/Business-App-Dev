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
            int tierID = 0;
            Session["tierID"] = tierID; 
            List<int> addedPerks = new List<int>();
            addedPerks.Add(2);
            HttpContext.Current.Session["list"] = addedPerks ;
            addedPerks = (List<int>)HttpContext.Current.Session["list"];
            addedPerks.Add(1);
            HttpContext.Current.Session["list"] = addedPerks;
            string perkIDqueryStr = "SELECT top 1 pointTierID from PointTiers order by pointTierID desc";
            string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            SqlConnection IDconn = new SqlConnection(_connStr);
            SqlCommand IDcmd = new SqlCommand(perkIDqueryStr, IDconn);
            IDconn.Open();
            SqlDataReader dr = IDcmd.ExecuteReader();
            if (dr.Read())
            {
                tierID = int.Parse(dr["pointTierID"].ToString());
                tierID += 1;
                IDconn.Close();
                Session["tierID"] = tierID;

            }
            else
            {
                Response.Write("<script>alert('walao!');</script>");

            }
        }



        protected void btn_Submit_Click1(object sender, EventArgs e)
        {
            int pointtierresult = 0;
            bool valid = true;
            string tierqueryStr = "INSERT INTO PointTiers" + " values (@pointTierID,@name,@descr,@price)";
            string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            SqlConnection tierconn = new SqlConnection(_connStr);
            SqlCommand tiercmd = new SqlCommand(tierqueryStr, tierconn);
            string name = tb_Name.Text;
            string descr = tb_descr.Text;
            int pointTierID = int.Parse(Session["tierID"].ToString());
            int price = int.Parse(tb_price.Text);
            tiercmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            tiercmd.Parameters.AddWithValue("@name", name);
            tiercmd.Parameters.AddWithValue("@descr", descr);
            tiercmd.Parameters.AddWithValue("@price", price);

            tierconn.Open();
            pointtierresult += tiercmd.ExecuteNonQuery();
            if (pointtierresult > 0)
            {

            }
            else
            {
                valid = false;
            }
            if (cbl_Perks.SelectedIndex > -1)
            {
                int result = 0;
                int selected = 0;

                for (int i = 0; i < cbl_Perks.Items.Count; i++)
                {
                    if (cbl_Perks.Items[i].Selected)
                    {
                        selected += 1;
                        string queryStr = "INSERT INTO PointTiersPerks(PerkID,pointTierID)"
                            + " values (@PerkID,@pointTierID)";
                        SqlConnection conn = new SqlConnection(_connStr);
                        SqlCommand cmd = new SqlCommand(queryStr, conn);
                        int PerkID = int.Parse(cbl_Perks.Items[i].ToString());
                        cmd.Parameters.AddWithValue("@PerkID", PerkID);
                        cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
                        conn.Open();
                        result += cmd.ExecuteNonQuery();

                    }
                }
                if (result == selected)
                {

                }
                else
                {
                    valid = false;
                }

            }
            if (valid == false)
            {
                Response.Write("<script>alert('Point tier creation unsuccessful');</script>");
            }
            else
            {
                Response.Write("<script>alert('Points tier created!');</script>");
            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {

        }
    }
}