using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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