using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizAppDev
{
    public partial class addOffer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            int result = 0;
            string image = "";

            if (fu_image.HasFile == true)
            {
                image = "Images\\" + fu_image.FileName;
            }

            Offers offer = new Offers(tb_offerID.Text, tb_offerName.Text, calendar_startDate.SelectedDate.ToString(),
                calendar_endDate.SelectedDate.ToString(), fu_image.FileName, tb_desc.Text);
            result = offer.offerInsert();

            if (result > 0)
            {
                string saveimg = Server.MapPath(" ") + "\\" + image;
                lbl_Result.Text = saveimg.ToString();
                fu_image.SaveAs(saveimg);
                //loadProductInfo();
                //loadProduct();
                //clear1();
                Response.Write("<script>alert('Insert successful');</script>");
                Response.Redirect("Offers(lermin).aspx?result = " + result);
            }
            else { Response.Write("<script>alert('Insert NOT successful');</script>"); }

        }
    }
}