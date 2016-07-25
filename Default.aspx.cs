using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralLogin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string targetvalue;
        public static string targetDisplayValue ;
        protected void Page_Load(object sender, EventArgs e)
        {

            String appname = Request["appname"];
            String target = Request["TARGET"];
            String query = HttpContext.Current.Request.Url.Query;

		//Response.Write("Query = '" + query + "'");

			           
            //string strUserAgent = Request.UserAgent.ToString().ToLower();
            //if (strUserAgent.Contains("BlackBerry".ToLower()))
            //{

            //    Response.Redirect("iphone.aspx" + query);
            //}
            //else if (strUserAgent.Contains("IEMobile".ToLower()))
            //{
            //    Response.Redirect("iphone.aspx" + query);
            //}
            //else if (strUserAgent.Contains("iPhone".ToLower()))
            //{
            //    Response.Redirect("iphone.aspx" + query);
            //}
            //else if (strUserAgent.Contains("iPad".ToLower()))
            //{
            //    Response.Redirect("ipad.aspx" + query);
            //}
            //else if (strUserAgent.Contains("Nokia".ToLower()))
            //{
            //    Response.Redirect("iphone.aspx" + query);
            //}
            ////else
            //{
            //    Response.Redirect("default.aspx");
            //}


            //target = "rajasekar";

            //String ts = "teamsite";
            //if (appname=="teamsite")
            //TARGET.Value = "https://vaww.cms.webapp.va.gov/iw-cc/";
            //if (appname=="test")
            //TARGET.Value = "https://logon.dev2.iam.va.gov/prototype/index.htm ";


            if (!string.IsNullOrEmpty(target) && target.ToLower() != @"null")
            {
                
		targetvalue = target.Substring(4);
                targetDisplayValue = target.Substring(4).Split(new char[] { '?' })[0].ToString();

                if (target.ToLower().Contains("SPID".ToLower()))
                //string strSPID = target.ToLower().Substring(5 +target.IndexOf("SPID=".ToLower())).ToString();
                {
                    //targetDisplayValue = target.Substring(4).Split(new char[] { '?' })[0].ToString() + "SPID=" + Request.QueryString["SPID"].ToString();
                    string strSPID = target.Substring(5 + target.IndexOf("SPID=")).ToString().Split(new char[] { '&' })[0].ToString();
                    targetDisplayValue = target.Substring(4).Split(new char[] { '?' })[0].ToString() + "?SPID=" + strSPID;
                }
            }
	    else {
		targetDisplayValue = "/Centrallogin/centrallanding.aspx";
            }	
        }

        //protected void PIV(object sender, EventArgs e)
        //{
        //    String appname1 = Request["TARGET"];
        //    Response.Redirect(appname1 + "/PIV/piv.aspx", true); /*fortify error*/
        //}
        //protected void IWAbutton(object sender, EventArgs e)
        //{
        //    String appname = Request["appname"];
        //    Response.Redirect("http://www.google.com", true);
        //    //window.location = "SomePage.aspx";
        //    //window.location.href = "SomePage.aspx";
        //    //window.location.assign("SomePage.aspx");
        //}

        // protected void Network_Click(object sender, EventArgs e)
        //{
        //    String appname = Request["appname"];
        //    Response.Redirect(appname + "/network/redirect.aspx", true);
        //}
  

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //protected void PIVButton_Click(object sender, EventArgs e)
        //{
        //   String appname = Request["appname"];
        //   Response.Redirect(appname + "/PIV/piv.aspx", true);
        //}

    }
}