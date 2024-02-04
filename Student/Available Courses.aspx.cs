using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising114.Student
{
    public partial class Available_Courses : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            string sem = getSemCode();
            SqlConnection con2 = new SqlConnection(connStr);
            SqlCommand cmd2 = new SqlCommand("select * from FN_SemsterAvailableCourses(@semestercode)", con2);
            cmd2.CommandType = CommandType.Text;
            DataTable dataTable = new DataTable();
            cmd2.Parameters.AddWithValue("@semestercode", sem);
            con2.Open();

            SqlDataAdapter ds = new SqlDataAdapter(cmd2);

            ds.Fill(dataTable);


            con2.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
        protected string getSemCode()
        {
            SqlConnection sqlConnection = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select semester_code from Payment where student_id = @student_id", sqlConnection);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@student_id", Convert.ToInt32(Session["user"].ToString()));
            sqlConnection.Open();
            string sem = cmd.ExecuteScalar().ToString();
            sqlConnection.Close();
            return sem;
        }
    }
}