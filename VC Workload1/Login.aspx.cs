using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Assuming you have a connection string named "YourConnectionString" in your web.config file.
            string constr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            // Query the database to check if the username and password are valid
            string query = "SELECT Role FROM users WHERE username = @username AND password = @password;";

            using (SqlConnection connection = new SqlConnection(constr))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@password", password);

                    connection.Open();
                    string role = (string)command.ExecuteScalar();
                    connection.Close();

                    if (role == "student")
                    {
                        // Successful login as a student, redirect to student page
                        Response.Redirect("Dashboard.aspx");
                    }
                    else if (role == "admin")
                    {
                        // Successful login as an admin, redirect to admin page
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else if (role == "lecturer")
                    {
                        // Successful login as a lecturer, redirect to lecturer page
                        Response.Redirect("LecturerDashboard.aspx");
                    }
                    else
                    {
                        // Invalid credentials, display error message
                        lblMessage.Text = "Invalid username or password.";
                        lblMessage.Visible = true;
                    }
                }
            }
        }
    }
}