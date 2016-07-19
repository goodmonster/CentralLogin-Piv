<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Header.Master" CodeBehind="Default.aspx.cs" Inherits="CentralLogin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
    <script language="javascript">
        function logout() {
            this.location.replace("loggedout.aspx");
        }
    </script>

    <div class="panel panel-default" style="border:0; font-family: 'Arial Bold', 'Arial'; font-size: 14px;  padding-top: 55px; padding-bottom: 55px;">

        <div class="panel-body" style="text-align:center">

            <div class="row">
                <div class="col-md-12">
                    <center>
                        <p><b>You are logged in to IAM Single Sign On Internal (SSOi).</b></p>
                        <p>You have been logged out of <%= Session["target"]%>.</p>
                        <p>You can navigate to another application protected by IAM SSOi without logging in.</p>
                        <p>If you are done, you can log out of IAM SSOi by clicking the button below.</p>
                    </center>
                    
                </div>
            </div>
<%--            <div class="row">
                <div class="col-md-12">
                    You have been logged out of <%= Session["target"]%>.       
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    You can navigate to another application protected by IAM SSOi without logging in.       
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    If you are done, you can log out of IAM SSOi by clicking the button below.       
                </div>
            </div>--%>
            <div class="row" style="margin-top:30px;">
                <form runat="server">
                    <input type="button" class="btn btn-default pull-center" onclick="javascript: logout()" value="Logout" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
