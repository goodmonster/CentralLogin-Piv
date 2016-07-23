<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" Inherits="CentralLogin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">

    <div class="panel-body" style="text-align: center; margin-bottom: 20%;">
        <div class="row">
                <div class="col-md-12">
                   <b>Login Failed</b>
            <p><script type="text/javascript">
                document.write("Please check your User ID and Password and <a href='https://logon.dev2.iam.va.gov/affwebservices/public/saml2sso?SPID=concurdev'>try to login again</a>.");
			</script></p>
        </div>
        <%--<div class="col-md-12">
            <p>If you need additional assistance, please contact the VA Service Desk at 1-888-596-4357 or via email at VASD@va.gov.</p>
        </div>--%>
    </div>
    </div>
</asp:Content>
