using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class RaiseQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // get the values entered by the user
                string studentNo = StudentNo.Value;
                string module = Text1.Value;
                string queryTitle = txtQueryTitle.Value;
                string queryDesc = txtQueryDescription.Value;
                string queryType = ddlQueryType.Value;
                DateTime timestamp = DateTime.Now; // current date and time

                // create a connection to the database
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True");

                // create a SQL command to insert the values into the Query table
                SqlCommand cmd = new SqlCommand("INSERT INTO Query (StudentNo, Module, QueryTitle, QueryDescription, QueryType, SubmittedDate) VALUES (@StudentNo, @Module, @QueryTitle, @QueryDescription, @QueryType, @SubmittedDate)", conn);

                // add parameters to the SQL command
                cmd.Parameters.AddWithValue("@StudentNo", studentNo);
                cmd.Parameters.AddWithValue("@Module", module);
                cmd.Parameters.AddWithValue("@QueryTitle", queryTitle);
                cmd.Parameters.AddWithValue("@QueryDescription", queryDesc);
                cmd.Parameters.AddWithValue("@QueryType", queryType);
                cmd.Parameters.AddWithValue("@SubmittedDate", timestamp);

                // open the database connection and execute the SQL command
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                lblSubmittedDate.Text = "Submitted on: " + timestamp.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }
    }
}