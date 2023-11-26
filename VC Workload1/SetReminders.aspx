<%@ Page Title="Set Reminders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SetReminders.aspx.cs" Inherits="VC_Workload1.SetReminders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-clock"></i> Set Reminders.
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Set Reminders</h4>
                        <form>
                            <div class="form-group">
                                <label for="ddlModule">Module</label>
                                <select class="form-control" id="ddlModule" name="ddlModule" runat="server" required>
                                    <option value="">Select Module</option>
                                    <option value="module1">Module 1</option>
                                    <option value="module2">Module 2</option>
                                    <option value="module3">Module 3</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="txtReminderDescription">Reminder Description</label>
                                <textarea class="form-control" id="txtReminderDescription" name="txtReminderDescription" rows="4" runat="server" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="txtReminderDate">Reminder Date</label>
                                <input type="date" class="form-control" id="txtReminderDate" name="txtReminderDate" runat="server" required>
                            </div>
                            <button type="submit" class="btn btn-blue-light btn-block mt-4">Set Reminder</button>
                        </form>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='AdminDashboard.aspx'">Back to Dashboard</button>
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
        .border-left-blue-light {
            border-left: 5px solid #1A237E;
        }
        .bg-blue-blue-light {
            background-color: #1A237E;
        }
        .bg-blue-light {
            background-color: #2196F3;
        }
        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>