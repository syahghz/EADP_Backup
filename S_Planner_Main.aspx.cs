using Syahs_Codes.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syahs_Codes
{
    public partial class S_Planner_Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string planId = Request.QueryString["Id"].ToString();

            //// Retrieve TDMaster records by account
            //Planner plan = new Planner();
            //plan = plan.getPlanDetails(planId);

            //Session["SSId"] = plan.planId;

            //tbItineraryName.Text = plan.planName.ToString();
            //Image1.ImageUrl = "~/S_Images/" + plan.planPic.ToString();
        }

        protected void rblFlightType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            var category = lblCat.Text;
            string title;
            string type;
            //time
            string pTime;
            //duration
            string duration;
            string webLink;
            string conNo;
            string airline;
            string flightNo;
            string terminal;
            string gate;

            string addr;
            string eTixNo;
            string price;
            string pax;
            string ttl;
            //notes
            string notes;
            string attach;

            if (category == "flight")
            {
                title = tbTitleFlight.Text;
                type = rblTypeFlight.SelectedValue;
                //string timeF = Request["timepicker-selectbox-Flight"];  //!!!!
                pTime = "";
                //pTime = this.Request.Form["timepicker-selectbox-Flight"];
                //string durationFlight = durationF.InnerHtml;
                duration = "";
                webLink = tbWebBookFlight.Text;
                conNo = tbConNoFlight.Text;
                airline = tbAirlineFlight.Text;
                flightNo = tbFNoFlight.Text;
                terminal = tbTerFlight.Text;
                gate = tbGateFlight.Text;
                addr = "";
                eTixNo = "";
                price = "";
                pax = "";
                ttl = "";
                //string notesF = editorFlight.InnerHtml;
                notes = "";
                attach = FUFliAttachFlight.FileName;

                PlannerDetails planDetF = new PlannerDetails();
                planDetF = new PlannerDetails(category, title, type, pTime, duration, webLink, conNo, airline, flightNo, terminal, gate, addr, eTixNo, price, pax, ttl, notes, attach);
                int resultF = planDetF.addPlanDetails();
                if (resultF == 1)
                {
                    string url = string.Format("~/S_Planner_Start.aspx");
                    Response.Redirect(url);

                }



                //var df = this.Request.Form["txtName"];

                //Label1.Text = durationFlight;
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + durationFlight + "');", true);
            }
            else if (category == "accomodation")
            {
                title = tbTitleAcco.Text;
                type = RBLAcco.SelectedValue;
                //time
                pTime = "";
                //duration
                duration = "";
                webLink = tbWebBookAcco.Text;
                conNo = tbConNoAcco.Text;
                airline = "";
                flightNo = "";
                terminal = "";
                gate = "";
                addr = tbAddrAcco.Text;
                eTixNo = "";
                price = "";
                pax = "";
                ttl = "";
                //string notesAcco = editorAcco.InnerHtml;
                notes = null;
                attach = FUAcco.FileName;

                PlannerDetails planDetAcco = new PlannerDetails(category, title, type, pTime, duration, webLink, conNo, airline, flightNo, terminal, gate, addr, eTixNo, price, pax, ttl, notes, attach);
                int resultAcco = planDetAcco.addPlanDetailsAcco();
                if (resultAcco == 1)
                {
                    string url = string.Format("~/S_Planner_Start.aspx");
                    Response.Redirect(url);

                }
            }
            else if (category == "activity")
            {
                title = tbTitleAct.Text;
                type = "";
                //time
                pTime = "";
                //duration
                duration = "";
                webLink = tbWebLinkAct.Text;
                conNo = "";
                airline = "";
                flightNo = "";
                terminal = "";
                gate = "";
                addr = tbAddrAct.Text;
                eTixNo = tbETixAct.Text;
                price = tbPriceAct.Text;
                pax = tbPaxAct.Text;
                ttl = tbTtlPriceAct.Text;
                //notes
                notes = "";
                attach = FUAct.FileName;

                PlannerDetails planDetAct = new PlannerDetails(category, title, type, pTime, duration, webLink, conNo, airline, flightNo, terminal, gate, addr, eTixNo, price, pax, ttl, notes, attach);
                int resultAct = planDetAct.addPlanDetails();
                if (resultAct == 1)
                {
                    string url = string.Format("~/S_Planner_Start.aspx");
                    Response.Redirect(url);

                }
            }
            else if (category == "fooD")
            {
                title = tbTitleFnD.Text;
                type = "";
                //time
                pTime = "";
                //duration
                duration = "";
                webLink = tbWebLinkFnD.Text;
                conNo = "";
                airline = "";
                flightNo = "";
                terminal = "";
                gate = "";
                addr = tbAddrFnD.Text;
                eTixNo = "";
                price = "";
                pax = "";
                ttl = "";
                //notes
                notes = "";
                attach = FUFnD.FileName;

                PlannerDetails planDetFooD = new PlannerDetails(category, title, type, pTime, duration, webLink, conNo, airline, flightNo, terminal, gate, addr, eTixNo, price, pax, ttl, notes, attach);
                int resultFooD = planDetFooD.addPlanDetails();
                if (resultFooD == 1)
                {
                    string url = string.Format("~/S_Planner_Start.aspx");
                    Response.Redirect(url);

                }
            }


        }

    }
}
