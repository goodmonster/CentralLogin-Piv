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
                            <b>You are logged out of IAM Single Sign On Internal (SSOi).</b>
                            <br />
                        </p>
                        <p>To protect your privacy, please close your browser after completing the log off.</p>
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
                        You have not been authorized access to this application. Please contact your local IT support Help Desk.
                        <br />
                        <br /> 
                        
                        If you need additional assistance, please contact the National Service Desk Support, VBA Philadelphia, at 855-673-4357 (Option 3) or email at ITSC@va.gov.
                    </div>

                </div>
            </div>
        </div>--%>
    </asp:Content>