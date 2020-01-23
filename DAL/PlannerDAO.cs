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
    public class PlannerDAO
    {

        public int Insert(Planner plan)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO Planner (planId, userId, planName, dateRange, picUrl)" +
                ""  +
                             "VALUES (@paraPlanId,@paraUserId,@paraPlanName,@paraDateRange, @paraPicUrl)";



            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraPlanId", plan.planId);
            sqlCmd.Parameters.AddWithValue("@paraUserId", plan.planUserId);
            sqlCmd.Parameters.AddWithValue("@paraPlanName", plan.planName);
            sqlCmd.Parameters.AddWithValue("@paraDateRange", plan.planDates);
            sqlCmd.Parameters.AddWithValue("@paraPicUrl", plan.planPic);


            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public Planner getByPlanId(string planIdDet)
        {

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "SELECT * From Planner where planId = @paraPlanId ";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);

            da.SelectCommand.Parameters.AddWithValue("@paraPlanId", planIdDet);

            DataSet ds = new DataSet();
            da.Fill(ds);

            Planner plan = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string planId = row["planId"].ToString();
                string planUserId = row["userId"].ToString();
                string planName = row["planName"].ToString();
                string picUrl = row["picUrl"].ToString();
                string planDates = row["dateRange"].ToString();
                

                    //double principal = Convert.ToDouble(row["principal"]);
                    //int term = Convert.ToInt32(row["term"]);
                    //DateTime effFrom = Convert.ToDateTime(row["effectFrom"]);
                    //DateTime mDate = Convert.ToDateTime(row["maturity"]);
                    //double interest = Convert.ToDouble(row["interestAmt"]);
                    //double mAmt = Convert.ToDouble(row["matureAmt"]);
                    //double rate = Convert.ToSingle(row["tdRate"]);
                    //string mode = (string)row["renewMode"];

                plan = new Planner(planName, planDates, picUrl, planId, planUserId);
                
            }
            return plan;
            
            
        }

    }
}