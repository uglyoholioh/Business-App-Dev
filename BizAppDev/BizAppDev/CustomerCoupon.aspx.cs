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
            HttpContext context = HttpContext.Current;
            string CID = (string)(context.Session["CustID"]);
        }

        protected void CouponDatalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Coupon coup = new Coupon();
            Customer cust = new Customer();
            Customer acust = new Customer();
            HttpContext context = HttpContext.Current;
            string CID = (string)(context.Session["CustID"]);
            acust = cust.getCustomer(CID);
            if (e.CommandName == "makePurchase")
            {
                Label lblCouponID = (Label)(e.Item.FindControl("CouponIDLabel"));
                int CouponID = int.Parse(lblCouponID.Text);
                int result = 0;
                string pass = "1234567890";
                Random r = new Random();
                char[] mypass = new char[5];
                Label lblcoupName = (Label)(e.Item.FindControl("cNameLabel"));
                string coupName = lblcoupName.Text;
                TextBox lblCouponQuantity = (TextBox)(e.Item.FindControl("tb_quantity"));
                int CouponQuantity = int.Parse(lblCouponQuantity.Text);
                Label lblCouponDiscount = (Label)(e.Item.FindControl("discountLabel"));
                int CouponDiscount = int.Parse(lblCouponDiscount.Text);
                Label lblvalidDays = (Label)(e.Item.FindControl("validDaysLabel"));
                int validDays = int.Parse(lblvalidDays.Text);
                Label lblvalidMonths = (Label)(e.Item.FindControl("validMonthsLabel"));
                int validMonths = int.Parse(lblvalidMonths.Text);
                Label lblvalidYears = (Label)(e.Item.FindControl("validYearsLabel"));
                int validYears = int.Parse(lblvalidYears.Text);

                for (int i = 0; i < 5; i++)
                {
                    mypass[i] = pass[r.Next(pass.Length)];
                }
                var kan = new String(mypass);
                Label lblcost = (Label)(e.Item.FindControl("costLabel"));
                int cost = int.Parse(lblcost.Text);
                cost = cost * CouponQuantity;
                if (acust.points-cost > 0)
                {
                    result = coup.claimCoupon(CID, CouponID, kan, coupName, CouponQuantity, CouponDiscount, validDays, validMonths, validYears);
                    string queryStr = "UPDATE Customer SET" +
                       " points = @points," +
                       " lvlPoints = @lvlPoints" +
                       " WHERE Cust_ID = @Cust_ID";

                    int newpoints = acust.points - cost;



                    int newlvlpoints = acust.lvlPoints;
                    newlvlpoints += cost;
                    string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
                    SqlConnection conn = new SqlConnection(_connStr);
                    SqlCommand cmd = new SqlCommand(queryStr, conn);
                    cmd.Parameters.AddWithValue("@Cust_ID", CID);
                    cmd.Parameters.AddWithValue("@CouponID", CouponID);
                    cmd.Parameters.AddWithValue("@points", newpoints);
                    cmd.Parameters.AddWithValue("@lvlPoints", newlvlpoints);
                    conn.Open();
                    int nofRow = 0;
                    nofRow = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (nofRow > 0)
                    {
                        Response.Redirect("CustomerViewCoupon.aspx");
                        Response.Write("<script>alert('Purchase successful!');</script>");
                    }
                    else { Response.Write("<script>alert('Purchase NOT successful!');</script>"); }

                    
                }
                else
                {
                    Response.Write("<script>alert('Not enough points!');</script>");
                }
                } 
        }
    }
    }
