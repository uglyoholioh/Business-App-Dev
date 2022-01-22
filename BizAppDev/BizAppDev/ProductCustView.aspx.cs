using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class ProductCustView : System.Web.UI.Page
    {
        ProductCust aProdCust = new ProductCust();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                bind();
            }

        }
        protected void bind()
        {
            List<ProductCust> ProductCustList = new List<ProductCust>();
            ProductCustList = aProdCust.getProdCustAll();
            gvProdCust.DataSource = ProductCustList;
            gvProdCust.DataBind();
        }

        protected void gvProdCust_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int result = 0;
            ProductCust productCust = new ProductCust();
            string categoryID = gvProdCust.DataKeys[e.RowIndex].Value.ToString();
            result = productCust.ProdCustDelete(categoryID);

            if (result > 0)
            {
                Response.Write("<script>alert('Customization details deleted');</script>");
            }
            else
            {
                Response.Write("<script>alert('Delete unsuccessful');</script>");
            }

            Response.Redirect("ProductCustView.aspx");
        }

        protected void gvProdCust_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProdCust.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void gvProdCust_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProdCust.EditIndex = -1;
            bind();
        }

        protected void gvProdCust_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int result = 0;
            ProductCust productCust = new ProductCust();
            //GridViewRow row = (GridViewRow)gvProdCust.Rows[e.RowIndex];
            string pcID = gvProdCust.DataKeys[e.RowIndex].Value.ToString();
            //string pcID = ((TextBox)row.Cells[0].Controls[0]).Text;
            DropDownList ddl_catview = (DropDownList)gvProdCust.Rows[e.RowIndex].FindControl("ddl_catview") as DropDownList;
            string pcCat = ddl_catview.SelectedItem.Text;
            DropDownList ddl_colview = (DropDownList)gvProdCust.Rows[e.RowIndex].FindControl("ddl_colview") as DropDownList;
            string pcCol = ddl_colview.SelectedItem.Text;
            DropDownList ddl_stview = (DropDownList)gvProdCust.Rows[e.RowIndex].FindControl("ddl_stview") as DropDownList;
            string pcScent = ddl_stview.SelectedItem.Text;

            if (ddl_catview.SelectedValue != "0")
            {
                if ((ddl_colview.SelectedValue == "0") && (ddl_stview.SelectedValue == "0"))
                {
                    Response.Write("<script>alert('Select at least 1 customization');</script>");
                }
                else
                {
                    result = productCust.ProdCustUpdate(pcID, pcCat, pcCol, pcScent);

                    if (result > 0)
                    {
                        Response.Write("<script>alert('Update Successful');</script>");
                    }
                }
            }

            else
            {
                Response.Write("<script>alert('Select a Category');</script>");
            }
            gvProdCust.EditIndex = -1;
            bind();
        }
    }
}


