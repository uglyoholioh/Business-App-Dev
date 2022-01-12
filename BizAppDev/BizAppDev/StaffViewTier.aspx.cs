using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BizAppDev
{
    public partial class StaffViewTier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            pointsTier aTier = new pointsTier();
            if (e.CommandName == "EditTier")
            {
                Response.Redirect("StaffEditTier.aspx?pointTierID="+int.Parse(e.CommandArgument.ToString()));
            }
            if (e.CommandName=="deleteTier")
            {
                try
                {
                    string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
                    string queryStr = "DELETE FROM PointTiersPerks WHERE pointTierID=@pointTierID";
                    SqlConnection conn = new SqlConnection(_connStr);
                    SqlCommand cmd = new SqlCommand(queryStr, conn);
                    cmd.Parameters.AddWithValue("@pointTierID", int.Parse(e.CommandArgument.ToString()));
                    conn.Open();
                    int nofRow = 0;
                    nofRow = cmd.ExecuteNonQuery();
                    conn.Close();
                    int result = 0;
                    result = aTier.TierDelete(int.Parse(e.CommandArgument.ToString()));
                    if ((nofRow > 0) && (result > 0))
                    {
                        Response.Write("<script>alert('Point tier deletion successful');</script>");
                        Response.Redirect("StaffViewTier.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Point tier deletion unsuccessful');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Point tier deletion unsuccessful, Customers currently on tier');</script>");

                }

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            pointsTier aTier = new pointsTier();
            TextBox newName = (TextBox)(e.Item.FindControl("tb_Name"));
            TextBox newdescr = (TextBox)(e.Item.FindControl("tb_descr"));
            TextBox newPrice = (TextBox)(e.Item.FindControl("tb_Price"));
            Label newpointTierID = (Label)(e.Item.FindControl("pointTierIDLabel"));
            int newpointTierIDInt = int.Parse(newpointTierID.Text);
            string newNameStr = newName.Text;
            string newdescrStr = newdescr.Text;
            int newPriceInt= int.Parse(newPrice.Text);
            aTier.TierUpdate(newpointTierIDInt,newNameStr, newdescrStr, newPriceInt);
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();


        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataBind();
        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffAddPointTier.aspx");
        }
    }
}