using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
	public partial class CustomerDetails : System.Web.UI.Page
	{
		Customer aCust = new Customer();
		Customer Cust = new Customer();
		protected void Page_Load(object sender, EventArgs e)
		{
			int CID = 2;
			Session["CID"] = CID;
			Cust = aCust.getCustomer(CID);
			lbl_Address.Text = Cust.address.ToString();
			lbl_DOB.Text = Cust.DOB.ToString();
			lbl_Email.Text = Cust.email.ToString();
			lbl_Gender.Text = Cust.gender.ToString();
			lbl_Name.Text = Cust.first_Name.ToString() + " " + Cust.last_Name.ToString();
			lbl_PhoneNo.Text = Cust.phone_No.ToString();
			lbl_Username.Text = Cust.username.ToString();
		}

        protected void btn_Edit_Click(object sender, EventArgs e)
        {
			Response.Redirect("CustomerEditDetails.aspx");
        }
    }
}
