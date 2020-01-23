using Syahs_Codes.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Syahs_Codes.DAL
{
    public class userLoginDAO
    {
        public userLogin SelectByUName(string uName, string uPass, string uType)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "SELECT * FROM userLogin WHERE userName = @parauserName AND userPass = @parauserPass;";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@parauserName", uName);
            da.SelectCommand.Parameters.AddWithValue("@parauserPass", uPass);
            //da.SelectCommand.Parameters.AddWithValue("@parauserType", uType);


            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //int rec_cnt = ds.Tables[0].Rows.Count;

            //userLogin obj = null;
            //if (rec_cnt > 0)
            //{
            //    //DataRow row = ds.Tables[0].Rows[0];
            //    //string uType = row["userType"].ToString();

            //    obj = new userLogin(uName, uPass, uType);
            //}
            //return obj;


            DataSet ds = new DataSet();
            da.Fill(ds);
            int rec_cnt = ds.Tables[0].Rows.Count;

            userLogin obj = null;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                //string id = row["id"].ToString();
                //string name = row["name"].ToString();
                //string address = row["address"].ToString() + " Singapore " + row["postal"].ToString();
                //string homePhone = row["homePhone"].ToString();
                string userType = row["userType"].ToString();
                string userName = row["userName"].ToString();
                string userPass = row["userPass"].ToString();
                obj = new userLogin(userName, userPass, userType);
            }
            return obj;
        }

    }
}