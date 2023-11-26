<%@ Page Title="Send Announcments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SendAnnouncments.aspx.cs" Inherits="VC_Workload1.SendAnnouncments" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-bullhorn"></i> Send Announcements
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Send Announcement</h4>
                        <form method="post">
                           <div class="form-group">
                                <label for="ddlModule">Module</label>
                                <select class="form-control" id="ddlModule" name="ddlModule" runat="server" required>
                                    <option value=" "></option>
                                    <option value="all">All</option>
                                    <option value="Module 1">Module 1</option>
                                    <option value="Module 2">Module 2</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="txtMessage">Message</label>
                                <textarea class="form-control" id="txtMessage" name="txtMessage" runat="server" rows="4" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="ddlRecipient">Recipient</label>
                                <select class="form-control" id="ddlRecipient" name="ddlRecipient" runat="server" required>
                                    <option value="all">All</option>
                                    <option value="students">Students</option>
                                    <option value="lecturer">Lecturers</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-blue-light btn-block mt-4">Send</button>
                            </div>
                        </form>                     
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
        .border-left-blue-light {
            border-left: 5px solid #1A237E;
        }
        .bg-blue-light {
            background-color: #2196F3;
        }
        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>
