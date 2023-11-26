<%@ Page Title="Lecturer Availability" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="StudentLecturerAvailability.aspx.cs"
    Inherits="VC_Workload1.StudentLecturerAvailability" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover;
        height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;">
    </div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center; color: white;">
            <i class="fas fa-calendar-alt"></i> Lecturer Availability.</h2>
        <div class="container">
            <div class="row dashboard-container">
                <div class="col-md-8 mx-auto">
                    <div class="card shadow h-100 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-blue text-uppercase mb-4">Lecturer Availability List:</h4>
                            <table class="table table-bordered table-responsive-md text-center">
                                <thead>
                                    <tr class="bg-blue-dark text-white">
                                        <th scope="col">Lecturer Name</th>
                                        <th scope="col">Course</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Availability</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="AvailabilityRepeater" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("LecturerName") %></td>
                                                <td><%# Eval("Course") %></td>
                                                <td><%# Eval("Date", "{0:d}") %></td>
                                                <td><%# Eval("Time", "{0:t}") %></td>
                                                <td><%# Eval("Availability") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='Dashboard.aspx'">Back to Dashboard</button>
                        </div>
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