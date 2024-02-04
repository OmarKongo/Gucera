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
    public partial class UpdateDate : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;


        protected void updateGP(object sender, EventArgs e)
        {
            using (SqlConnection cone = new SqlConnection(connStr))
            {

                SqlCommand updateProc = new SqlCommand("Procedures_AdvisorUpdateGP", cone);
                updateProc.CommandType = CommandType.StoredProcedure;
                updateProc.Parameters.AddWithValue("@expected_grad_date", expected_grad_date_new.Text);
                updateProc.Parameters.AddWithValue("@studentID", studentId1.Text);

                cone.Open();
                int rows = updateProc.ExecuteNonQuery();
                cone.Close();
                if (rows > 0)
                    MessageBox.Show("Update is complete");
                else
                    MessageBox.Show("Not Found");
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}