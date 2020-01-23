using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syahs_Codes
{
    public partial class S_WishList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnAll_Click(object sender, EventArgs e)
        {
            PnlAct.Visible = true;
            PnlFood.Visible = true;
            PnlPackage.Visible = true;
        }

        protected void BtnAct_Click(object sender, EventArgs e)
        {
            PnlPackage.Visible = false;
            PnlFood.Visible = false;
            PnlAct.Visible = true;
        }

        protected void BtnFood_Click(object sender, EventArgs e)
        {
            PnlAct.Visible = false;
            PnlFood.Visible = true;
            PnlPackage.Visible = false;
        }

        protected void BtnPackage_Click(object sender, EventArgs e)
        {
            PnlPackage.Visible = true;
            PnlFood.Visible = false;
            PnlAct.Visible = false;
        }
    }
}