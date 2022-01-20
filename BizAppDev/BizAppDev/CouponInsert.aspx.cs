using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class CouponInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            int result = 0;
            string pass = "1234567890";

            Random r = new Random();
            char[] mypass = new char[5];

            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[r.Next(pass.Length)];
            }
            var kan = new String(mypass);

            Coupons coup = new Coupons(kan, tb_name.Text, calendar_startDate.SelectedDate.ToString(),
                calendar_endDate.SelectedDate.ToString(), tb_desc.Text, decimal.Parse(tb_amt.Text));
            result = coup.CouponInsert();

            if (result > 0)
            {
                Response.Write("<script>alert('Insert successful');</script>");
                Response.Redirect("Coupons(lermin).aspx?result =" + result);
            }
            else { Response.Write("<script>alert('Insert NOT successful');</script>"); }

        }

        protected void btn_view_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coupons(lermin).aspx");
        }
    }
}