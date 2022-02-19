using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class nonmemberpackage_desc : System.Web.UI.Page
    {
        Product prod = null;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
           

                Response.Redirect("nonmemberpackage.aspx");
            

        }
    }
}