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
                            <b>Login Failed.</b>
                            <br />
                        </p>
                        <p>Please verify your user ID and password, and try to login again.</p>
                    </center>
                </div>

            </div>
        </div>
    </div>

<%--        <div class="row">
            <div class="col-md-12">

               <div class="homeHeader corrected text-left">
                    VA Access Control Services
                </div>

                <div>
                    <div class="homeSectionHeader corrected text-left">
                        Login Failed
                    </div>

                    <div class="hometext corrected text-left">
                        <script type="text/javascript">
                            document.write("Please verify your User ID and Password and <a href='" + "/CentralLogin/prov/redirect.asp'>try to login again</a>.");
                        </script>
                        <br />
                        <br /> If you need additional assistance, please contact the National Service Desk Support, VBA Philadelphia, at 855-673-4357 (Option 3) or email at ITSC@va.gov.
                    </div>
                </div>
            </div>
        </div>--%>
    </asp:Content>