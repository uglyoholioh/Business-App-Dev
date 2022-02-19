using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class package_desc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
          protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {



            Response.Redirect("package.aspx");


        }
    }
}