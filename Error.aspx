<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Header.Master" CodeBehind="Error.aspx.cs" Inherits="CentralLogin.WebForm2" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script type="text/javascript">
        </script>
        <style type="text/css">
            div.label {
                float: left;
                position: relative;
                width: 200px;
                height: 20px;
            }
            
            div.select select {
                width: 200px;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
        <div class="row">
            <div class="col-md-12">

                <div class="homeHeader corrected text-left">
                    VA Identity and Access Management Solution (IAM)
                </div>
               
                <div class="hometext corrected text-left">

                    Invalid credentials , please try <a href="Default.aspx">login again </a>
                </div>
            </div>
        </div>
    </asp:Content>