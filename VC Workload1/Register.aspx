<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VC_Workload1.Register" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('../Images/Student.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <main aria-labelledby="title">
        <h2 id="title" style="font-family: 'Montserrat', sans-serif; text-align: center;">
            <i class="fas fa-clipboard-check"></i> Register
        </h2>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card shadow h-100">
                    <div class="card-body">
                        <h4 class="card-title text-blue text-uppercase mb-4">Student Register</h4>
                        <div class="form-group">
                            <asp:GridView ID="gvRegister" runat="server" AutoGenerateColumns="false" CssClass="table table-striped">
                                <Columns>
                                    <asp:BoundField DataField="StudentNumber" HeaderText="Student Number" />
                                    <asp:BoundField DataField="GroupNumber" HeaderText="Group Number" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Age" HeaderText="Age" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:TemplateField HeaderText="Attendance">
                                        <ItemTemplate>
                                            <div class="btn-group" role="group">
                                                <asp:Button ID="btnPresent" runat="server" CssClass="btn btn-success" Text="Present" />
                                                <asp:Button ID="btnNotPresent" runat="server" CssClass="btn btn-danger" Text="Not Present" />
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
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
            height: auto;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .text-blue {
            color: #1A237E;
        }
    </style>
</asp:Content>
