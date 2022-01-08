using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace BizAppDev
{
    public class Customer
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        private int _CustID = 1;
        private string _firstName = string.Empty;
        private string _lastName = string.Empty;
        private string _email = string.Empty;
        private int _points = 0;
        private string _address = string.Empty;
        private string _phoneNo = string.Empty;
        private string _DOB = string.Empty;
        private string _gender = string.Empty;
        private string _username = string.Empty;

        public Customer()
        {

        }
        public Customer(int CustID, string firstName, string lastName, string email, int points, string address, string phoneNo, string DOB, string gender, string username)
        {
            _CustID = CustID;
            _firstName = firstName;
            _lastName = lastName;
            _email = email;
            _points = points;
            _address = address;
            _phoneNo = phoneNo;
            _DOB = DOB;
            _gender = gender;
            _username = username;

        }
        public int Cust_ID
        {
            get { return _CustID; }
            set { _CustID = value; }
        }
        public string first_Name
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public string last_Name
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        public string address
        {
            get { return _address; }
            set { _address = value; }
        }
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }
        public int points
        {
            get { return _points; }
            set { _points = value; }
        }
        public string phone_No
        {
            get { return _phoneNo; }
            set { _phoneNo = value; }
        }
        public string DOB
        {
            get { return _DOB; }
            set { _DOB = value; }
        }

        public string gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }

        public Customer getCustomer(int CustID)
        {
            Customer custDetail = null;
            string first_Name, last_Name, phone_No, email, address, DOB, gender, username;
            int points;

            string queryStr = "SELECT * FROM Customer WHERE Cust_ID = @CustID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CustID);

            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                first_Name = dr["First_Name"].ToString();
                last_Name = dr["Last_Name"].ToString();
                address = dr["Address"].ToString();
                DOB = dr["DOB"].ToString();

                phone_No = dr["PhoneNo"].ToString();
                points = int.Parse(dr["Points"].ToString());
                gender = dr["Gender"].ToString();
                email = dr["Email"].ToString();
                username = dr["Username"].ToString();

                custDetail = new Customer(CustID, first_Name, last_Name, email, points, address, phone_No, DOB, gender, username);
                return custDetail;

            }
            else
            {
                custDetail = null;
            }

            conn.Close();
            dr.Close();
            dr.Dispose();


            return custDetail;
        }
        public int CustomerUpdate(string CustID, string first_Name, string last_Name, string email, int points, string address, string phone_No, string DOB, string gender, string username)
        {
            string queryStr = "UPDATE Customer SET" +
                " Cust_ID = @CustID, " +
                " first_Name = @first_Name, " +
                " last_Name = @last_Name," +
                " email = @email," +
                " points = @points," +
                " address = @address," +
                " phone_No = @phone_No," +
                " DOB = @DOB," +
                " gender = @gender," +
                " username = @username" +
                " WHERE Product_ID = @productID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@CustID", CustID);
            cmd.Parameters.AddWithValue("@first_Name", first_Name);
            cmd.Parameters.AddWithValue("@last_Name",last_Name);
            cmd.Parameters.AddWithValue("@last_Name", last_Name);
            cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@points",points);
            cmd.Parameters.AddWithValue("@address",address);
            cmd.Parameters.AddWithValue("@phone_No",phone_No);
            cmd.Parameters.AddWithValue("@DOB",DOB);
            cmd.Parameters.AddWithValue("@gender",gender);
            cmd.Parameters.AddWithValue("@username",username);


            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();

            conn.Close();

            return nofRow;


        }
    }
}

