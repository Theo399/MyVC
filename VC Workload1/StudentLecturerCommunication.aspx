<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLecturerCommunication.aspx.cs" Inherits="VC_Workload1.StudentLecturerCommunication" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-comments"></i> Student and Lecturer Communication
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Communication Form</h4>
                        <form method="post">
                            <div class="form-group">
                                <label for="UserType">Select User Type:</label>
                                <select class="form-control" id="UserType" name="UserType" required>
                                    <option value=" ">Select User Type</option>
                                    <option value="Student">Student</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="StudentNo"> Student Number</label>
                                <select class="form-control" id="StudentNo" name="StudentNo" runat="server" required>
                                    <option value=" ">Select Student Number</option>
                                     <option value="All">All</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="MessageTextArea">Message:</label>
                                <textarea class="form-control" id="MessageTextArea" rows="4" placeholder="Enter your message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4" OnClick="SendMessageButton_Click">Send Message</button>
                            <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='Dashboard.aspx'">Back to Dashboard</button>
                        </form>
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