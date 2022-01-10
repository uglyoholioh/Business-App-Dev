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
		protected void Page_Load(object sender, EventArgs e)
        {
			int CID = 1;
			Session["CID"] = CID;
			Cust = aCust.getCustomer(CID);
			lbl_Points.Text = Cust.points.ToString();
		}

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}