using Syahs_Codes.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Syahs_Codes
{
    public partial class S_TLogin : System.Web.UI.Page
    {
        string userName;
        string userPass;
        string url;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbUserName_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            checkUserLogin();
        }

        protected void checkUserLogin()
        {
            string userType = "";

            userLogin uLogin = new userLogin();
            uLogin = uLogin.getUserByUName(tbUserName.Text, tbPass.Text, userType);
            if (uLogin != null)
            {
                //PanelErrorResult.Visible = false;
                //PanelCust.Visible = true;
                //Lbl_custname.Text = cusObj.Name;
                //Lbl_Address.Text = cusObj.Address;
                //Lbl_HomePhone.Text = cusObj.HomePhone;
                //Lbl_Mobile.Text = cusObj.Mobile;
                //Lbl_err.Text = String.Empty;

                //HyplinkAdd.Visible = true;

                //TDMaster td = new TDMaster();
                //List<TDMaster> list = td.GetTDbyCustId(TbCustId.Text);
                //RefreshGridView(list);
                //Session["SScustId"] = TbCustId.Text;
                //Session["SScustName"] = cusObj.Name;

               

                string uType = uLogin.userType.ToString();
                string uName = uLogin.userName.ToString();
                string uPass = uLogin.userPass.ToString();

                TextBox1.Text = uName + " " + uPass + " " + uType;
              

                if (uType == "C ")
                {
                    //url = "http://www.google.com";
                    //Response.Redirect(url);
                    lblLogin.Text = uType + "yay";
                }
                else if (uType == "A ")
                {
                    url = "http://www.yahoo.com";
                }
                else if (uType == "TG")
                {
                    url = "http://www.facebook.com";
                }
                else
                {
                    lblLogin.Text = uLogin.userType.ToString() + "else";
                }


                
            }
            else
            {
                //Lbl_err.Text = "Customer record not found!";
                //PanelErrorResult.Visible = true;
                //PanelCust.Visible = false;
                //Lbl_custname.Text = String.Empty;
                //Lbl_Address.Text = String.Empty;
                //Lbl_HomePhone.Text = String.Empty;
                //Lbl_Mobile.Text = String.Empty;
                //HyplinkAdd.Visible = false;
                Panel1.Visible = true;
            }
        }

    }
}