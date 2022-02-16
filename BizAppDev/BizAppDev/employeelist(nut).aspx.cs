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
    public partial class employeelist_nut_ : System.Web.UI.Page
    {
        Employee aEmp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.RepeatColumns = 3;
            DataList1.RepeatDirection = RepeatDirection.Horizontal;
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Label lbl = (Label)e.Item.FindControl("lbl_EmpID");
            Response.Redirect("Employeeinfo.aspx?EmpID=" + lbl.Text);
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int result = 0;
            Employee emp = new Employee();
            string EmpID = DataList1.DataKeys[e.Item.ItemIndex].ToString();
            result = emp.EmployeeDelete(EmpID);

            if (result > 0)
            {
                Response.Write("<script>alert('Employee Deleted successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Employee NOT successfully Deleted');</script>");
            }

            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            Label lbl = (Label)e.Item.FindControl("lbl_EmpID");
            Response.Redirect("Employeeinfo.aspx?EmpID=" + lbl.Text);
        }

        
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

   

        protected void Search_Employee_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
            SqlConnection conn = new SqlConnection(_connStr);
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from Employee where EmpID like '%" + tb_SearchEmp.Text + "%'", conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
            conn.Close();
        }
    }
}