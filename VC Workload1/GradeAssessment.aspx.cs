
using Amazon.Auth.AccessControlPolicy;
using SharpCompress.Common;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

       namespace VC_Workload1
    {
    public partial class GradeAssessment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the repeater with data from the AssignmentMarks table
                string connectionString = "Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True";
                string selectQuery = "SELECT StudentNo, Name, FilePath, Course, SubmittedDate, Grade, Feedback FROM AssignmentMarks";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(selectQuery, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    AvailabilityRepeater.DataSource = reader;
                    AvailabilityRepeater.DataBind();

                    reader.Close();
                }
            }
        }

        protected void SaveGradesButton_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = "Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True";

                // Insert data into AssignmentMarks from Assignments
                string insertQuery = "INSERT INTO AssignmentMarks (StudentNo, Name, FilePath, Course, SubmittedDate, Grade) " +
                                     "SELECT StudentNo, Name, FilePath, Course, SubmittedDate, 0.0 " +
                                     "FROM Assignments";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    connection.Open();
                    command.ExecuteNonQuery();
                }

                // Update grades and feedback in the AssignmentMarks table
                foreach (RepeaterItem item in AvailabilityRepeater.Items)
                {
                    TextBox gradeTextBox = (TextBox)item.FindControl("GradeTextBox");
                    string feedback = ((TextBox)item.FindControl("FeedbackTextArea")).Text;

                    string studentNo = ((Label)item.FindControl("StudentNoLabel")).Text;

                    decimal? grade = null; // Default to NULL if no grade is provided by user
                    if (!string.IsNullOrEmpty(gradeTextBox.Text))
                    {
                        grade = decimal.Parse(gradeTextBox.Text);
                    }

                    string updateQuery = "UPDATE AssignmentMarks SET Grade = @Grade, Feedback = @Feedback WHERE StudentNo = @StudentNo";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        SqlCommand command = new SqlCommand(updateQuery, connection);
                        command.Parameters.AddWithValue("@Grade", grade);
                        command.Parameters.AddWithValue("@Feedback", feedback);
                        command.Parameters.AddWithValue("@StudentNo", studentNo);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle and display any exception
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}
