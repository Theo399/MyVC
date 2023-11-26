using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
   
        public partial class ViewMarksAndFeedback : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadMarksAndFeedback();
                }
            }

            private void LoadMarksAndFeedback()
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
                string query = "SELECT StudentNo, Name, FilePath, Course, SubmittedDate, Grade, Feedback FROM AssignmentMarks";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    MarksAndFeedbackRepeater.DataSource = reader;
                    MarksAndFeedbackRepeater.DataBind();
                    reader.Close();
                }
            }
        }
    }

