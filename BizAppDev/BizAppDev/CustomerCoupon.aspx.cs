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
    public partial class CustomerCoupon : System.Web.UI.Page
    {
        Coupon coup = new Coupon();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CustID"] = 1;
        }

        protected void CouponDatalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Coupon coup = new Coupon();
            Customer cust = new Customer();
            Customer acust = new Customer();
            acust = cust.getCustomer(1);//SESSION ID = 1
            if (e.CommandName == "makePurchase")
            {
                Label lblCouponID = (Label)(e.Item.FindControl("CouponIDLabel"));
                int CouponID = int.Parse(lblCouponID.Text);
                int result = 0;
                int CustID = 1; //SESSION
                string pass = "1234567890";
                Random r = new Random();
                char[] mypass = new char[5];

                for (int i = 0; i < 5; i++)
                {
                    mypass[i] = pass[r.Next(pass.Length)];
                }
                var kan = new String(mypass);

                result = coup.claimCoupon(CustID, CouponID, kan);
                if (result > 0)
                {
                    string queryStr = "UPDATE Customer SET" +
                       " points = @points" +
                       " WHERE Cust_ID = @Cust_ID";
                    Label lblcost = (Label)(e.Item.FindControl("costLabel"));
                    int cost = int.Parse(lblcost.Text);
                    int newpoints = acust.points - cost;
                    string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
                    SqlConnection conn = new SqlConnection(_connStr);
                    SqlCommand cmd = new SqlCommand(queryStr, conn);
                    cmd.Parameters.AddWithValue("@Cust_ID", CustID);
                    cmd.Parameters.AddWithValue("@CouponID", CouponID);
                    cmd.Parameters.AddWithValue("@points", newpoints);
                    conn.Open();
                    int nofRow = 0;
                    nofRow = cmd.ExecuteNonQuery();

                    conn.Close();
                    Response.Write("<script>alert('Purchase successful!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Purchase unsuccessful!');</script>");
                }
            }
        }
    }
    }
