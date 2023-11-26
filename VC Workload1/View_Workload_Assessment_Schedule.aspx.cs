using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace VC_Workload1
{
    public partial class View_Workload_Assessment_Schedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT Course, Module, Week, StartTime, Duration, Room FROM AssessmentSchedule";
                    SqlCommand command = new SqlCommand(query, connection);

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    AssessmentScheduleRepeater.DataSource = reader;
                    AssessmentScheduleRepeater.DataBind();
                    reader.Close();
                }
            }
        }
    }
}