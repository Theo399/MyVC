<%@ Page Title="Lecturer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LecturerDashboard.aspx.cs" Inherits="VC_Workload1.LecturerDashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;"><i class="fas fa-tachometer-alt"></i> Lecturer Dashboard.</h2>
        <div class="row dashboard-container">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Grade Assessments</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="GradeAssessment" class="btn btn-blue-light btn-block">Grade Assessments</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Workload Allocation and Assessment Schedule</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="View_Workload_Assessment_Schedule.aspx"class="btn btn-blue-light btn-block">View Workload and Assessment Schedule</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Update Assessment Status </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="AssessmentStatus.aspx" class="btn btn-blue-light btn-block">Update Assessment Status and Provide Feedback</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Communicate with Students</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="Communicate_With_Students.aspx" class="btn btn-blue-light btn-block">Communicate with Students</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue text-uppercase mb-1">Submit Complaints to Management</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="Complaints_to_management.aspx" class="btn btn-blue-light btn-block">Submit Complaints to Management</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Take Register</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="Register" class="btn btn-blue-light btn-block">Take Register</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-blue-light shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-blue-light text-uppercase mb-1">Availability</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-blue-light">
                        <a href="LecturerAvailability.aspx" class="btn btn-blue-light btn-block">Availability</a>
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