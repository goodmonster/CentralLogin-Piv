<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" Inherits="CentralLogin.WebForm2" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
    <div class="panel panel-body" >
        <div class="panel-body" style="text-align: center;  margin-bottom:20%;">
            <div class="row">
                <div class="col-md-12">
                   <b>Login Failed</b>
                </div>

                <div class="col-md-12">
                    <p>You have not been authorized access to this application. Please contact your local IT support Help Desk.</p>
                    <p>If you need additional assistance, please contact the National Service Desk Support, VBA Philadelphia, at 855-673-4357 (Option 3) or email at ITSC@va.gov.</p>
                </div>
            </div>
        </div>
     </div>
    </asp:Content>