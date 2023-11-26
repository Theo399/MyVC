<%@ Page Title="Grade Assessment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GradeAssessment.aspx.cs" Inherits="VC_Workload1.GradeAssessment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center; color: white;">
            <i class="fas fa-clipboard-check"></i> Grade Assessment</h2>
        <div class="container">
            <div class="row dashboard-container">
                <div class="col-md-8 mx-auto">
                    <div class="card shadow h-100 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-blue text-uppercase mb-4">Assessment List:</h4>
            <table class="table table-bordered table-responsive-md text-center">
    <thead>
        <tr class="bg-blue-dark text-white">
            <th scope="col">Student Number</th>
            <th scope="col">Name</th>
            <th scope="col">Course</th>
            <th scope="col">Submitted Date</th>
            <th scope="col">Preview</th>
            <th scope="col">Download</th>
            <th scope="col">Grade</th>
            <th scope="col">Feedback</th> <!-- New column for feedback input -->
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="AvailabilityRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("StudentNo") %></td>
                    <td><%# Eval("Name") %></td>
                    <td><%# Eval("Course") %></td>
                    <td><%# Eval("SubmittedDate", "{0:d}") %></td>
                    <td><button class="btn btn-info btn-sm" onclick="displayPreview('<%# Eval("FilePath") %>');">Preview</button></td>
                    <td><button class="btn btn-info btn-sm" onclick="downloadFile('<%# Eval("FilePath") %>');">Download</button></td>
                    <td><asp:TextBox ID="GradeTextBox" runat="server" CssClass="form-control" Width="100px"></asp:TextBox></td>
                    <td><textarea class="form-control" id="FeedbackTextArea" rows="4" placeholder="Enter feedback"></textarea></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
<iframe id="previewFrame" style="display:none;"></iframe>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4" OnClick="SaveGradesButton_Click"> Save Grades</button>
                            <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='LecturerDashboard.aspx'">Back to Dashboard</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script type="text/javascript">
        function displayPreview(filePath) {
            var previewFrame = document.getElementById("previewFrame");
            previewFrame.src = filePath;
            previewFrame.style.display = "block";
        }

        function downloadFile(filePath) {
            window.open(filePath);
        }
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

