using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            string code = tb_Code.Text;
            int CustID = (int)(Session["CustID"]);
            int result = coup.claimCoupon(CustID, code);
            if (result > 0)
            {
                Response.Write("<script>alert('Coupon claimed successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Coupon claim unsuccessful');</script>");
            }
        }



        }
    }
