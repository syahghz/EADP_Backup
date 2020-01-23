using Syahs_Codes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Syahs_Codes.BLL
{
    public class userLogin
    {
        
        public string userName { get; set; }
        public string userPass { get; set; }
        public string userType { get; set; }

        public userLogin()
        {

        }

        public userLogin(string uName, string uPass, string uType)
        {

            this.userName = uName;
            this.userPass = uPass;
            this.userType = uType;
        }

        public userLogin getUserByUName(string uName, string uPass, string uType)
        {
            userLoginDAO dao = new userLoginDAO();
            return dao.SelectByUName(uName, uPass, uType);
        }

    }
}