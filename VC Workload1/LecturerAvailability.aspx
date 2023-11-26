<%@ Page Title="Lecturer Availability" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LecturerAvailability.aspx.cs" Inherits="VC_Workload1.LecturerAvailability" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;tyle="img src="..\Images\logo.jpg('Lecturer.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;color: black"><i class="fas fa-calendar-alt"></i> Lecturer Availability.</h2>
        <div class="card shadow mx-auto mb-5">
            <div class="card-header text-blue-light">
                <h6 class="m-0 font-weight-bold text-blue-light">Select your availability:</h6>
            </div>
            <div class="card-body">
               
                <form>
                    <div class="form-group">
                        <label for="lecturerInput">Lecturer Name:</label>
                        <input type="text" class="form-control" id="lecturerInput" name="lecturer" runat="server"  required>
                    </div>
                    <div class="form-group">
                        <label for="courseInput">Course:</label>
                        <input type="text" class="form-control" id="courseInput" name="course" runat="server"  required>
                    </div>
                    <div class="form-group">
                        <label for="dateInput">Select a date:</label>
                        <input type="date" class="form-control" id="dateInput" name="date" runat="server"  required>
                    </div>
                    <div class="form-group">
                        <label for="timeInput">Select a time:</label>
                        <input type="time" class="form-control" id="timeInput" name="time" runat="server"  required>
                    </div>
                    <div class="form-group">
                        <label for="statusSelect">Select your availability:</label>
                        <select class="form-control" id="statusSelect" runat="server">
                            <option value="available">Available</option>
                            <option value="absent">Absent</option>
                            <option value="notavailable">Not Available</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-blue-light btn-block mt-4">Submit</button>
                    <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='LecturerDashboard.aspx'">Back to Dashboard</button>
                </form>

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
            margin: auto;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .text-blue-light {
            color: #2196F3;
        }
        .bg-blue-light {
            background-color: #2196F3;
        }
    </style>  
</asp:Content>