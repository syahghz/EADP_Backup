using Syahs_Codes.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Syahs_Codes.DAL
{
    public class PlannerDetailsDAO
    {
        public int Insert(PlannerDetails planDet)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO PlannerDetails (planId, userId, planCategory, planTitle, planType, planTime, planDuration, webLink, confirmNo, flightAirline, flightNo, flightTerminal, flightGate, planAddress, actETixNo, actPrice, actPax, actTotal, planNotes, planAttachment)" +
                  "VALUES (@paraPlanId,@paraUserId,@paraCategory, @paraTitle, @paraType, @paraTime, @paraDuration, @paraWebLink, @paraConNo, @paraFAirline, @paraFNo, @paraFTer, @paraFGate, @paraAddr, @paraETix,  @paraPrice," +
                             " @paraPax, @paraTotal, @paraNotes, @paraAttachment)";



            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

    ;
            sqlCmd.Parameters.AddWithValue("@paraPlanId", planDet.planId);
            sqlCmd.Parameters.AddWithValue("@paraUserId", planDet.userId);
            sqlCmd.Parameters.AddWithValue("@paraCategory", planDet.category);
            sqlCmd.Parameters.AddWithValue("@paraTitle", planDet.title);
            sqlCmd.Parameters.AddWithValue("@paraType", planDet.type);
            sqlCmd.Parameters.AddWithValue("@paraTime", planDet.planTime);
            sqlCmd.Parameters.AddWithValue("@paraDuration", planDet.duration);
            sqlCmd.Parameters.AddWithValue("@paraWebLink", planDet.webLink);
            sqlCmd.Parameters.AddWithValue("@paraConNo", planDet.conNo);
            sqlCmd.Parameters.AddWithValue("@paraFAirline", planDet.airline);
            sqlCmd.Parameters.AddWithValue("@paraFNo", planDet.flightNo);
            sqlCmd.Parameters.AddWithValue("@paraFTer", planDet.terminal);
            sqlCmd.Parameters.AddWithValue("@paraFGate", planDet.gate);
            sqlCmd.Parameters.AddWithValue("@paraAddr", planDet.addr);
            sqlCmd.Parameters.AddWithValue("@paraETix", planDet.eTixNo);
            sqlCmd.Parameters.AddWithValue("@paraPrice", planDet.price);
            sqlCmd.Parameters.AddWithValue("@paraPax", planDet.pax);
            sqlCmd.Parameters.AddWithValue("@paraTotal", planDet.ttl);
            sqlCmd.Parameters.AddWithValue("@paraNotes", planDet.notes);
            sqlCmd.Parameters.AddWithValue("@paraAttachment", planDet.attach);



            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }
    }
}