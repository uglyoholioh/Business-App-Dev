using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BizAppDev
{
    public class Coupon
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        private int _CouponID = 0;
        private string _cDesc = string.Empty;
        private string _cName = string.Empty;
        private int _amount = 0;
        private int _cost = 0;
        private string _discount = string.Empty;
        private string _expiry = string.Empty;
        private string _code = string.Empty;
        private int _Cust_ID = 0;
        
        public Coupon()
        {

        }
        public Coupon(int couponID, string cDesc, string cName, int amount, int cost, string discount, string expiry, string code, int cust_ID)
        {
            _CouponID = couponID;
            _cDesc = cDesc;
            _cName = cName;
            _amount = amount;
            _cost = cost;
            _discount = discount;
            _expiry = expiry;
            _code = code;
            _Cust_ID = cust_ID;
        }
        public int CouponID
        {
            get { return _CouponID; }
            set { _CouponID = value; }
        }
        public string cDesc
        {
            get { return _cDesc; }
            set { _cDesc = value; }
        }
        public string cName
        {
            get { return _cName; }
            set { _cName = value; }

        }

        public int amount
        {
            get { return _amount; }
            set { _amount = value; }
        }
        public int cost
        {
            get { return _cost; }
            set { _cost = value; }

        }
        public string discount
        {
            get { return _discount; }
            set { _discount = value; }
        }

        public string expiry
        {
            get { return _expiry; }
            set { _expiry = value; }
        }
        public string code
        {
            get { return _code; }
            set { _code = value; }
        }
        public int CustID
        {
            get { return _Cust_ID; }
            set { _Cust_ID = value; }
        }

        public int claimCoupon(int CustID, string code)
        {
            string cDesc, cName, discount, expiry;
            int CouponID, amount, cost;

            string queryStr = "UPDATE Coupon SET" +
                " Cust_ID = @CustID" +
                " WHERE code = @code";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CustID);
            cmd.Parameters.AddWithValue("@code", code);




            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();

            conn.Close();
            return nofRow;
        }
        public Coupon getCoupon(int CustID)
        {
            Coupon coupDetail = null;
            string cDesc, cName, discount, expiry, code;
            int CouponID, amount, cost;
            string queryStr = "SELECT * FROM Coupon WHERE Cust_ID = @CustID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CustID);


            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                cDesc = dr["cDesc"].ToString();
                cName = dr["cName"].ToString();
                discount = dr["discount"].ToString();
                expiry = dr["expiry"].ToString();

                code = dr["code"].ToString();
                CouponID = int.Parse(dr["CouponID"].ToString());
                amount = int.Parse(dr["amount"].ToString());
                cost = int.Parse(dr["cost"].ToString());


                coupDetail = new Coupon(CouponID,cDesc,cName,amount,cost,discount,expiry,code,CustID);
                conn.Close();

                return coupDetail;

            }
            else
            {
                coupDetail = null;
                conn.Close();

                return coupDetail;

            }

        }
        public int redeemCoupon(int CustID,string code)
        {
            string queryStr = "DELETE FROM Coupon WHERE Cust_ID = @CustID and code = @code";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CustID);
            cmd.Parameters.AddWithValue("@code", code);
            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();
            conn.Close();
            return nofRow;



        }

    }




    }