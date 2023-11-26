<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="VC_Workload1.AdminDashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;"><i class="fas fa-tachometer-alt"></i> Admin Dashboard.</h2>
        <div class="row dashboard-container">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Announcements</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="SendAnnouncments.aspx" class="btn btn-blue-light btn-block">Send Announcements</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Lecturer Workload and Assessment Progress</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="#" class="btn btn-blue-light btn-block">Monitor Lecturer Workload and Assessment Progress</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Assessment Schedules and Timetabling</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="AssessmentScheduling.aspx" class="btn btn-blue-light btn-block">Manage Assessment Schedules and Timetabling</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Assessment Reports for Internal Use</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="AssessmentReports.aspx" class="btn btn-blue-light btn-block">Generate Assessment Reports for Internal Use</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Communicate with Lecturers and Students</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="StudentLecturerCommunication.aspx" class="btn btn-blue-light btn-block">Communicate with Lecturers and Students</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Marks Balance and Verification</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="VerifyAssessmentMarks.aspx" class="btn btn-blue-light btn-block">Balance and Verify Marks for Assessments</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Assist Students with Queries</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="AssistWithQueries" class="btn btn-blue-light btn-block">Assist Students with Queries and Issues</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Assessment and Deadline Reminders</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="SetReminders.aspx" class="btn btn-blue-light btn-block">Set Reminders for Upcoming Assessments and Deadlines</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <style>
          @keyframes slideIn {
        0% {
            transform: translateY(-100%);
        }
        100% {
            transform: translateY(0);
        }
    }

    h2 {
        animation: slideIn 1.5s ease-out;
    }
        body {
            font-family: 'Montserrat', sans-serif;
        }
        .card {
            transition: transform .2s;
               height: 600px;
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
        .border-left-blue-light {
            border-left: 5px solid #2196F3;
            top: 0px;
            left: 0px;
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