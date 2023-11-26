<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="VC_Workload1.FeedbackForm" MasterPageFile="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="text-align: center; margin-top: 30px;">
            Student Survey
        </h2>
        <div class="container">
            <form method="post">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">1. How engaged are you in your classes?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1a" name="q1" value="1" /><label class="full" for="star1a" title="Not engaged - 1 star"></label>
                                    <input type="radio" id="star2a" name="q1" value="2" /><label class="full" for="star2a" title="Somewhat not engaged - 2 stars"></label>
                                    <input type="radio" id="star3a" name="q1" value="3" /><label class="full" for="star3a" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4a" name="q1" value="4" /><label class="full" for="star4a" title="Engaged - 4 stars"></label>
                                    <input type="radio" id="star5a" name="q1" value="5" /><label class="full" for="star5a" title="Very engaged - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>                
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">2. How helpful are your teachers in answering your questions?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1b" name="q2" value="1" /><label class="full" for="star1b" title="Not helpful - 1 star"></label>
                                    <input type="radio" id="star2b" name="q2" value="2" /><label class="full" for="star2b" title="Somewhat not helpful - 2 stars"></label>
                                    <input type="radio" id="star3b" name="q2" value="3" /><label class="full" for="star3b" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4b" name="q2" value="4" /><label class="full" for="star4b" title="Helpful - 4 stars"></label>
                                    <input type="radio" id="star5b" name="q2" value="5" /><label class="full" for="star5b" title="Very helpful - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">3. How well do your Lecturers explain the material?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1c" name="q3" value="1" /><label class="full" for="star1c" title="Poorly explained - 1 star"></label>
                                    <input type="radio" id="star2c" name="q3" value="2" /><label class="full" for="star2c" title="Somewhat poorly explained - 2 stars"></label>
                                    <input type="radio" id="star3c" name="q3" value="3" /><label class="full" for="star3c" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4c" name="q3" value="4" /><label class="full" for="star4c" title="Well explained - 4 stars"></label>
                                    <input type="radio" id="star5c" name="q3" value="5" /><label class="full" for="star5c" title="Very well explained - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">4. How safe and inclusive is your school environment?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1d" name="q4" value="1" /><label class="full" for="star1d" title="Not safe or inclusive - 1 star"></label>
                                    <input type="radio" id="star2d" name="q4" value="2" /><label class="full" for="star2d" title="Somewhat not safe or inclusive - 2 stars"></label>
                                    <input type="radio" id="star3d" name="q4" value="3" /><label class="full" for="star3d" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4d" name="q4" value="4" /><label class="full" for="star4d" title="Safe and inclusive - 4 stars"></label>
                                    <input type="radio" id="star5d" name="q4" value="5" /><label class="full" for="star5d" title="Very safe and inclusive - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">5. How well does your school prepare you for future careers?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1e" name="q5" value="1" /><label class="full" for="star1e" title="Poorly prepared - 1 star"></label>
                                    <input type="radio" id="star2e" name="q5" value="2" /><label class="full" for="star2e" title="Somewhat poorly prepared - 2 stars"></label>
                                    <input type="radio" id="star3e" name="q5" value="3" /><label class="full" for="star3e" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4e" name="q5" value="4" /><label class="full" for="star4e" title="Well prepared - 4 stars"></label>
                                    <input type="radio" id="star5e" name="q5" value="5" /><label class="full" for="star5e" title="Very well prepared - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">6. How well-equipped are your school's facilities (classrooms, laboratories, etc)?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1f" name="q6" value="1" /><label class="full" for="star1f" title="Poorly equipped - 1 star"></label>
                                    <input type="radio" id="star2f" name="q6" value="2" /><label class="full" for="star2f" title="Somewhat poorly equipped - 2 stars"></label>
                                    <input type="radio" id="star3f" name="q6" value="3" /><label class="full" for="star3f" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4f" name="q6" value="4" /><label class="full" for="star4f" title="Well equipped - 4 stars"></label>
                                    <input type="radio" id="star5f" name="q6" value="5" /><label class="full" for="star5f" title="Very well equipped - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">7. How relevant and beneficial are your school's extracurricular activities?</h3>
                            </div>
                            <div class="panel-body">
                                <fieldset class="rating">
                                    <input type="radio" id="star1g" name="q7" value="1" /><label class="full" for="star1g" title="Not relevant or beneficial - 1 star"></label>
                                    <input type="radio" id="star2g" name="q7" value="2" /><label class="full" for="star2g" title="Somewhat not relevant or beneficial - 2 stars"></label>
                                    <input type="radio" id="star3g" name="q7" value="3" /><label class="full" for="star3g" title="Neutral - 3 stars"></label>
                                    <input type="radio" id="star4g" name="q7" value="4" /><label class="full" for="star4g" title="Relevant and beneficial - 4 stars"></label>
                                    <input type="radio" id="star5g" name="q7" value="5" /><label class="full" for="star5g" title="Very relevant and beneficial - 5 stars"></label>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtFeedback">Additional Comments or Suggestions:</label>
                    <textarea class="form-control" rows="5" id="txtFeedback" name="txtFeedback"></textarea>
                </div>
                <button type="submit" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='ThankYou.aspx'">Submit</button>
                <button type="button" class="btn btn-blue-light btn-block mt-4" onclick="window.location.href='Dashboard.aspx'">Back to Dashboard</button>

            </form>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </main>

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
        }
        main {
            background-color: white;
            padding: 40px;
            margin-top: 80px;
        }
        h2 {
            text-align: center;
            font-weight: 300;
        }
        .panel-heading {
            font-weight: bold;
            font-size: 20px;
        }
        .panel-body {
            display: flex;
            justify-content: center;
        }
        .rating {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .rating > input {
            display: none;
        }
        .rating > label:before {
            margin: 5px;
            font-size: 30px;
            font-family: FontAwesome;
            display: inline-block;
            content: "\f005";
        }
        .rating > .half:before {
            content: "\f089";
            position: absolute;
        }
        .rating > label {
            color: #ddd;
            float: right;
        }
        .rating > input:checked ~ label,
        .rating:not(:checked) > label:hover,
        .rating:not(:checked) > label:hover ~ label {
            color: #FFD700;
        }
        .rating > input:checked + label:hover,
        .rating > input:checked ~ label:hover,
        .rating > label:hover ~ input:checked ~ label,
        .rating > input:checked ~ label:hover ~ label {
            color: #FFED85;
        }  
        .btn-blue-light {
            background-color: #2196F3;
            border-color: #2196F3;
        }
    </style>
</asp:Content>