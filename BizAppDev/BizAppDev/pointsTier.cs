using System;
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
        public pointsTier(int pointsTierID, string name, string desc, int price, string benefits)
        {
            _pointsTierID = pointsTierID;
            _name = name;
            _desc = desc;
            _price = price;
            _benefits = benefits;

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

        public string benefits
        {
            get { return _benefits; }
            set { _benefits = value; }
        }


        public pointsTier getPointsTier(int pointTierID)
        {
            pointsTier tierDetail = null;
            string name, desc, benefits;
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
                benefits = dr["benefits"].ToString();



                tierDetail = new pointsTier(pointTierID, name, desc, price, benefits);
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
    }
}