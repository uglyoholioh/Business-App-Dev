using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class CustomerPoints : System.Web.UI.Page
	{
		Customer aCust = new Customer();
		Customer Cust = new Customer();
        pointsTier aTier = new pointsTier();
        pointsTier Tier = new pointsTier();

		protected void Page_Load(object sender, EventArgs e)
        {
			int CID = 1;
			Session["CID"] = CID;
			Cust = aCust.getCustomer(CID);
			lbl_Points.Text = Cust.points.ToString();
            Tier = aTier.getPointsTier(CID);
            lbl_TierName.Text = Tier.name;
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
    }
}