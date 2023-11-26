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
    public partial class LearningMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch and bind learning material data to GridView
                string learningMaterialQuery = "SELECT Title, Description, FileUrl FROM LearningMaterial";
                string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(learningMaterialQuery, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        gvLearningMaterial.DataSource = reader;
                        gvLearningMaterial.DataBind();
                    }
                }

                // Fetch and bind student schedule data to GridView
                string scheduleQuery = "SELECT Module, Date, Time, Location FROM StudentSchedule";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(scheduleQuery, connection))
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        gvSchedule.DataSource = reader;
                        gvSchedule.DataBind();
                    }
                }
            }
        }
    }
}
