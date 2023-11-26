<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssistWithQueries.aspx.cs" Inherits="VC_Workload1.AssistWithQueries" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div style="background-image: url('../Images/Admin.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
    <div class="container">
        <h2>Assist with Queries</h2>

        <div class="card shadow h-100 py-2">
            <div class="card-body">
                <h4 class="card-title text-blue text-uppercase mb-4">Assist with Queries</h4>
                <div class="form-group">
                    <label for="ddlQueries">Select Query:</label>
                    <asp:DropDownList ID="ddlQueries" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="ddlProgress">Progress:</label>
                    <asp:DropDownList ID="ddlProgress" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Received"></asp:ListItem>
                        <asp:ListItem Text="In Progress"></asp:ListItem>
                        <asp:ListItem Text="Completed"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="txtSolution">Solution:</label>
                    <asp:TextBox ID="txtSolution" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>

                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary" />

            </div>
        </div>

    </div>
</asp:Content>