using Syahs_Codes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Syahs_Codes.BLL
{

    public class PlannerDetails
    {

        public string planId { get; set; }
        public string userId { get; set; }
        public string category { get; set; }
        public string title { get; set; }
        public string type { get; set; }
        //time
        public string planTime { get; set; }
        //duration
        public string duration { get; set; }
        public string webLink { get; set; }
        public string conNo { get; set; }
        public string airline { get; set; }
        public string flightNo { get; set; }
        public string terminal { get; set; }
        public string gate { get; set; }

        public string addr { get; set; }
        public string eTixNo { get; set; }
        public string price { get; set; }
        public string pax { get; set; }
        public string ttl { get; set; }
        //notes
        public string notes { get; set; }
        public string attach { get; set; }
    

        public PlannerDetails()
        {
        }

        public PlannerDetails(string cat, string titleDet, string typeDet, string pTime, string pDuration, string weblinkDet, string conNodet, string airlineDet, string flightNoDet, string terminalDet, string gateDet, string addrDet, string eTixNoDet, string priceDet, string paxDet, string ttlDet, string pNotes, string attachDet)
        {

            planId = "";
            userId = "1";
            category = cat;
            title = titleDet;
            type = typeDet;
            planTime = pTime;
            duration = pDuration;
            webLink = weblinkDet;
            conNo = conNodet;
            airline = airlineDet;
            flightNo = flightNoDet;
            terminal = terminalDet;
            gate = gateDet;
            addr = addrDet;
            eTixNo = eTixNoDet;
            price = priceDet;
            pax = paxDet;
            ttl = ttlDet;
            notes = pNotes;
            attach = attachDet;
        }

        public int addPlanDetails()
        {
            PlannerDetailsDAO dao = new PlannerDetailsDAO();
            return (dao.Insert(this));

        }



        public int addPlanDetailsAcco()
        {
            PlannerDetailsDAO dao = new PlannerDetailsDAO();
            return (dao.Insert(this));

        }

    }
}