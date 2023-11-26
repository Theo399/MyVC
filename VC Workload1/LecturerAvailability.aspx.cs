using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VC_Workload1
{
    public partial class LecturerAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string lecturerName = lecturerInput.Value;
            string course = courseInput.Value;

            DateTime date;
            if (!DateTime.TryParseExact(dateInput.Value, "yyyy-MM-dd", null,
                System.Globalization.DateTimeStyles.None, out date))
            {
                // handle invalid date input
                return;
            }

            TimeSpan time;
            if (!TimeSpan.TryParse(timeInput.Value, out time))
            {
                // handle invalid time input
                return;
            }

            string availability = statusSelect.Value;

            // create a connection to the database
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-JJNDO4M\\SQLEXPRESS;Initial Catalog=VcWorkload;Integrated Security=True");

            // create a SQL command to insert the values into the Availability table
            SqlCommand cmd = new SqlCommand("INSERT INTO Availability (LecturerName, Course, Date, Time, Availability) VALUES (@LecturerName, @Course, @Date, @Time, @Availability)", conn);

            // add parameters to the SQL command
            cmd.Parameters.AddWithValue("@LecturerName", lecturerName);
            cmd.Parameters.AddWithValue("@Course", course);
            cmd.Parameters.AddWithValue("@Date", date);
            cmd.Parameters.AddWithValue("@Time", time);
            cmd.Parameters.AddWithValue("@Availability", availability);

            // open the database connection and execute the SQL command
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // display success message to the user
            Response.Write("<script>alert('Lecturer availability added successfully.');</script>");
        }
    }
}

