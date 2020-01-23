using Syahs_Codes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Syahs_Codes.BLL
{

    public class Planner
    {
        public string planId { get; set; }
        public string planUserId { get; set; }
        public string planName { get; set; }
        public string planDates { get; set; }
        public string planPic { get; set; }



        public Planner()
        {
        }

        public Planner(string pName, string pDates, string pPic, string planGivenId, string pUserId)
        {
            planId = planGivenId;
            planUserId = pUserId;
            
            planName = pName;
            planDates = pDates;
            planPic = pPic;
            

        }

        public int addPlanner()
        {
            PlannerDAO dao = new PlannerDAO();
            return (dao.Insert(this));
        }

        public Planner getPlanDetails(string planIdDet)
        {
            PlannerDAO dao = new PlannerDAO();
            return dao.getByPlanId(planIdDet);
            //return dao.getByPlanId(planIdDet);
        }

    }

}