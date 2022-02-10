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
    public partial class Rewards: System.Web.UI.Page
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;

        Customer aCust = new Customer();
        Customer Cust = new Customer();
        pointsTier aTier = new pointsTier();
        pointsTier Tier = new pointsTier();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string CID = (string)(context.Session["CustID"]);
            Cust = aCust.getCustomer(CID);
            lbl_Points.Text = Cust.points.ToString();
            int tierID = Cust.pointTierID;
            Tier = aTier.getPointsTier(tierID);
            lbl_TierName.Text = Tier.name;
            lbl_Name.Text = Cust.first_Name + " " + Cust.last_Name;
            lbl_Email.Text = Cust.email;
            string queryStr = "SELECT COUNT(*) FROM CustCoupon WHERE Cust_ID = @CustID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CID);
            conn.Open();
            int noVouchers = Convert.ToInt32(cmd.ExecuteScalar());
            lbl_NoVouchers.Text = noVouchers.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Claim_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Perks_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerViewPerks.aspx?pointTierID=" + Cust.pointTierID);
        }

        protected void btn_Coupons_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerCoupons.aspx");
        }
    }
}