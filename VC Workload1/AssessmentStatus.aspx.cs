using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class AssessmentStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the DropDownList for status
                ddlStatus.Items.Add(new ListItem("", ""));
                ddlStatus.Items.Add(new ListItem("Received", "Received"));
                ddlStatus.Items.Add(new ListItem("In Progress", "In Progress"));
                ddlStatus.Items.Add(new ListItem("Complete", "Complete"));

                // Populate the DropDownList for group
                ddlGroup.Items.Add(new ListItem("", ""));
                ddlGroup.Items.Add(new ListItem("Group 1", "1"));
                ddlGroup.Items.Add(new ListItem("Group 2", "2"));
                ddlGroup.Items.Add(new ListItem("Group 3", "3"));

                // Retrieve the selected status from the DropDownList and update the progress
                UpdateProgressAndLabel();
            }
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Update the progress based on the selected status
            UpdateProgressAndLabel();
        }

        private void UpdateProgressAndLabel()
        {
            // Retrieve the selected status from the DropDownList
            string selectedStatus = ddlStatus.SelectedValue;
            int progress = 0;

            if (selectedStatus == "Received")
            {
                progress = 0;
            }
            else if (selectedStatus == "Complete")
            {
                progress = 100;
            }
            else if (selectedStatus == "In Progress")
            {
                progress = 50;
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "UpdateProgress", $"updateProgress({progress})", true);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Retrieve the selected values from the DropDownLists and the TextBox for assessment name
            string selectedStatus = ddlStatus.SelectedValue;
            string selectedGroup = ddlGroup.SelectedValue;
            string assessmentName = txtAssessmentName.Text;

            // Insert the data into the database
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;
            string query = "INSERT INTO AssessmentStatus (GroupName, AssessmentName, Status) VALUES (@GroupName, @AssessmentName, @Status)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@GroupName", selectedGroup);
                    command.Parameters.AddWithValue("@AssessmentName", assessmentName);
                    command.Parameters.AddWithValue("@Status", selectedStatus);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}