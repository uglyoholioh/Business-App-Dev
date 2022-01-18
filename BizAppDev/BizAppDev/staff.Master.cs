using System;

namespace BizAppDev
{
    public partial class staff : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int crap = 1;
            string urlString = "~/Coupons(lermin).aspx?pointTierID=" + crap.ToString(); ;
        }
    }
}