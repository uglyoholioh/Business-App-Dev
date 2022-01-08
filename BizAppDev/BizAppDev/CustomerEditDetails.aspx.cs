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
    }
}