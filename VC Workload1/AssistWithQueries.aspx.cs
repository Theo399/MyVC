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
    public partial class AssistWithQueries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load the queries from the database and populate the drop-down list
                LoadQueries();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Get the selected query details
            int queryId = Convert.ToInt32(ddlQueries.SelectedValue);
            string progress = ddlProgress.SelectedValue;
            string solution = txtSolution.Text;



            // Clear the form fields
            ddlQueries.SelectedIndex = 0;
            ddlProgress.SelectedIndex = 0;
            txtSolution.Text = "";

            // Reload the queries from the database and repopulate the drop-down list
            LoadQueries();
        }

        private void LoadQueries()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT ID, QueryType FROM [Query]";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        ddlQueries.DataSource = dataTable;
                        ddlQueries.DataTextField = "QueryType";
                        ddlQueries.DataValueField = "ID";
                        ddlQueries.DataBind();
                    }
                }
            }
        }

    }
}