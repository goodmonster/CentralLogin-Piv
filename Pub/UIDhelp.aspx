<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Header.Master" CodeBehind="UIDhelp.aspx.cs" Inherits="CentralLogin.WebForm3" %>
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

                    Application - User ID and password &nbsp;
                </div>
                <div class="hometext corrected text-left">
                    <ul>

                        Please use your application UserID and Password for accessing the requested application.

                    </ul>
                </div>
            </div>
        </div>
    </asp:Content>