<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssessmentScheduling.aspx.cs" Inherits="VC_Workload1.AssessmentScheduling" MasterPageFile="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-calendar-alt"></i> Assessment Scheduling and Timetabling
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6">
                <div class="card shadow h-100">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Assessment Scheduling</h4>
                        <div class="form-group">
                            <asp:GridView ID="gvAssessmentScheduling" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="AssessmentName" HeaderText="Assessment Name" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Time" HeaderText="Time" />
                                    <asp:BoundField DataField="Location" HeaderText="Location" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card shadow h-100">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Timetabling</h4>
                        <div class="form-group">
                            <asp:GridView ID="gvTimetabling" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="Module" HeaderText="Course" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" />
                                    <asp:BoundField DataField="Time" HeaderText="Time" />
                                    <asp:BoundField DataField="Location" HeaderText="Location" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
        }
        .card {
            transition: transform .2s;
            height: auto;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .text-blue {
            color: #1A237E;
        }
    </style>
</asp:Content>

