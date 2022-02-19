using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class nonmemberpackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.RepeatColumns = 5;
            DataList1.RepeatDirection = RepeatDirection.Horizontal;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text == "All Package")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();
            }
            if(DropDownList1.SelectedItem.Text == "Chinese New Year")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
        }
    }
}