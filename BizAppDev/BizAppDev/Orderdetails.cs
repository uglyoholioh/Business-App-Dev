using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace BizAppDev
{
    public class Orderdetails
    {
        string _connStr = ConfigurationManager.ConnectionStrings["CouponsDBContext"].ConnectionString;
        private string _OrderID = null;
        private string _ProductID = "";
        private string _ProductName = "";
        private string _Price = "";
        private string _Quantity = "";
        private string _TotalPrice = "";
        private string _OrderDate = "";
        private string _DeliveryOptions = "";
        private string _OrderStatus = "";

        public Orderdetails()
        {
        }

        public Orderdetails(string OrderID, string ProductID, string ProductName, string Price, string Quantity, string TotalPrice, string OrderDate, string DeliveryOptions, string OrderStatus)
        {
            _OrderID = OrderID;
            _ProductID = ProductID;
            _ProductName = ProductName;
            _Price = Price;
            _Quantity = Quantity;
            _TotalPrice = TotalPrice;
            _OrderDate = OrderDate;
            _DeliveryOptions = DeliveryOptions;
            _OrderStatus = OrderStatus;
        }

        public string OrderID
        {
            get { return _OrderID; }
            set { _OrderID = value; }
        }

        public string ProductID
        {
            get { return _ProductID; }
            set { _ProductID = value; }
        }
        public string ProductName
        {
            get { return _ProductName; }
            set { _ProductName = value; }
        }
        public string Price
        {
            get { return _Price; }
            set { _Price = value; }
        }
        public string Quantity
        {
            get { return _Quantity; }
            set { _Quantity = value; }
        }
        public string TotalPrice
        {
            get { return _TotalPrice; }
            set { _TotalPrice = value; }
        }
        public string OrderDate
        {
            get { return _OrderDate; }
            set { _OrderDate = value; }
        }

        public string DeliveryOptions
        {
            get { return _DeliveryOptions; }
            set { _DeliveryOptions = value; }
        }

        public string OrderStatus
        {
            get { return _OrderStatus; }
            set { _OrderStatus = value; }
        }

        public int OrderdetailsDelete(string OrderID)
        {
            string queryStr = "DELETE FROM Orderdetails WHERE OrderID=@OrderID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@OrderID", OrderID);
            conn.Open();
            int nofRow = 0;
            nofRow += cmd.ExecuteNonQuery();
            conn.Close();
            return nofRow;
        }

        public List<Orderdetails> getAllOrder()
        {
            List<Orderdetails> OrderList = new List<Orderdetails>();

            string OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus;

            string queryStr = "SELECT * FROM Orderdetails Order By OrderID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                OrderID = dr["OrderID"].ToString();
                ProductID = dr["ProductID"].ToString();
                ProductName = dr["ProductName"].ToString();
                Price = dr["Price"].ToString();
                Quantity = dr["Quantity"].ToString();
                TotalPrice = dr["TotalPrice"].ToString();
                OrderDate = dr["OrderDate"].ToString();
                DeliveryOptions = dr["DeliveryOptions"].ToString();
                OrderStatus = dr["OrderStatus"].ToString();
                Orderdetails o = new Orderdetails(OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus);
                OrderList.Add(o);
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return OrderList;
        }

        public int OrderAcceptance(string OrderID, string OrderStatus)
        {
            string queryStr = "UPDATE Orderdetails SET" +
                       //" Product_ID = @productID, " +                   
                       " OrderStatus = @OrderStatus " +
                       " WHERE OrderID = @OrderID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@OrderID", OrderID);
            cmd.Parameters.AddWithValue("@OrderStatus", "Accepted");

            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();

            conn.Close();

            return nofRow;
        }//end Update

        public List<Orderdetails> PendingOrder()
        {
            List<Orderdetails> OrderList = new List<Orderdetails>();

            string OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus;

            string queryStr = "SELECT * FROM Orderdetails WHERE OrderStatus = 'Pending'";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                OrderID = dr["OrderID"].ToString();
                ProductID = dr["ProductID"].ToString();
                ProductName = dr["ProductName"].ToString();
                Price = dr["Price"].ToString();
                Quantity = dr["Quantity"].ToString();
                TotalPrice = dr["TotalPrice"].ToString();
                OrderDate = dr["OrderDate"].ToString();
                DeliveryOptions = dr["DeliveryOptions"].ToString();
                OrderStatus = dr["OrderStatus"].ToString();


                Orderdetails e = new Orderdetails(OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus);
                OrderList.Add(e);
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return OrderList;
        }

        public List<Orderdetails> AcceptedOrder()
        {
            List<Orderdetails> OrderList = new List<Orderdetails>();

            string OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus;

            string queryStr = "SELECT * FROM Orderdetails WHERE OrderStatus = 'Accepted'";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                OrderID = dr["OrderID"].ToString();
                ProductID = dr["ProductID"].ToString();
                ProductName = dr["ProductName"].ToString();
                Price = dr["Price"].ToString();
                Quantity = dr["Quantity"].ToString();
                TotalPrice = dr["TotalPrice"].ToString();
                OrderDate = dr["OrderDate"].ToString();
                DeliveryOptions = dr["DeliveryOptions"].ToString();
                OrderStatus = dr["OrderStatus"].ToString();


                Orderdetails e = new Orderdetails(OrderID, ProductID, ProductName, Price, Quantity, TotalPrice, OrderDate, DeliveryOptions, OrderStatus);
                OrderList.Add(e);
            }

            conn.Close();
            dr.Close();
            dr.Dispose();

            return OrderList;
        }
    }
}
