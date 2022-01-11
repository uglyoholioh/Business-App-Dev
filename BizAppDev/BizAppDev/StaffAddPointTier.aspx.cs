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

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            int pointtierresult = 0;
            bool valid = true;
            string tierqueryStr = "INSERT INTO PointTiers" + " values (@pointTierID,@name,@desc,@price)";
            string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            SqlConnection tierconn = new SqlConnection(_connStr);
            SqlCommand tiercmd = new SqlCommand(tierqueryStr, tierconn);
            int pointTierID = 6233;
            string name = tb_Name.Text;
            string desc = tb_desc.Text;
            int price = int.Parse(tb_price.Text);
            tiercmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            tiercmd.Parameters.AddWithValue("@name", name);
            tiercmd.Parameters.AddWithValue("@desc", desc);
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
                        cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
                        cmd.Parameters.AddWithValue("@PerkID", PerkID);
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
                Response.Write("<script>alert('Perk not added!');</script>");
            }

        }


        }
    }
