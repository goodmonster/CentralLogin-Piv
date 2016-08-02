<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/header.Master" CodeBehind="Default.aspx.cs" Inherits="CentralLogin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">


        function checkLogin() {
            
            var userInput = document.getElementById("USERINPUT");
            var pwInput = document.getElementById("PASSWORDINPUT");

            if ((userInput.value == "") && (pwInput.value == "")) {
                alert("Please enter a User ID and Password");
                userInput.focus();
                return false;
            }

            if (userInput.value == "") {
                alert("Please enter a valid User ID");
                userInput.focus();
                return false;
            }

            if (pwInput.value == "") {
                alert("Please enter a valid Password");
                pwInput.focus();
                return false;
            }

            //get the form and set user and pwd from modal
            var login = document.getElementById("login");
            login.USER.value = userInput.value;
			
			var xftpznq = document.getElementById("xftpznq");
			xftpznq.name="PASSWORD";
            xftpznq.value = pwInput.value;

            login.action = "/siteminderagent/forms/login.fcc";
            <% Session["url"] = Request["URL"];%>

            var valueofTarget = '<%= Session["URL"]%>'
            //var = Request["URL"];
            //alert(valueofTarget);
            //login.TARGET.value = "https://logon.dev2.iam.va.gov/prototype/index.htm";
            login.TARGET.value = valueofTarget;
            //login.TARGET = valueofTarget;
            login.method = "post";
            login.submit();
            return true;
        }

        function submitonenter(formid, evt) {

            if (evt.keyCode == 13 || evt.which == 13) {
                checkLogin();
            }
        }

        function signinIWA() {
            <% Session["appname"] = Request.QueryString["appname"];%>;
            appName = '<%= Session["appname"]%>';
            window.location = appName + '/IWA/redirect.aspx';
            return true;
        }

        function signinPIV() {
            <% Session["appname"] = Request.QueryString["appname"];%>;
            appName = '<%= Session["appname"]%>';
            window.location = appName + '/PIV/piv.aspx';
            return true;
        }

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
    <%--WITH MY COMMENTS--%>
    <form id="login" name="login" method="post" runat="server">
        <% Session["appname"] = Request["appname"];%>
        <%-- The following is a work around until CA ticket 00293628 is fixed, where the web agent replaces the "%" to "$%" or "-%" --%>
        <% 
    var tv = HttpUtility.UrlEncode(targetvalue);
    if (tv.Contains("%24%") || tv.Contains("%24+"))
    {
        tv = tv.Replace("%24%", "%");
        tv = tv.Replace("%24+", "+");
    }
    else
    if (tv.Contains("-%") || tv.Contains("-+"))
    {
        tv = tv.Replace("-%", "%");
        tv = tv.Replace("-+", "+");
        tv = tv.Replace("--", "-");
    }
    tv = HttpUtility.UrlDecode(tv);
    if (tv.Contains("#"))
    {
        tv = tv.Replace("#", "%23");
    }
    if (tv.Contains("&"))
    {
        var after_first_amp = tv.ToString().Substring(tv.ToString().IndexOf("&") + 1).ToString();
        if (after_first_amp.Contains("&"))
        {
            after_first_amp = after_first_amp.Replace("&", "%26");
        }
        var before_first_amp = tv.ToString().Substring(0, tv.ToString().IndexOf("&") + 1).ToString();
        tv = before_first_amp.ToString() + after_first_amp.ToString();
    }
    Session["Target"] = tv;
        %>
        <% Session["url"] = Request["URL"];%>
        <% Session["targetActualValue"] = Request["TARGET"];%>
        <input type="hidden" name="TARGET" value="$$target$$" />
        <input type="hidden" name="SMQUERYDATA" value="" />
        <input type="hidden" name="smauthreason" value="0" />
        <input type="hidden" name="postpreservationdata" value="[[Same Base64(glob)]]" />
        <input type="hidden" name="SMENC" value="ISO-8859-1" />
        <input type="hidden" name="SMLOCALE" value="US-EN" />
        <input type="hidden" name="USER" value="" />
        <input type="hidden" id="xftpznq" />
        <!--Main Pannel-->
        <div id="mainPanelBody">

            <%--<div id="ContentBody">--%>

                <!--Main Pannel-->
                <div class="panel-body" style="border: 0;">

                    <!--Image with clickable areas-->
                    <div class="panel-body">
                        <div class="row">
                            <%--Small Image--%>
                            <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
                                <div class="sm-image-container">
                                    <!--this is where the tricky stuff is for small image-->

                                    <div class="sm-image-inner-div">

                                        <div class="sm-top-text-outer-div">
                                            <div class="css-table-max-width-and-height">
                                                <div class="css-table-cell-fully-centered">
                                                    <div class="sm-text-inner-div">
                                                        <p role="contentinfo" class="sm-upper-white-text">VA SINGLE SIGN-ON</p>
                                                        <p role="contentinfo" class="sm-lower-white-text">Sign in to continue</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of sm-top-text-outer-div-->

                                        <div class="sm-piv-div">
                                            <div class="sm-piv-upper">
                                                <a role="navigation" href="#" onclick="javascript: signinPIV();">
                                                    <img class="img-responsive sm-piv-img application-button-image" src="/CentralLogin/img/cl-piv-btn.png" alt="Sign in with PIV" title="Sign in with PIV" />
                                                </a>
                                            </div>
                                            <div class="sm-piv-lower">
                                                <a href="#" role="navigation" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</a>
                                            </div>
                                        </div> <!--end of piv-div-->

                                    </div><!--end of sm-image-inner-div-->

                                </div><!--end of sm-image-container-->
                                
                            </div>
                            <%--End of Small Image--%>

                            <%--Big Image--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 hidden-xs">
                                <div class="big-image-container">
                                    <!--this is where the tricky stuff is-->

                                    <div class="big-image-inner-div">
                                        <div class="left-text-outer-div">
                                            <div class="css-table-max-width-and-height">
                                                <div class="css-table-cell-fully-centered">
                                                    <div class="left-text-inner-div">
                                                        <p class="upper-white-text">VA SINGLE SIGN-ON</p>
                                                        <p class="lower-white-text">Sign in to continue</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of left-text-outer-div-->

                                        <div class="piv-div">
                                            <div class="piv-upper">
                                                <a href="#" onclick="javascript: signinPIV();">
                                                    <img class="img-responsive piv-img application-button-image" src="img/cl-piv-btn.png" alt="sign in with piv" title="sign in with piv" />
                                                </a>
                                            </div>
                                            <div class="piv-lower">
                                                <a href="#" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</a>
                                            </div>
                                        </div><!--end of piv-div-->

                                    </div><!--end of big-image-inner-div-->
                                    
                                </div> <!--end of big-image-container-->

                                <!--</div>&lt;!&ndash;end of contentPagewell&ndash;&gt;-->

                            </div> <%--end of colomn--%>
                             <%--End of Big Image--%>
                        </div> <%-- end of row--%>
                       
                    </div>  <%--end of pannel-body--%>                   
                </div> <%--end of pannel --%>
                
           <%-- </div>--%> <%--end of ContentBody--%>
        </div> <%--end of mainPanelBody--%>
        
    </form>


</asp:Content>
