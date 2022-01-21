using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BizAppDev
{
    public class ProductCust
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;

        private string _prodcustID = null;
        private string _prodcustCat = "";
        private string _prodcustCol = "";
        private string _prodcustScent = "";

        public ProductCust()
        {
        }

        public ProductCust(string prodcustID, string prodcustCat, string prodcustCol, string prodcustScent)
        {
            _prodcustID = prodcustID;
            _prodcustCat = prodcustCat;
            _prodcustCol = prodcustCol;
            _prodcustScent = prodcustScent;
        }
        public ProductCust(string prodcustCat, string prodcustCol, string prodcustScent)
        : this(null, prodcustCat, prodcustCol, prodcustScent)
        {
        }
        public ProductCust(string prodcustID)
        : this(prodcustID, "", "", "")
        {
        }
        public string CustomizationID
        {
            get { return _prodcustID; }
            set { _prodcustID = value; }
        }
        public string Category
        {
            get { return _prodcustCat; }
            set { _prodcustCat = value; }
        }
        public string Colour
        {
            get { return _prodcustCol; }
            set { _prodcustCol = value; }
        }
        public string Scent
        {
            get { return _prodcustScent; }
            set { _prodcustScent = value; }
        }
        public int ProdCustInsert()
        {

            int result = 0;

            string queryStr = "INSERT INTO ProductCust(Category,Colour,Scent)"
                + " values (@prodcustCat, @prodcustCol,@prodcustScent)";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@prodcustCat", this.Category);
            cmd.Parameters.AddWithValue("@prodcustCol", this.Colour);
            cmd.Parameters.AddWithValue("@prodcustScent", this.Scent);

            conn.Open();
            result += cmd.ExecuteNonQuery();
            conn.Close();

            return result;
        }
        public ProductCust getProdCust(string prodcustID)
        {

            ProductCust ProdCustDetail = null;

            string prodcustCat, prodcustCol, prodcustScent;


            string queryStr = "SELECT * FROM ProductCust WHERE CustomozationID = @prodcustID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@prodcustID", prodcustID);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                prodcustCat = dr["Category"].ToString();
                prodcustCol = dr["Colour"].ToString();
                prodcustScent = dr["Scent"].ToString();


                ProdCustDetail = new ProductCust(prodcustID, prodcustCat, prodcustCol, prodcustScent);
            }
            else
            {
                ProdCustDetail = null;
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return ProdCustDetail;
        }
        public List<ProductCust> getProdCustAll()
        {
            List<ProductCust> ProductCustList = new List<ProductCust>();

            string prodcustID, prodcustCat, prodcustCol, prodcustScent;

            string queryStr = "SELECT * FROM ProductCust Order By CustomizationID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                prodcustID = dr["CustomizationID"].ToString();
                prodcustCat = dr["Category"].ToString();
                prodcustCol = dr["Colour"].ToString();
                prodcustScent = dr["Scent"].ToString();
                ProductCust a = new ProductCust(prodcustID, prodcustCat, prodcustCol, prodcustScent);
                ProductCustList.Add(a);
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return ProductCustList;
        }
        public int ProdCustDelete(string prodcustID)
        {
            string queryStr = "DELETE FROM ProductCust WHERE CustomizationID = @prodcustID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@prodcustID", prodcustID);
            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();
            conn.Close();
            return nofRow;
        }

        public int ProdCustUpdate(string PCid, string PCcat, string PCcol, string PCscent)
        {
            string queryStr = "UPDATE ProductCust SET" +
                " Category = @prodcustCat, " +
                " Colour = @prodcustCol, " +
                " Scent = @prodcustScent " +
                " WHERE CustomizationID = @prodcustID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@prodcustID", PCid);
            cmd.Parameters.AddWithValue("@prodcustCat", PCcat);
            cmd.Parameters.AddWithValue("@prodcustCol", PCcol);
            cmd.Parameters.AddWithValue("@prodcustScent", PCscent);

            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();

            conn.Close();

            return nofRow;
        }
    }
}

