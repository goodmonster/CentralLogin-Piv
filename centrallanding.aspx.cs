using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralLogin
{
    public partial class centrallanding : System.Web.UI.Page
    {
        public static string targetvalue;
        public static string targetDisplayValue;
        protected void Page_Load(object sender, EventArgs e)
        {

            String appname = Request["appname"];
            String target = Request["TARGET"];
            String query = HttpContext.Current.Request.Url.Query;

            if (!string.IsNullOrEmpty(target) && target.ToLower() != @"null")
            {
                targetvalue = target.Substring(4);
                targetDisplayValue = target.Substring(4).Split(new char[] { '?' })[0].ToString();

                if (target.ToLower().Contains("SPID".ToLower()))
                {
                    string strSPID = target.Substring(5 + target.IndexOf("SPID=")).ToString().Split(new char[] { '&' })[0].ToString();
                    targetDisplayValue = target.Substring(4).Split(new char[] { '?' })[0].ToString() + "?SPID=" + strSPID;
                }
            }
        }
    }
}