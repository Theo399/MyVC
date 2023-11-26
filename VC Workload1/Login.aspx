<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VC_Workload1.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .login-card {
            background-color: #fff;
            margin: 0 auto;
            padding: 20px;
            width: 600px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.15);
            height: 658px;
        }

        .login-card-header {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input,
        .form-group input[type="passwordwidth: 100%;
            padding: 6px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .form-group input[type="submit  width: 100%;
            padding: 8px 12px;
            font-size: 16px;
            color: #fff;
            background-color: blue; /* Change to blue color */
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-group input[type="submit        background-color: #45a049;
        }

        .error-message {
            color: #ff0000;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="loginForm" runat="server">
        <div class="login-card">
            <div style="background-image: url('../Images/Login.jpg'); background-size: cover; height: 100%; width: 100%; position: fixed; top: 0; left: 0; z-index: -1;"></div>
            <div style="text-align: center;">
                <img src="../Images/logo.jpg" alt="Logo" style="width: 200px; height: 200px;">
            </div>
            <h2 class="login-card-header">Login</h2>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="" Visible="false" CssClass="error-message"></asp:Label>
            <br />
            <div class="form-group">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" required="true" Height="61px" Width="585px"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" required="true" Height="53px" Width="585px"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="58px" Width="591px" />
            </div>
        </div>
    </form>
</body>
</html>