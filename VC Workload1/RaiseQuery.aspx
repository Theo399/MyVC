<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RaiseQuery.aspx.cs" Inherits="VC_Workload1.RaiseQuery" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-question-circle"></i> Raise a Query.
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Query Details</h4>
                        <form method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="StudentNo">Student Number</label>
                                <input type="text" class="form-control" id="StudentNo" name="StudentNo" runat="server" required>
                            </div>
                             <div class="form-group">
                                <label for="Module">Module Code</label>
                                <input type="text" class="form-control" id="Text1" name="Module" runat="server" required>
                            </div>
                            <div class="form-group">
                                <label for="txtQueryTitle">Query Title</label>
                                <input type="text" class="form-control" id="txtQueryTitle" name="txtQueryTitle" runat="server" required>
                            </div>

                            <div class="form-group">
                                <label for="txtQueryDescription">Query Description</label>
                                <textarea class="form-control" id="txtQueryDescription" name="txtQueryDescription" runat="server" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="ddlQueryType">Query Type</label>
                                <select class="form-control" id="ddlQueryType" name="ddlQueryType" runat="server" required>
                                    <option value="">Select Query Type</option>
                                    <option value="Technical">Technical</option>
                                    <option value="Academic">Academic</option>
                                    <option value="General">General</option>
                                    <option value="Finance">Finance</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4">Submit</button>
                        </form>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-md-6 text-right">
                                <asp:Label ID="lblSubmittedDate" runat="server"></asp:Label>
                            </div>
                        </div>
                        <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='TrackStatus.aspx'">Track Query Status</button>
                        <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='Dashboard.aspx'">Back to Dashboard</button>

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
            height: 350px;
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

        .text-blue-dark {
            color: #0D47A1;
        }

        .border-left-blue-light {
            border-left: 5px solid #1A237E;
        }

        .border-left-blue-dark {
            border-left: 5px solid #0D47A1;
        }

        .bg-blue-blue-light {
            background-color: #1A237E;
        }

        .bg-blue-light {
            background-color: #2196F3;
        }

        .btn-blue {
            background-color: #1A237E;
            border-color: #1A237E;
        }

        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>