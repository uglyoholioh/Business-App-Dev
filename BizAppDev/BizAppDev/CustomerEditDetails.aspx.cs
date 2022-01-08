using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class CustomerEditDetails1 : System.Web.UI.Page
    {

        Customer aCust = new Customer();
        Customer Cust = new Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            int CID = 1;
            Session["CustID"] = CID;
            Cust = aCust.getCustomer(CID);


        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            int CID = 1;
            int result = 0;
            string firstName = tb_FirstName.Text;
            string lastName = tb_LastName.Text;
            string DOB = tb_DOB.Text;
            string gender = tb_Gender.Text;
            string address = tb_Address.Text;
            string email = tb_Email.Text;
            string phoneNo = tb_PhoneNo.Text;
            string username = tb_Username.Text;
            result = Cust.CustomerUpdate(CID, firstName, lastName, email, address, phoneNo, DOB, gender, username);
            if (result > 0)
            {

                Response.Redirect("CustomerDetails.aspx");
                Response.Write("<script>alert('Customer updated successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Customer update unsuccessful ');</script>");
            }
        }

        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx");
        }
    }
}