<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Header.Master" CodeBehind="IWAhelp.aspx.cs" Inherits="CentralLogin.IWAhelp" %>
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
                <div class="homeSectionHeader corrected text-left">
                    IWA - Windows Authentication&nbsp;
                </div>
                <div class="hometext corrected text-left">

                    If you are a VA employee and logged into VA Windows machine, you may use this authetication type for accessing the application requested.


                </div>
            </div>
        </div>
    </asp:Content>