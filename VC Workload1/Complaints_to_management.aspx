<%@ Page Title="Complaints to Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Complaints_to_management.aspx.cs" Inherits="VC_Workload1.Complaints_to_management" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-exclamation-triangle"></i> Complaints to Management
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Submit Complaint</h4>
                        <form method="post">
                            <div class="form-group">
                                <label for="LecturerEmail">Lecturer Email</label>
                                <input type="text" class="form-control" id="LecturerName" name="LecturerName" runat="server" required>
                            </div>
<div class="form-group">
    <label for="ComplaintType">Complaint Type</label>
    <select class="form-control" id="ComplaintType" name="ComplaintType" required>
        <option value="">Select Complaint Type</option>
        <option value="Behavior">Behavior</option>
        <option value="Workload">Workload</option>
        <option value="Communication">Communication</option>
        <option value="General">General</option>

        <!-- Add more complaint types as needed -->
    </select>
</div>
                            <div class="form-group">
                                <label for="ComplaintDescription">Complaint Description</label>
                                <textarea class="form-control" id="ComplaintDescription" name="ComplaintDescription" runat="server" rows="4" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4">Submit Complaint</button>
                        </form>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblSubmittedDate" runat="server"></asp:Label>
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