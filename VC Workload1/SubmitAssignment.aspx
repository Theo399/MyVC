<%@ Page Title="Submit Assignment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubmitAssignment.aspx.cs" Inherits="VC_Workload1.SubmitAssignment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;tyle="img src="..\Images\logo.jpg('Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-tachometer-alt"></i> Submit Assignment.
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Submit Assignment</h4>
                        <form method="post" enctype="multipart/form-data">
                         <div class="form-group">
                             <label for="StudentNo"> Student Number</label> 
                             <input type="text" class="form-control" id="StudentNo" name="StudentNo" runat="server" required>
                         </div>
                            <div class="form-group">
                                <label for="txtAssignmentName">Assignment Name</label>
<input type="text" class="form-control" id="txtAssignmentName" name="txtAssignmentName" runat="server" required>
                            </div>

                            <div class="form-group">
                                <label for="fileAssignment">Assignment File</label>&nbsp;
<input type="file" class="form-control-file" id="fileAssignment" name="fileAssignment" runat="server" required></div>
                            <div class="form-group">
                                <label for="ddlCourse">Course</label>
                                <select class="form-control" id="ddlCourse" name="ddlCourse" runat="server" required>
                                    <option value="">Select Course</option>
                                    <option value="course1">Course 1</option>
                                    <option value="course2">Course 2</option>
                                    <option value="course3">Course 3</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4" >Submit</button>
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