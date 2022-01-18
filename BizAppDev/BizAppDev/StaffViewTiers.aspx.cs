﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace BizAppDev
{
    public partial class StaffViewTiers : System.Web.UI.Page
    {
        pointsTier atier = new pointsTier();
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        protected void bind()
        {
            List<pointsTier> tierList = new List<pointsTier>();
            tierList = atier.getTiersAll();
            GridView1.DataSource = tierList;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string descr = ((TextBox)row.Cells[2].Controls[0]).Text;
            int pointTierID = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string queryStr = "UPDATE PointTiers SET" +
            " name = @name," +
            " descr = @descr" +
            " WHERE pointTierID = @pointTierID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@descr", descr);
            cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            conn.Open();
            int result = cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int result = 0;
            pointsTier tier = new pointsTier();
            int pointTierID = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            result = tier.TierDelete(pointTierID);

            if (result > 0)
            {
                Response.Write("<script>alert('Tier Removed successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Tier NOT removed successfully');</script>");
            }

            Response.Redirect("StaffViewTiers.aspx");

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            int TierID = int.Parse(row.Cells[0].Text);
            Response.Redirect("StaffViewPerks.aspx?pointTierID=" + TierID);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            int TierID = int.Parse(row.Cells[0].Text);
            Response.Redirect("StaffViewPerks.aspx?pointTierID=" + TierID);
        }
    }
}