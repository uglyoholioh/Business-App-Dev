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
            lbl_CID.Text = CID  +"Adawdadwa";
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
                Label lblcoupDesc = (Label)(e.Item.FindControl("lbl_Desc"));
                string coupDesc = lblcoupDesc.Text;
                Label lblCategory = (Label)(e.Item.FindControl("lbl_Category"));
                string category = lblCategory.Text;



                for (int i = 0; i < 5; i++)
                {
                    mypass[i] = pass[r.Next(pass.Length)];
                }
                var kan = new String(mypass);
                Label lblcost = (Label)(e.Item.FindControl("costLabel"));
                int cost = int.Parse(lblcost.Text);
                cost = cost * CouponQuantity;
                cost = -cost;
                lbl_CID.Text = (acust.points+cost).ToString();
                if ((acust.points + cost) > 0)
                {
                    string reason = "Purchase Coupon: " + coupName;
                    DateTime now = DateTime.Now;
                    PointsTransaction pt = new PointsTransaction(cost,reason,CID,now);
                    int ptresult = 0;
                    ptresult = pt.PointsTransactionInsert();
                    result = coup.claimCoupon(CID, CouponID, kan, coupName, CouponQuantity, CouponDiscount, validDays, validMonths, validYears,coupDesc,category);
                    if (ptresult > 0)
                    {
                        lbl_CID.Text = (acust.points + cost).ToString();

                    }
                    else
                    {
                        lbl_CID.Text = (acust.points + cost).ToString();
                        
                    }

                    
                }
                else
                {
                    lbl_CID.Text = (acust.points + cost).ToString();
                }
            } 
        }
    }
    }
