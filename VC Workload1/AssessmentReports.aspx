<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssessmentReports.aspx.cs" Inherits="VC_Workload1.AssessmentReports" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-file-alt"></i> Assessment Reports
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-8 offset-md-2">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Internal Use Only</h4>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="AssessmentID">Assessment ID:</label>
                                    <asp:TextBox ID="AssessmentID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessmentName">Assessment Name:</label>
                                    <asp:TextBox ID="AssessmentName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessmentType">Assessment Type:</label>
                                    <asp:TextBox ID="AssessmentType" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="AssessmentDate">Assessment Date:</label>
                                    <asp:TextBox ID="AssessmentDate" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessmentDescription">Assessment Description:</label>
                                    <asp:TextBox ID="AssessmentDescription" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessmentStatus">Assessment Status:</label>
                                    <asp:DropDownList ID="AssessmentStatus" runat="server" CssClass="form-control" Enabled="false"></asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <hr />

                        <h5 class="card-title text-blue text-uppercase mt-4 mb-3">Summary Results</h5>
                        <asp:GridView ID="SummaryResultsGrid" runat="server" CssClass="table table-striped">
                            <Columns>
                                <asp:BoundField DataField="Question" HeaderText="Question" />
                                <asp:BoundField DataField="Answer" HeaderText="Answer" />
                                <asp:BoundField DataField="Score" HeaderText="Score" />
                            </Columns>
                        </asp:GridView>

                        <hr />

                        <h5 class="card-title text-blue text-uppercase mt-4">Assessor Information</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="AssessorName">Assessor Name:</label>
                                    <asp:TextBox ID="AssessorName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessorPosition">Assessor Position:</label>
                                    <asp:TextBox ID="AssessorPosition" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="AssessorEmail">Assessor Email:</label>
                                    <asp:TextBox ID="AssessorEmail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="AssessorOrganization">Assessor Organization:</label>
                                    <asp:TextBox ID="AssessorOrganization" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <h5 class="card-title text-blue text-uppercase mt-4">Acknowledgment</h5>
                        <asp:TextBox ID="Acknowledgment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>

                       <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='AdminDashboard.aspx'">Back to Dashboard</button>

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
            height: 100%;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .text-blue {
            color: #1A237E;
        }

        .text-blue-light {
            color: #2196F3;
        }

        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            font-size: 0.9rem;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>