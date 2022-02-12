using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class home : System.Web.UI.Page
    {
        Product prod = null;
        Customer aCust = new Customer();
        Customer Cust = new Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string CID = (string)(context.Session["CustID"]);
            aCust = Cust.getCustomer(CID);
            DateTime now = DateTime.Now;
            int dateresult = DateTime.Compare(now, aCust.pointExpiry);
            if (dateresult > 0 && aCust.points>0)
            {
                int cost = -aCust.points;
                string reason = "Expired";
                DateTime expiryDate = aCust.pointExpiry;
                PointsTransaction pt = new PointsTransaction(cost, reason, CID,expiryDate);
                int ptresult = 0;

                ptresult = pt.PointsTransactionInsert();
            }
            lbl_Expiry.Text = aCust.pointExpiry.ToString();
            DataList1.RepeatColumns = 6;
            DataList1.RepeatDirection = RepeatDirection.Horizontal;
        }

        protected void DataList1_view(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("product_desc.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}