<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" Inherits="CentralLogin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
    <div id="layer2">
        <span class="homeHeader">VA Access Control Services</span>
    </div>
    <div id="layer3">
        <p class="homeSectionHeader">
            <b>Login Failed</b>
            <p class="hometext">
            <script type="text/javascript">
				
				document.write("Please check your User ID and Password and <a href='https://logon.dev2.iam.va.gov/affwebservices/public/saml2sso?SPID=concurdev'>try to login again</a>."); 
			</script>  
		</p>
        <p class="hometext">
            If you need additional assistance, please contact the VA Service Desk at 1-888-596-4357 or via email at VASD@va.gov.
        </p>
    </div>
</asp:Content>
 