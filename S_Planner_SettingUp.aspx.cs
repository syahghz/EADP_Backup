using Syahs_Codes.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syahs_Codes
{
    public partial class S_Planner_SettingUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //tbPlanName.Focus();
            //Server.Transfer("S_Planner_Start");
            Server.Transfer("S_Planner_Start.aspx");
        }


        protected void btnNext_Click1(object sender, EventArgs e)
        {
            string pName = tbPlanName.Text;
            string dRange = tbDRange.Text;
            string picUrl;
            if (ImgFileUploadPlan.FileName != "")
            {
                picUrl = ImgFileUploadPlan.FileName;
            }
            else
            {
                picUrl = "~/sg_landscapee.PNG";
            }

            Guid guid = Guid.NewGuid();
            string planId = guid.ToString();

            //TextBox1.Text = pName + dRange + picUrl + planId;

            Planner plan = new Planner(pName, dRange, picUrl, planId, "1");
            int result = plan.addPlanner();
            if (result == 1)
            {
                string url = string.Format("~/S_Planner_Main.aspx?Id={0}", planId);
                Response.Redirect(url);
                


            }
            

        }
    }
}