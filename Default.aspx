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
        <div class="panel-body" id="mainPanelBody"  >
<%--        <link href="centrallogin.css" type="text/css" rel="stylesheet"  />--%>
            <div id="ContentBody" >

                <!--Main Pannel-->
                <div class="panel panel-default" style="border: 0;">
                    <!--Image with clickable areas-->
                    <div class="panel-body">
                        <div class="row">
                              <%--Small Image--%>
                              <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
                                  <div class="sm-image-container"> <!--this is where the tricky stuff is for small image-->

                                      <div class="sm-image-inner-div">

                                          <div class="sm-top-text-outer-div">
                                              <div class="css-table-max-width-and-height">
                                                  <div class="css-table-cell-fully-centered">
                                                      <div class="sm-text-inner-div">
                                                          <p class="sm-upper-white-text">VA SINGLE SIGN-ON</p>
                                                          <p class="sm-lower-white-text">Sign in to continue</p>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div><!--end of sm-top-text-outer-div-->

                                          <div class="sm-piv-div">
                                              <div class="sm-piv-upper">
                                                  <a href="#" onclick="javascript: signinPIV();">
                                                      <img class="img-responsive sm-piv-img application-button-image" src="/CentralLogin/img/cl-piv-btn.png" alt="Sign in with PIV" title="Sign in with PIV"/> 
                                                  </a>
<%--                                               <asp:LinkButton ID="LinkButton_Piv_Sm" runat="server" OnClick="PIVButton_Click">
                                                     <img class="img-responsive sm-piv-img application-button-image" src="/CentralLogin/img/cl-piv-btn.png" alt="Sign in with PIV" title="Sign in with PIV"/> 
                                               </asp:LinkButton>--%>
                                              </div>
                                              <div class="sm-piv-lower">
                                                 <a href="#" data-toggle="modal" data-target="#other-sign-in-modal" >View Other Sign-in Options</a>
                                              </div>
                                          </div><!--end of piv-div-->

                                      </div><!--end of sm-image-inner-div-->

                                  </div><!--end of sm-image-container-->
                              </div>
                              <%--End of Small Image--%>

                              <%--Big Image--%>
                              <div class="col-lg-12 col-md-12 col-sm-12 hidden-xs">
                                  <div class="big-image-container"> <!--this is where the tricky stuff is-->

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
                                          </div><!--end of left-text-outer-div-->

                                          <div class="piv-div">
                                              <div class="piv-upper">
                                                  <a href="#" onclick="javascript: signinPIV();">
                                                      <img class="img-responsive piv-img application-button-image" src="img/cl-piv-btn.png" alt="sign in with piv" title="sign in with piv"/> 
                                                  </a>
<%--                                               <asp:LinkButton ID="LinkButton_Piv_Lg" runat="server" OnClick="PIVButton_Click">
                                                     <img class="img-responsive piv-img application-button-image" src="/CentralLogin/img/cl-piv-btn.png" alt="Sign in with PIV" title="Sign in with PIV"/> 
                                               </asp:LinkButton>--%>

                                              </div>
                                              <div class="piv-lower">
                                                   <a href="#" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</a>
                                            </div>
                                          </div><!--end of piv-div-->

                                      </div><!--end of big-image-inner-div-->

                                  </div><!--end of big-image-container-->

                              <!--</div>&lt;!&ndash;end of contentPagewell&ndash;&gt;-->

                          </div><!--end of maincontent-->
                        </div> <%--row--%>
                    </div><!--end of pannel-body-->

                </div><!-- end of panel-->
            </div> 
         </div> <%--end of main panel body--%>

</form>

    <!-- Modal Markup kept out of all the div elements -->
    <div class="modal fade" id="other-sign-in-modal">

         <div class="modal-dialog" style="max-width:528px;">
            <div class="modal-content">
                <!-- Modal Header -->
                <!--http://stackoverflow.com/questions/15976709/bootstrap-modal-with-buttonimg-that-hangs-over-the-edge-->
                <div class="modal-header" style="background-image: url(/CentralLogin/img/sso-mod-header.png); height: 41px; padding-top: 0px; padding-bottom: 0px;">
                    <button type="button" class="close" data-dismiss="modal" style="position: absolute; margin: 0; top: -10px; right: -10px; opacity: 0.9;">
                        <img src="/CentralLogin/img/cl-lightweight-modal-close-button.png"; width="20px" alt="Close Modal Button"/>
                    </button>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6"><span style="position: absolute; left: 15px; top: 12px; color: #FFFFFF;text-align: left;">VA Single Sign-On</span></div>
                    </div>
                </div>

                <!-- Modal Body -->
                <div class="modal-body" style="margin-left:15% ;margin-right:15%; text-align: center;">


                    <div class="row">
                         <div class="col-xs-12 cspselect-button-responsive-column">
							<button id="btn_iwa_logon" class="btn cspselect-csp-button" title="Sign in with Windows Authentication" onclick="javascript: signinIWA();">

								<div class="cspselect-button-logo-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
											<img class="cspselect-csp-logo-tall" src="/CentralLogin/img/sso-mod-wia.png" alt="Sign in with Windows Authentication">
										</div><!--close table-cell div-->
									</div><!--close table div-->
								</div>

								<div class="cspselect-button-text-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
                                          <b>Sign in with</b><br/>
                                          <b>Windows Authentication</b>
 									    </div><!--close table-cell div-->
									</div><!--close table div-->
								</div>
							</button>
						</div> <%-- end of colum --%>
                       </div> <%-- end of row --%>

                    <%-- Spacer row --%>
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>

                    <div class="row">
                         <div class="col-xs-12 cspselect-button-responsive-column">

                            <button class="btn cspselect-csp-button" title="Sign in with VA Network ID" data-toggle="modal" data-target="#va-network-sign-in-modal" data-dismiss="modal">
								<div class="cspselect-button-logo-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
											<img class="cspselect-csp-logo-tall" src="/CentralLogin/img/sso-mod-va.png" alt="Sign in with VA Network ID">
										</div><!--close table-cell div-->
									</div><!--close table div-->
								</div>

								<div class="cspselect-button-text-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
											Sign in with<br/>
                                            VA Network ID<br/>
                                            <p style="font-weight: normal;">*Disabled for most users</p>
										</div><!--close table-cell div-->
									</div><!--close table div-->
								</div>
                             </button>

						</div> <%-- end of colum --%>
                       </div> <%-- end of row --%>
                    </div> <%--modal body--%>
                
                <div class="modal-footer" style ="padding-top: 0px; border:0px">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 10px;">
                        <button type="button" class="widget-confirm-redirect-cancel-button" style="float: left;" data-dismiss="modal">Back</button>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>

      <%--Modal Va Network sign in dialog prompt for user id and password--%>
    <div class="modal fade" id="va-network-sign-in-modal">

    <div class="modal-dialog" style="max-width:528px;">

        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header" style="background-image: url(/CentralLogin/img/sso-mod-header.png); ">
                    <button type="button" class="close" data-dismiss="modal" style="position: absolute; margin: 0; top: -10px; right: -10px; opacity: 0.9;">
                        <img src="/CentralLogin/img/cl-lightweight-modal-close-button.png"; width="20px"/>
                    </button>
                <div class="row">
                   <div class="col-md-10" style="color: #FFFFFF">VA Single Sign-On</div>
                </div>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                <div class="row">
                   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:left; font-size:1.2em ">
                        <b>Temporary Access with VA Network ID</b>
                    </div>
                   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:left; padding-top: .5em; padding-bottom: .5em">
                        Enter your VA Active Directory (AD) user ID (i.e. vhaiswsmithj) and password:
                    </div>
                </div>
                
                  <div class="row" id="usr-name" style="padding-top:1.2em; padding-bottom:1.2em;">
                         <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="text-align:right;">
                             <label for="USERINPUT" id="userIdLabel">User ID</label>
                         </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align:left;">
                             <input id="USERINPUT" name="USER" class="loginInput" style="width: 100%" type="text" onkeypress="submitonenter('login', event)" />
                        </div>
                   </div>

                <div class="row" id="pwd">
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="text-align:right;">
                         <label for="PASSWORDINPUT">Password</label>
                     </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align:left;">
                             <input id="PASSWORDINPUT" name="PASSWORD" class="loginInput" style="width: 100%" type="password" onkeypress="submitonenter('login', event)" />
                    </div>
                </div>
                <p>&nbsp;</p>

                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                         <button type="button" id="va-network-sign-in-modal-back" class="btn-default widget-confirm-redirect-cancel-button"  data-dismiss="modal">Back</button>
                   </div>
                    <div class="col-lg-10  col-md-10 col-sm-10 col-xs-10">
                        <button type="button" id="va-network-sign-in-modal-signin" class="widget-confirm-redirect-next-button" style="border-radius: 0px; float: right;" onclick="javascript: checkLogin();"> Sign In </button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

    
  

</asp:Content>
