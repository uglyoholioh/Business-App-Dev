﻿using System;
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
			HttpContext context = HttpContext.Current;
			string CID = (string)(context.Session["CustID"]);

			Cust = aCust.getCustomer(CID);
			lbl_Address.Text = Cust.address.ToString();
			lbl_DOB.Text = Cust.DOB.ToString();
			lbl_Email.Text = Cust.email.ToString();
			lbl_Gender.Text = Cust.gender.ToString();
			lbl_Name.Text = Cust.first_Name.ToString() + " " + Cust.last_Name.ToString();
			lbl_PhoneNo.Text = Cust.phoneNo.ToString();
			lbl_Username.Text = Cust.username.ToString();
		}

        protected void btn_Edit_Click(object sender, EventArgs e)
        {
			Response.Redirect("CustomerEditDetails.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
			string CustID = (string)(Session["CustID"]);
			Customer cust = new Customer();
			Customer acust = new Customer();
			acust = cust.getCustomer(CustID);
			Response.Redirect("CustomerPoints.aspx?pointTierID=" + acust.pointTierID);
		}
    }
}
