<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" Inherits="CentralLogin.WebForm2" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="siteminderContent" runat="server">
        <div class="row">
            <div class="col-md-12">

                <div class="homeHeader corrected text-left">
                    VA Access Control Services
                </div>
                <div>
                    <div class="homeSectionHeader corrected text-left">

                        <div class="hometext corrected text-left">
                            <script type="text/javascript">
                                document.write("You have been redirected to this page due to a security threat being detected. Please validate the target url.");
                            </script>
                        </div>
                        <div class="hometext corrected text-left">
                            If you need additional assistance, please contact the VA Service Desk at 1-855-673-4357 (Option 3) or via email at itsc@va.gov
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Content>