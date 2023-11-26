using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRegister();
            }
        }

        private void BindRegister()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Students";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    DataTable dtRegister = new DataTable();
                    dataAdapter.Fill(dtRegister);
                    gvRegister.DataSource = dtRegister;
                    gvRegister.DataBind();
                }
            }
        }

        protected void btnPresent_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            int index = row.RowIndex;
            string studentNumber = gvRegister.DataKeys[index].Values["StudentNumber"].ToString();
            UpdateAttendance(studentNumber, true);
        }

        protected void btnNotPresent_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            int index = row.RowIndex;
            string studentNumber = gvRegister.DataKeys[index].Values["StudentNumber"].ToString();
            UpdateAttendance(studentNumber, false);
        }

        private void UpdateAttendance(string studentNumber, bool isPresent)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE Students SET IsPresent = @IsPresent WHERE StudentNumber = @StudentNumber";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@IsPresent", isPresent);
                    command.Parameters.AddWithValue("@StudentNumber", studentNumber);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}