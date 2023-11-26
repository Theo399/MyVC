<%@ Page Title="Workload Assessment Schedule" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Workload_Assessment_Schedule.aspx.cs" Inherits="VC_Workload1.View_Workload_Assessment_Schedule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center; color: white;">
            <i class="fas fa-calendar-alt"></i> Workload Assessment Schedule</h2>
        <div class="container">
            <div class="row dashboard-container">
                <div class="col-md-8 mx-auto">
                    <div class="card shadow h-100 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-blue text-uppercase mb-4">Assessment Schedule:</h4>
            <table class="table table-bordered table-responsive-md text-center">
    <thead>
        <tr class="bg-blue-dark text-white">
            <th scope="col">Course</th>
            <th scope="col">Module</th>
            <th scope="col">Week</th>
            <th scope="col">Start Time</th>
            <th scope="col">Duration</th>
            <th scope="col">Room</th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="AssessmentScheduleRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Course") %></td>
                    <td><%# Eval("Module") %></td>
                    <td><%# Eval("Week") %></td>
                    <td><%# Eval("StartTime") %></td>
                    <td><%# Eval("Duration") %></td>
                    <td><%# Eval("Room") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script type="text/javascript">
    </script>
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
            max-width: 800px;
            margin: 60px auto 0;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .text-blue-light {
            color: #2196F3;
        }

        .bg-blue-dark {
            background-color: #0D47A1;
        }

        .table td, .table th{
            vertical-align: middle;
        }

        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>