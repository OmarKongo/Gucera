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
    public partial class DeleteCourse : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deleteC(object sender, EventArgs e)
        {

            SqlConnection conec = new SqlConnection(connStr);


            SqlCommand deleteProc = new SqlCommand("Procedures_AdvisorDeleteFromGP", conec);
            deleteProc.CommandType = CommandType.StoredProcedure;
            deleteProc.Parameters.AddWithValue("@studentID", studentId2.Text);
            deleteProc.Parameters.AddWithValue("@sem_code", code2.Text);
            deleteProc.Parameters.AddWithValue("@courseID", courseId2.Text);

            conec.Open();
            int rows = deleteProc.ExecuteNonQuery();
            conec.Close();

            if (rows > 0)
                MessageBox.Show("Deleted Successfully");
            else
                MessageBox.Show("Not Found");
        }
    }
}