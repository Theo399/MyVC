using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class FeedbackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // get the values entered by the user
                int q1 = int.Parse(Request.Form["q1"]);
                int q2 = int.Parse(Request.Form["q2"]);
                int q3 = int.Parse(Request.Form["q3"]);
                int q4 = int.Parse(Request.Form["q4"]);
                int q5 = int.Parse(Request.Form["q5"]);
                int q6 = int.Parse(Request.Form["q6"]);
                int q7 = int.Parse(Request.Form["q7"]);

              
                //string comments = txtFeedback.Value;
                DateTime timestamp = DateTime.Now;
                string feedback = Request.Form["txtFeedback"];

                // create a connection to the database
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True");

                // create a SQL command to insert the values into the Feedback table
                SqlCommand cmd = new SqlCommand("INSERT INTO Feedback (Q1, Q2, Q3, Q4, Q5, Q6, Q7, AdditionalComments, SubmittedDate) VALUES (@Q1, @Q2, @Q3, @Q4, @Q5, @Q6,@Q7, @AdditionalComments, @SubmittedDate)", conn);

                // add parameters to the SQL command
                cmd.Parameters.AddWithValue("@Q1", q1);
                cmd.Parameters.AddWithValue("@Q2", q2);
                cmd.Parameters.AddWithValue("@Q3", q3);
                cmd.Parameters.AddWithValue("@Q4", q4);
                cmd.Parameters.AddWithValue("@Q5", q5);
                cmd.Parameters.AddWithValue("@Q6", q6);
                cmd.Parameters.AddWithValue("@Q7", q7);
                cmd.Parameters.AddWithValue("AdditionalComments",feedback);
                
                //cmd.Parameters.AddWithValue("@AdditionalComments", comments);
                cmd.Parameters.AddWithValue("@SubmittedDate", timestamp);

                // open the database connection and execute the SQL command
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                lblMessage.Text = "Thank you for your feedback!";
            }
        }
    }
}