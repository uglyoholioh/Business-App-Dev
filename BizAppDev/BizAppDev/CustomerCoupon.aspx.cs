﻿using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
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
                string CustID = 1; //SESSION
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

                result = coup.claimCoupon(CustID, CouponID, kan, coupName, CouponQuantity, CouponDiscount, validDays, validMonths, validYears);
                if (result > 0)
                {
                    string queryStr = "UPDATE Customer SET" +
                       " points = @points," +
                       " lvlPoints = @lvlPoints" +
                       " WHERE Cust_ID = @Cust_ID";
                    Label lblcost = (Label)(e.Item.FindControl("costLabel"));
                    int cost = int.Parse(lblcost.Text);

                    int newpoints = acust.points - cost;
                    int newlvlpoints = acust.lvlPoints;
                    newlvlpoints += cost;
                    string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
                    SqlConnection conn = new SqlConnection(_connStr);
                    SqlCommand cmd = new SqlCommand(queryStr, conn);
                    cmd.Parameters.AddWithValue("@Cust_ID", CustID);
                    cmd.Parameters.AddWithValue("@CouponID", CouponID);
                    cmd.Parameters.AddWithValue("@points", newpoints);
                    cmd.Parameters.AddWithValue("@lvlPoints", newlvlpoints);
                    conn.Open();
                    int nofRow = 0;
                    nofRow = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (nofRow > 0)
                    {
                        Response.Write("<script>alert('Purchase successful!');</script>");
                    }
                    else { Response.Write("<script>alert('Purchase NOT successful!');</script>"); }

                }
                else
                {
                    Response.Write("<script>alert('Purchase unsuccessful!');</script>");
                }
            }
        }
    }
}
