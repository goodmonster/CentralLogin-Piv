<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/header.Master" CodeBehind="Default.aspx.cs" Inherits="CentralLogin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript">
        function checkLogin() {
            var login = document.getElementById("login");

            if ((login.USER.value == "") && (login.PASSWORD.value == "")) {
                alert("Please enter a User ID and Password");
                login.USER.focus();
                return false;
            }

            if (login.USER.value == "") {
                alert("Please enter a valid User ID");
                login.USER.focus();
                return false;
            }

            if (login.PASSWORD.value == "") {
                alert("Please enter a valid Password");
                login.PASSWORD.focus();
                return false;
            }

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

            <% Session["appname"] =  Request.QueryString["appname"];%>
            appName = '<%= Session["appname"]%>'
            window.location = appName + '/IWA/redirect.aspx'
            alert(window.location);
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
if (tv.Contains("%24%") || tv.Contains("%24+") )
{
	tv = tv.Replace("%24%","%");
	tv = tv.Replace("%24+","+");
}
else
if (tv.Contains("-%") || tv.Contains("-+") )
{
	tv = tv.Replace("-%","%");
	tv = tv.Replace("-+","+");
	tv = tv.Replace("--","-");
}
tv = HttpUtility.UrlDecode(tv);
if (tv.Contains("#"))
{
	tv = tv.Replace("#","%23");
}
if (tv.Contains("&"))
{
	var after_first_amp = tv.ToString().Substring(tv.ToString().IndexOf("&")+1).ToString();
	if (after_first_amp.Contains("&"))
	{
		after_first_amp = after_first_amp.Replace("&","%26");
	}
	var before_first_amp = tv.ToString().Substring(0,tv.ToString().IndexOf("&")+1).ToString();
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
        <!--Main Pannel-->
        <div class="panel-body" id="mainPanelBody"  >
<link href="centrallogin.css" type="text/css" rel="stylesheet"  />
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
                                               <asp:LinkButton ID="LinkButton_Piv_Lg" runat="server" OnClick="PIVButton_Click">
                                                     <img class="img-responsive piv-img" src="img/cl-piv-btn.png" alt="PIV login">                                                
                                               </asp:LinkButton>
                                                 <%-- <a class="zzz" href="http://m.va.gov/">
                                                      <img class="img-responsive piv-img" src="img/cl-piv-btn.png" alt="PIV login">
                                                  </a>--%>
                                              </div>
                                              <div class="sm-piv-lower">
                                                 <a href="#" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</a>
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
                                  <!--<img class="img-responsive" alt="Blue Shell" src="img/cl-blue-shell.png" style="/*display:block;position: relative;top: 0;left: 280px; margin-left: 200px; *//* margin-right: auto; */">-->

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
                                               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="PIVButton_Click">
                                                     <img class="img-responsive piv-img" src="img/cl-piv-btn.png" alt="PIV login">                                                
                                               </asp:LinkButton>
                                              </div>
                                              <div class="piv-lower">
                                                 <%--<div class="btn-link" style="position: absolute; left: 20%; bottom: 5%; height: 10%; width: 60%; /*border: double*/" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</div>--%>
                                                   <a href="#" data-toggle="modal" data-target="#other-sign-in-modal">View Other Sign-in Options</a>
                                            </div>
                                          </div><!--end of piv-div-->

                                      </div><!--end of big-image-inner-div-->

                                  </div><!--end of big-image-container-->

                              <!--</div>&lt;!&ndash;end of contentPagewell&ndash;&gt;-->

                          </div><!--end of maincontent-->

                    </div><!--end of container-->

                </div><!--end of mainPageEnclosingDiv-->

    </form>
  
    
    <!-- Modal Markup kept out of all the div elements -->
    <div class="modal fade" id="other-sign-in-modal">

        <div class="modal-dialog" >

            <div class="modal-content">
                <!-- Modal Header -->
                <!--http://stackoverflow.com/questions/15976709/bootstrap-modal-with-buttonimg-that-hangs-over-the-edge-->
                <div class="modal-header" style="background-image: url(img/sso-mod-header.png); height: 41px; padding-top: 0px; padding-bottom: 0px;">
                    <button type="button" class="close" data-dismiss="modal" style="position: absolute; margin: 0; top: -10px; right: -10px; opacity: 0.9;">
                        <img src="img/cl-x-close-modal.png"; width="20px"/>
                    </button>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6"><span style="position: absolute; left: 15px; top: 12px; color: #FFFFFF;text-align: left;">VA Single Sign-On</span></div>
                    </div>
                </div>

                <!-- Modal Body -->
                <div class="modal-body" style="margin-left:15% ;margin-right:15%; text-align: center;">

                     <%--<div class="row" style="display:flex; min-height:82px; align-items:center; border:1px solid;  background-color:#e9f0ff;">--%>

                     <div class="clickable-row cspselect-csp-button" href="http://google.com">

                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                             <button type="button" class="btn-link"  data-target="#va-network-sign-in-modal" data-dismiss="modal" onclick="javascript: signinIWA();" style="border: 0; background: transparent url(img/sso-mod-wia.png); height: 45px; width: 47px; margin: 25%"/>
                        </div>

                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <img src="img/sso-mod-vline.png" align="left">
                        </div>

                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                               <b>Sign in with</b><br/>
                               <b>Windows Authentication</b>
                        </div>
                    </div>

                    <%-- Spacer row --%>
                    <div class="row"><div class="col-md-12">&nbsp;</div></div>
                    <%--button type="button" class="btn-link" data-toggle="modal" data-target="#va-network-sign-in-modal" data-dismiss="modal"--%> 
                   <div class="row cspselect-csp-button">
                    <%--<div class="row" style="display:flex; min-height:82px; align-items:center; border:1px solid;  background-color:#e9f0ff;">--%>

                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <%--<button type="button" class="btn-link" data-toggle="modal" data-target="#va-network-sign-in-modal" data-dismiss="modal"  style=" border: 0; background: transparent url(img/sso-mod-va.png); height: 50px; width: 50px; margin: 25%" />--%>
                            <button type="button" style=" border: 0; background: transparent url(img/sso-mod-va.png); height: 50px; width: 50px; margin: 25%" />
                         </div>

                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <img src="img/sso-mod-vline.png" align="left">
                        </div>

                        <!--<div class="col-lg-6 col-md-9 col-sm-9 col-xs-9" style="background-image: url(img/sso-mod-vline.png) ; background-repeat: no-repeat; /*margin-top: 10px; line-height: 0.5;*/">-->
                        <%--<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">--%>
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8"> 
                                <b>Sign in with</b><br/>
                                <b>VA Network ID</b><br/>
                                *Disabled for most users

                        </div>
                    </div>
                    
                    <div class="row">

                         <div class="col-xs-12 cspselect-button-responsive-column">
							<button id="btn_ds_logon" class="btn cspselect-csp-button" title="Sign in with DS Logon" onclick="javascript: signinIWA();">

								<div class="cspselect-button-logo-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
											<img class="cspselect-csp-logo-tall" src="img/sso-mod-va.png" alt="DS Logon Logo">
										</div><!--close table-cell div-->
									</div><!--close table div-->
								</div>

								<div class="cspselect-button-text-div">
									<div class="css-table-max-width-and-height">
										<div class="css-table-cell-fully-centered">
													Sign in with<br>DS Logon
										</div><!--close table-cell div-->
									</div><!--close table div-->
								</div>
							</button>
						</div>

                         </div>
                    </div>
                </div>
                
                <div class="modal-footer" style ="padding-top: 0px; border:0px">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 10px;">
                        <%--widget-confirm-redirect-cancel-button--%>
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
            <div class="modal-header" style="background-image: url(img/sso-mod-header.png); ">
                    <button type="button" class="close" data-dismiss="modal" style="position: absolute; margin: 0; top: -10px; right: -10px; opacity: 0.9;">
                        <img src="img/cl-x-close-modal.png"; width="20px"/>
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
                         <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="text-align:right; padding-top: .5em">
                             <label for="USERINPUT" id="userIdLabel">User ID</label>
                         </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align:left;">
                             <input id="USERINPUT" name="USER" class="loginInput" style="width: 100%" type="text" onkeypress="submitonenter('login', event)" />
                        </div>
                   </div>

                <div class="row" id="pwd">
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="text-align:right;  padding-top: .5em">
                         <label for="PASSWORDINPUT">Password</label>
                     </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="text-align:left;">
                             <input id="PASSWORDINPUT" name="PASSWORD" class="loginInput" style="width: 100%" type="password" onkeypress="submitonenter('login', event)" />
                    </div>
                </div>
                <p>&nbsp;</p>

                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                        <button type="button" class="btn-default " style="border-radius: 0px; float: left;" data-dismiss="modal"> Back </button>
                    </div>
                    <div class="col-lg-11  col-md-11 col-sm-11 col-xs-10">
                        <button type="button" class="btn-default btn-primary" style="border-radius: 0px; float: right;" onclick="javascript: checkLogin();"> Sign In </button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</asp:Content>
