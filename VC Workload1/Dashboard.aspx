<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="VC_Workload1.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;tyle="img src="..\Images\logo.jpg('Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;"><i class="fas fa-tachometer-alt"></i> Student Dashboard.</h2>
        <div class="row dashboard-container">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Assignments</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="SubmitAssignment.aspx" class="btn btn-blue-light btn-block">Submit Assignments</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Marks and Feedback</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="ViewMarksAndFeedback.aspx" class="btn btn-blue-light btn-block">View Marks and Feedback</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Feedback and Suggestions</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="FeedbackForm.aspx" class="btn btn-blue-light btn-block">Offer Feedback and Suggestions</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Queries</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="RaiseQuery.aspx" class="btn btn-blue-light btn-block">Raise a Query</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Learning Material and Schedules</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="LearningMaterial.aspx" class="btn btn-blue-light btn-block">Access Learning Material and Schedules</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-dark shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-black text-uppercase mb-1">Lecture Availability</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="StudentLecturerAvailability.aspx" class="btn btn-blue-light btn-block">Check Lecturer Availability</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Query Status</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="TrackStatus.aspx" class="btn btn-blue-light btn-block">Track Query Status</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Track Assessment Status</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="TrackAssessmentStatus.aspx" class="btn btn-blue-light btn-block">Track Assessment Status </a>
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