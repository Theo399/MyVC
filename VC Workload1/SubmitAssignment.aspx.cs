using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
   public partial class SubmitAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the Course dropdown list from the database
                BindCourses();
            }
            else
            {
                // Handle the form submission and insert the submitted data into the database
                string constr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Assignments (StudentNo, Name, Course, SubmittedDate, FilePath) VALUES (@StudentNo, @Name, @Course, @SubmittedDate, @FilePath)"))
                    {
                        cmd.Parameters.AddWithValue("@StudentNo", StudentNo.Value);
                        cmd.Parameters.AddWithValue("@Name", txtAssignmentName.Value);
                        cmd.Parameters.AddWithValue("@Course", ddlCourse.Value);
                        cmd.Parameters.AddWithValue("@SubmittedDate", DateTime.Now);


                        // File handling code
                        string fileName = Path.GetFileName(fileAssignment.PostedFile.FileName);
                        string fileExtension = Path.GetExtension(fileAssignment.PostedFile.FileName);
                        string filePath = Server.MapPath("~/Assignments/") + fileName;
                        // Create the directory if it doesn't exist
                        if (!Directory.Exists(Server.MapPath("~/Assignments/")))
                        {
                            Directory.CreateDirectory(Server.MapPath("~/Assignments/"));
                        }
                        fileAssignment.PostedFile.SaveAs(filePath);
                        cmd.Parameters.AddWithValue("@FilePath", filePath);
                        // End of file handling code
                        
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                
                lblMessage.Text = "Assignment submitted successfully!";
                lblSubmittedDate.Text = "Submitted on: " + DateTime.Now.ToString();
            } 
            // Display an error message if it's after 9 PM
            //lblMessage.Text = "Sorry, the submission deadline has passed.";
            //lblSubmittedDate.Text = "";
        }

        private void BindCourses()
        {
            // Fetch data from the database
            string constr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT id, name_code FROM Course", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        // Create a DataTable to hold the retrieved data
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Populate the Course dropdown list with the retrieved data
                        ddlCourse.DataSource = dt;
                        ddlCourse.DataTextField = "name_code";
                        ddlCourse.DataValueField = "id";
                        ddlCourse.DataBind();

                        // Add a default "Select Course" option
                        ddlCourse.Items.Insert(0, new ListItem("Select Course", ""));
                    }
                }
            }
        }
    }
}