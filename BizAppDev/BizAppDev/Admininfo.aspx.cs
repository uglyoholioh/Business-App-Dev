﻿using System;
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
    public partial class Admininfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }
        protected void bind()
        {
            List<Admin> AdminList = new List<Admin>();

            DataList5.RepeatColumns = 3;
            DataList5.RepeatDirection = RepeatDirection.Horizontal;
            //DataList1.DataSource = AdminList;
            //DataList1.DataBind();
        }

        protected void myListEditHandler(object source, DataListCommandEventArgs e)
        {
            DataList5.EditItemIndex = e.Item.ItemIndex;
            DataList5.DataBind();
        }

        protected void myListCancelHandler(Object src, DataListCommandEventArgs e)
        {
            DataList5.EditItemIndex = -1;
            DataList5.DataBind();
            Response.Redirect("Adminlist.aspx");
        }

        protected void myListUpdateHandler(Object src, DataListCommandEventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Project"].ToString());
            Label AdmID = (Label)e.Item.FindControl("AdmIDLabel");
            TextBox AdmName = (TextBox)e.Item.FindControl("tb_AdmName");
            TextBox NRIC = (TextBox)e.Item.FindControl("tb_NRIC");
            Label Birthdate = (Label)e.Item.FindControl("BirthdateLabel");
            Label Gender = (Label)e.Item.FindControl("GenderLabel");
            TextBox Contactno = (TextBox)e.Item.FindControl("tb_Contactno");
            TextBox Email = (TextBox)e.Item.FindControl("tb_Email");
            TextBox Address = (TextBox)e.Item.FindControl("tb_Address");


            string queryStr = "UPDATE Admin SET" +
                   //" Product_ID = @productID, " +
                   " AdmName = @AdmName, " +
                   " NRIC = @NRIC, " +
                   " Contactno = @Contactno, " +
                   " Email = @Email, " +
                   " Address = @Address " +
                   " WHERE AdmID = @AdmID";



            int nofRow = 0;
            SqlCommand cmd = new SqlCommand(queryStr, con);
            cmd.Parameters.AddWithValue("@AdmID", AdmID.Text);
            cmd.Parameters.AddWithValue("@AdmName", AdmName.Text);
            cmd.Parameters.AddWithValue("@NRIC", NRIC.Text);
            cmd.Parameters.AddWithValue("@Contactno", Contactno.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@Address", Address.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            nofRow += cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();

            if (nofRow > 0)
            {
                Response.Write("<script>alert('Admin Deleted successfully');</script>");

            }
            else
            {
                Response.Write("<script>alert('Admin NOT successfully Deleted');</script>");
            }
            DataList5.EditItemIndex = -1;
            DataList5.DataBind();
            Response.Redirect("Adminlist.aspx");
        }

        protected void DataList5_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int result = 0;
            Admin Adm = new Admin();
            string AdmID = DataList5.DataKeys[e.Item.ItemIndex].ToString();
            result = Adm.AdminDelete(AdmID);

            if (result > 0)
            {
                Response.Write("<script>alert('Product Remove successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Product Removal NOT successfully');</script>");
            }

            DataList5.EditItemIndex = -1;
            DataList5.DataBind();
        }
    }
}

