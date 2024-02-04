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
using System.Security.Policy;

namespace Advising114.Advisor
{
    public partial class InsertGP : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;


        protected void insertGP(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string code = SemesterCode.Text;


                SqlCommand createGP = new SqlCommand("Procedures_AdvisorCreateGP", conn);
                createGP.CommandType = CommandType.StoredProcedure;
                createGP.Parameters.AddWithValue("@Semester_code", code);
                createGP.Parameters.AddWithValue("@expected_graduation_date", expected_grad_date.Text);
                createGP.Parameters.AddWithValue("@sem_credit_hours", semester_credit_hours.Text);
                createGP.Parameters.AddWithValue("@advisor_id", Convert.ToInt32(Session["user"].ToString()));
                createGP.Parameters.AddWithValue("@student_id", studentid.Text);

                conn.Open();
                int rows = createGP.ExecuteNonQuery();
                conn.Close();

                if (rows > 0)
                    MessageBox.Show("Inserted Successfully");
                else
                    MessageBox.Show("Not Found");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Register();

        }

        //public override void VerifyRenderingInServerForm(Control control)
        //{

        //}
    }
}