﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BizAppDev
{
    public class pointsTier
    {
        string _connStr = ConfigurationManager.ConnectionStrings["Project"].ConnectionString;
        private int _pointsTierID = 0;
        private string _name = string.Empty;
        private string _desc = string.Empty;
        private int _price = 0;
        private string _benefits = string.Empty;

        public pointsTier()
        {

        }
        public pointsTier(int pointsTierID, string name, string desc, int price)
        {
            _pointsTierID = pointsTierID;
            _name = name;
            _desc = desc;
            _price = price;

        }
        public int pointsTierID
        {
            get { return _pointsTierID; }
            set { _pointsTierID = value; }
        }

        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string desc
        {
            get { return _desc; }
            set { _desc = value; }
        }

        public int price
        {
            get { return _price; }
            set { _price = value; }
        }




        public pointsTier getPointsTier(int pointTierID)
        {
            pointsTier tierDetail = null;
            string name, desc;
            int price;
            string queryStr = "SELECT * FROM PointTiers WHERE pointTierID = @pointTierID";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@pointTierID", pointTierID);


            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                name = dr["name"].ToString();
                desc = dr["desc"].ToString();
                price = int.Parse(dr["price"].ToString());


                tierDetail = new pointsTier(pointTierID, name, desc, price);
                conn.Close();

                return tierDetail;

            }
            else
            {
                tierDetail = null;
                conn.Close();

                return tierDetail;

            }

        }
        public int TierDelete(int pointTierID)
        {
            string queryStr = "DELETE FROM PointTiers WHERE pointTierID=@pointTierID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();
            //  Response.Write("<script>alert('Delete successful');</script>");
            conn.Close();
            return nofRow;

        }
        public int TierUpdate(int pointTierID,string name, string desc, int price)
        {
            string queryStr = "UPDATE PointTiers SET " +
                "name = @name, " +
                "desc = @desc, " +
                "price = @price" +
                " WHERE pointTierID = @pointTierID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@pointTierID", pointTierID);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@desc", desc);
            cmd.Parameters.AddWithValue("@price", price);

            conn.Open();
            int noofrow = 0;
            noofrow = cmd.ExecuteNonQuery();
            conn.Close();
            return noofrow;

        }
    }
}