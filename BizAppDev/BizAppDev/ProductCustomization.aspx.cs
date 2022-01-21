using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class ProductCustomization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmBtn_Click(object sender, EventArgs e)
        {
            int result = 0;

            if (ddl_prodcat.SelectedValue != "0")
            {
                if ((ddl_prodcol.SelectedValue == "0") && (ddl_scent.SelectedValue == "0"))
                {
                    Response.Write("<script>alert('Select at least 1 customization');</script>");
                }
                else
                {
                    ProductCust prodCust = new ProductCust(ddl_prodcat.SelectedItem.Text,
                        ddl_prodcol.SelectedItem.Text, ddl_scent.SelectedItem.Text);
                    result = prodCust.ProdCustInsert();

                    if (result > 0)
                    {
                        Response.Write("<script>alert('Customization Submitted');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Customization not Submitted');</script>");
                    }
                    ddl_prodcat.SelectedItem.Text = "Select a Category";
                    ddl_prodcol.SelectedItem.Text = "Default";
                    ddl_scent.SelectedItem.Text = "Default";
                }
            }
            else
            {
                Response.Write("<script>alert('Select a product category');</script>");
            }
        }
    }
}