using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Advising114.Advisor
{
    public partial class InsertCourse : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertC(object sender, EventArgs e)
        {
            try {
                using (SqlConnection connection = new SqlConnection(connStr))
                {

                    SqlCommand addC = new SqlCommand("Procedures_AdvisorAddCourseGP", connection);
                    addC.CommandType = CommandType.StoredProcedure;
                    addC.Parameters.AddWithValue("@student_id", stId.Text);
                    addC.Parameters.AddWithValue("@Semester_code", SemCode.Text);
                    addC.Parameters.AddWithValue("@course_name", courseName.Text);

                    connection.Open();
                    addC.ExecuteNonQuery();
                    connection.Close();

                    MessageBox.Show("Course is Added");


                }
            }
            catch(Exception ex) 
            {
                MessageBox.Show("Try Again");
            }
            }
    }
}