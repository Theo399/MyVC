<%@ Page Title="Communicate With Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Communicate_With_Students.aspx.cs" Inherits="VC_Workload1.Communicate_With_Students" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center; color: white;">
            <i class="fas fa-comments"></i> Communicate With Students</h2>
        <div class="container">
            <div class="row dashboard-container">
                <div class="col-md-8 mx-auto">
                    <div class="card shadow h-100 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-blue-light text-uppercase mb-4">Student List:</h4>
                            <table class="table table-bordered table-responsive-md text-center">
                                <thead>
                                    <tr class="bg-blue-dark text-white">
                                        <th scope="col">Select</th>
                                        <th scope="col">Student Number</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Course</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Phone</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="StudentRepeater" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                                </td>
                                                <td><%# Eval("StudentNo") %></td>
                                                <td><%# Eval("Name") %></td>
                                                <td><%# Eval("Course") %></td>
                                                <td><%# Eval("Email") %></td>
                                                <td><%# Eval("Phone") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                            <textarea class="form-control mt-4" id="MessageTextArea" rows="4" placeholder="Enter your message"></textarea>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4" OnClick="SendMessageButton_Click"> Send Message</button>
                            <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='LecturerDashboard.aspx'">Back to Dashboard</button>
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
