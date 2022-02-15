using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BizAppDev
{
    public partial class nonmembersuccess : System.Web.UI.Page
    {
        SqlConnection knn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CUSTOMER.MDF;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal discountedtotal;
            decimal grandtotal;
            knn.Open();
            SqlCommand cmd = knn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select orderid,email,grandtotal,discountedtotal from orderdetails where orderid=@orderid";
            cmd.Parameters.AddWithValue("@orderid", Request.QueryString["oid"].ToString());
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {

                if (row.Field<decimal>("discountedtotal").ToString() == "0.00")
                {
                    Label3.Text = row.Field<decimal>("grandtotal").ToString();
                }
                else
                {
                    Label3.Text = row.Field<decimal>("discountedtotal").ToString();
                }
                Label1.Text = row.Field<string>("orderid").ToString();

                Label2.Text = row.Field<string>("email").ToString();

                break;


            }
        }

        protected void btn_no_Click(object sender, EventArgs e)
        {
            Response.Redirect("nonmemberhome.aspx");
        }

        protected void btn_yes_Click(object sender, EventArgs e)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("josspapery2@gmail.com", "Bf2001grp4");
            smtp.EnableSsl = true;
            MailMessage mail = new MailMessage();

            StringBuilder sbEmailBody = new StringBuilder();
            mail.Subject = "Confirmation For Purchase Order";
            sbEmailBody.Append("Your Order( order Number" + Label1.Text + ") Have been recieved by the team.");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("The total Amount for the order is  $" + Label3.Text);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("We Will Try to Deliver by the delivery date you have chosen,If you have Picked In-store Pickup, kindly wear a mask and practice 1m social distancing and only come on your selected delivery date.");
            sbEmailBody.Append("<br/><br/>");

            sbEmailBody.Append("Thank You For Shopping With Us.");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("Sincerly,");
            sbEmailBody.Append("Xavier Ong,Kim Simi Zua Team");
            mail.IsBodyHtml = true;

            mail.Body = sbEmailBody.ToString();
            string toaddress = Label2.Text;
            mail.To.Add(toaddress);
            string fromaddress = "Kim Simi Zua <josspapery2@gmail.com>";
            mail.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(mail);

            }
            catch
            {
                throw;
            }
        }
    }
}