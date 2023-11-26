<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyAssessmentMarks.aspx.cs" MasterPageFile="~/Site.Master" Inherits="VC_Workload1.VerifyAssessmentMarks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-tachometer-alt"></i> Verify and Balance Marks
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Verify Assessment Marks</h4>
                        <div>
                            <div class="form-group">
                                <label for="StudentNo">Student Number</label>
                                <select class="form-control" id="StudentNo" name="StudentNo" required>
                                    <option value="1">Student 1</option>
                                    <option value="2">Student 2</option>
                                    <option value="3">Student 3</option>
                                    <!-- Add more student options here -->
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="ClassCode">Class Code</label>
                                <select class="form-control" id="ClassCode" name="ClassCode" required>
                                    <option value="CS101">CS101</option>
                                    <option value="CS102">CS102</option>
                                    <option value="CS103">CS103</option>
                                    <!-- Add more class options here -->
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="CourseName">Course Name</label>
                                <select class="form-control" id="CourseName" name="CourseName" required>
                                    <option value="Mathematics">Mathematics</option>
                                    <option value="Science">Science</option>
                                    <option value="English">English</option>
                                    <!-- Add more course options here -->
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Semester">Semester</label>
                                <select class="form-control" id="Semester" name="Semester" required>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="AssignmentScores">Assignment Scores</label>
                                <select class="form-control" id="AssignmentScores" name="AssignmentScores" required>
                                    <option value="90">90</option>
                                    <option value="85">85</option>
                                    <option value="80">80</option>
                                    <!-- Add more assignment score options here -->
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Attendancepercentage">Attendance percentage</label>
                                <select class="form-control" id="Attendancepercentage" name="Attendancepercentage" required>
                                    <option value="100%">100%</option>
                                    <option value="95%">95%</option>
                                    <option value="90%">90%</option>
                                    <!-- Add more attendance percentage options here -->
                                </select>
                            </div>

                            <input type="button" class="btn btn-blue-light btn-block mt-4" value="Submit" onclick="submitForm()" />
                        </div>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblSubmittedDate" runat="server"></asp:Label>
                        <input type="button" class="btn btn-blue-light btn-block mt-4" value="Back to Dashboard" onclick="window.location.href='AdminDashboard.aspx'" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>