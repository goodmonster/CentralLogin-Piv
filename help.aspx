<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Header.Master" CodeBehind="help.aspx.cs" Inherits="CentralLogin.IWAhelp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
  
</script>
<style type="text/css">
    div.label
    {
        float: left; 
        position: relative; 
        width: 200px; 
        height: 20px;
    }
    div.select select
    {
    	width: 200px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="" runat="server">
    <div id="layer3">
        <p class="homeSectionHeader">
            &nbsp;</p>
        <div id="layer4">
            <span class="homeHeader"><b>VA Identity and Access Management System (IAM) Help</b></span>
        </div>
        <div id="layer5">
        <!--p class="hometext">
            If you need assistance, please contact the CSP Help Desk at:  <a href="mailto:CSPHelpDesk@va.gov">CSPHelpDesk@va.gov</a>
        </p-->
            <p class="homeSectionHeader">
                Have you forgotten your User ID or password?
            </p>
            <p class="hometext">
                If you have forgotten your User ID, click <a href="http://localhost:51336/iam/im/cspippub/ca12/index.jsp?task.tag=forgottenuserid">Forgot your User ID</a>.<br />
                If you have forgotten your password, click <a href="http://localhost:51336/iam/im/cspippub/ca12/index.jsp?task.tag=forgottenpasswordreset">Forgot your Password</a>.
            </p>
            <p class="homeSectionHeader">
                &nbsp;</p>
        </div>
 </div>
</asp:Content>
