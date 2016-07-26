<%@ Page Language="C#"  AutoEventWireup="true" MasterPageFile="~/header.Master" CodeBehind="redirect.aspx.cs" Inherits="CentralLogin.WebForm4" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
     <script type="text/javascript">

         window.location = "<%= Session["target"]%>";
  </script>  
 
</asp:Content>
