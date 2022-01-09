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

        protected void btn_Claim_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string code = (item.FindControl("CouponCode") as Label).Text;
            int CustID = (int)(Session["CustID"]);
            int result = 0;
            result = coup.redeemCoupon(CustID, code);
            if (result > 0)
            {
                Response.Write("<script>alert('Coupon redemption successful!');</script>");
                Response.Redirect("CustomerViewCoupon.aspx");
            }
            else
            {
                Response.Write("<script>alert('Coupon redemption unsuccessful');</script>");
            }


        }
    }
}