<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" Inherits="CentralLogin.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">

    <div class="panel panel-default" style="border: 0; padding-top: 55px; padding-bottom: 55px;">

        <div class="panel-body" style="text-align: center">

            <div class="row">
                <div class="col-md-12">

                    <center>
                        <br />
                        <p>
                            <b>Your IAM SSO session timed out due to inactivity.</b>
                            <br />
                        </p>
                        <p>
                            <script type="text/javascript">
                                document.write("Please <a href='" + "<%= Session["target"]%>'>log in again</a> and you will be returned to your application.");
                            </script></p>
                    </center>
                </div>
            </div>
            <div class="row" style="margin-top:10%">
                <div class="col-md-12">
                    <center>
                    <p>For general questions regarding the IAM authentication service, please contact the National Service Desk Support, VBA Philadelphia, at 855-673-4357 Option 3) or email at ITS@va.gov.</p>
                    </center>
                        </div>
                </div>
        </div>
    </div>


<%--   <div class="row">
            <div class="col-md-12">
                <div class="homeHeader corrected text-left">
                    VA Identity and Access Management System (IAM)
                </div>
    <div id="layer3">
        <p class="homeSectionHeader">

            <p class="hometext">
            <script type="text/javascript">
                                 				
				document.write("Your IAM SSO session timed out due to inactivity. Please <a href='" + "<%= Session["target"]%>'>log in again</a> and you will be returned to your application."); 

			</script>  
		</p>
       
    </div>
       </div></div>--%>
</asp:Content>
 