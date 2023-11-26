using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class StudentLecturerAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // create a connection to the database
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True");

            // create a SQL command to select availability data from the Availability table
            SqlCommand cmd = new SqlCommand("SELECT * FROM Availability", conn);

            // create a data adapter to fill a DataTable with the results of the SQL query
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            System.Data.DataTable table = new System.Data.DataTable();
            adapter.Fill(table);

            // bind the DataTable to the Repeater
            AvailabilityRepeater.DataSource = table;
            AvailabilityRepeater.DataBind();
        }
    }
}
        
    
