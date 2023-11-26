<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssessmentStatus.aspx.cs" Inherits="VC_Workload1.AssessmentStatus" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-spinner fa-spin"></i>Track Assessment Status.
        </h2>
        <div class="row dashboard-container">
            <div class="col-md-6 offset-md-3">
                <div class="card shadow h-100 py-2">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4"> Assessment Status</h4>
                        
                        <div>
                            <label>Status:</label>
                            <asp:DropDownList ID="ddlStatus" runat="server" 
                                OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" AutoPostBack="true" Width="224px">
                            </asp:DropDownList>
                        </div>
                        <div>
                            <label>Group:</label>
                            <asp:DropDownList ID="ddlGroup" runat="server" Width="223px">
                            </asp:DropDownList>
                        </div>
                        <div>
                            <label>Assessment Name:</label>
                            <asp:TextBox ID="txtAssessmentName" runat="server"></asp:TextBox>
                        </div>
                        <div class="circular-progress-container mt-4">
                            <div id="progressBar"></div>
                            <div class="progress-overlay">
                                <span id="progressLabel">0%</span>
                            </div>
                        </div>
                        <br />
                        <button type="button" class="btn btn-blue-light btn-block mt-4" >Save</button>

                        <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='LecturerDashboard.aspx'">Back to Dashboard</button>
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
            width: 207px;
        }

        .circular-progress-container {
            position: relative;
            width: 150px;
            height: 150px;
            margin: 0 auto;
        }

        .circular-progress-container #progressBar {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
        }

        .circular-progress-container .progress-overlay {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }
    </style>

    <script src="https://cdn.rawgit.com/kimmobrunfeldt/progressbar.js/1.0.1/dist/progressbar.js"></script>
    <script>
        var bar;

        function updateProgress(progress) {
            var container = document.getElementById("progressBar");
            var overlay = document.getElementsByClassName("progress-overlay")[0];
            var label = document.getElementById("progressLabel");

            if (bar) {
                bar.destroy();
            }

            bar = new ProgressBar.Circle(container, {
                color: '#D3D3D3', // Default gray color
                strokeWidth: 10,
                trailWidth: 10,
                duration: 1500,
                easing: 'easeInOut',
                from: { color: '#D3D3D3', width: 10 },
                to: { color: '#1A237E', width: 10 },
                step: function (state, circle) {
                    circle.path.setAttribute('stroke', state.color);
                    circle.path.setAttribute('stroke-width', state.width);
                    var value = Math.round(circle.value() * 100);
                    if (value === 0) {
                        circle.setText('');
                    } else {
                        circle.setText(value + '%');
                    }
                }
            });

            bar.animate(progress / 100);

            label.innerHTML = progress + '%';
        }
    </script>
</asp:Content>