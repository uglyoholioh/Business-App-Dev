using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe.Checkout;
using Stripe;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BizAppDev
{
    public partial class nonmembermembershiptierlistmoreinfo : System.Web.UI.Page
    {
        SqlConnection knn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CUSTOMER.MDF;Integrated Security=True");
        public string sessionIds = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal discountedtotal;
            decimal grandtotal;
            knn.Open();
            SqlCommand cmd = knn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Membership where membership_id=@mid";
            cmd.Parameters.AddWithValue("@mid", Request.QueryString["memberID"].ToString());
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {
                Label1.Text = row.Field<int>("membership_id").ToString();
                membership_nameLabel.Text = row.Field<string>("membership_name").ToString();


                membership_descLabel.Text = row.Field<string>("membership_desc").ToString();

                membership_benefitsLabel.Text = row.Field<string>("membership_benefits").ToString();
                membership_priceLabel.Text = row.Field<decimal>("membership_price").ToString();
                membership_lengthLabel.Text = row.Field<string>("membership_length").ToString();

                break;
            }


            StripeConfiguration.ApiKey = "sk_test_51KHh6JKpf4tgYB9Ke4eDF1XVljQDR71m6WZ4570lLYBVO2Hyn1MT1YcmjfiUgOgDXWyFIH9eAfnWkzfWeU97CTuy00js5wzoZj";


            var options = new SessionCreateOptions
            {
                SuccessUrl = "https://localhost:44397/nonmembersuccess.aspx?oid=",
                CancelUrl = "https://localhost:44397/nonmembercheckout.aspx",
                PaymentMethodTypes = new List<string>
                {
                    "card",
                },
                LineItems = new List<SessionLineItemOptions>
                  {
                    new SessionLineItemOptions
                    {
                        Name="Please Pay",

                        Amount = Convert.ToInt64(Decimal.Parse(membership_priceLabel.Text) * 100),


                     Currency="sgd",
                      Quantity=1,
                    },
                  },
                Mode = "payment",
            };
            var service = new SessionService();
            Session session = service.Create(options);
            sessionIds = session.Id;
        }
    }
}