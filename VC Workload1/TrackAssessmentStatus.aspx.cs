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
    public partial class TrackAssessmentStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
          // Retrieve the selected status from the DropDownList and update the progress
                        UpdateProgressAndLabel();
          }
                
            
        

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Update the progress based on the selected status
            UpdateProgressAndLabel();
        }

        private void UpdateProgressAndLabel()
        {
            // Retrieve the selected status from the DropDownList
            string selectedStatus = lblStatus.Text;
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
    }
}
