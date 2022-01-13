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
    public partial class CustomerViewCoupon : System.Web.UI.Page
    {
        Coupon coup = new Coupon();
        Coupon acoup = new Coupon();

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\USER\DOCUMENTS\GITHUB\BUSINESS-APP-DEV\BIZAPPDEV\BIZAPPDEV\APP_DATA\CUSTOMER.MDF;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Session["CustID"] = 1;
                int CustID = (int)(Session["CustID"]);
                acoup = coup.getCoupon(CustID);
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Coupon where Cust_ID = @CustID";
                cmd.Parameters.AddWithValue("@CustID", CustID);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                CouponRepeater.DataSource = dt;
                CouponRepeater.DataBind();

                con.Close();
            }
        }
        protected void CouponRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item)
            {
                Label lbl = e.Item.FindControl("expiry") as Label;    

                DateTime coupExpiry = Convert.ToDateTime(lbl.Text);
                if (coupExpiry.Subtract(DateTime.Now).Days > 7)
                {
                    lbl.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    string expiring = " (Expiring soon!)";
                    lbl.Text += expiring;
                    lbl.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btn_Claim_Click(object sender, EventArgs e)
        {


        }
    }
}