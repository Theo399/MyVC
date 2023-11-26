<%@ Page Title="View Marks and Feedback" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMarksAndFeedback.aspx.cs" Inherits="VC_Workload1.ViewMarksAndFeedback" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center; color: white;">
            <i class="fas fa-clipboard-check"></i> View Marks and Feedback</h2>
        <div class="container-fluid">
            <div class="row dashboard-container justify-content-center align-items-center">
                <div class="col-md-8">
                    <div class="card shadow h-100 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-blue text-uppercase mb-4">Assessment List:</h4>
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr class="bg-blue-dark text-white">
                                            <th scope="col">Student Number</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">FilePath</th>
                                            <th scope="col">Course</th>
                                            <th scope="col">Submitted Date</th>
                                            <th scope="col">Grade</th>
                                            <th scope="col">Feedback</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="MarksAndFeedbackRepeater" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("StudentNo") %></td>
                                                    <td><%# Eval("Name") %></td>
                                                    <td><%# Eval("FilePath") %></td>
                                                    <td><%# Eval("Course") %></td>
                                                    <td><%# Eval("SubmittedDate", "{0:d}") %></td>
                                                    <td><%# Eval("Grade") %></td>
                                                    <td><%# Eval("Feedback") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
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
            max-width: 100%;
            margin: 0 auto;
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