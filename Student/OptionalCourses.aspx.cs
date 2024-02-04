using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;

namespace Advising114.Student
{
    public partial class OptionalCourses : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sem = getSemCode();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_ViewOptionalCourse", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
            cmd.Parameters.AddWithValue("@current_semester_code", sem);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected string getSemCode()
        {
        //    SqlConnection sqlConnection = new SqlConnection(connStr);
        //    SqlCommand cmd = new SqlCommand("select semester_code from Payment where student_id = @student_id", sqlConnection);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Parameters.AddWithValue("@student_id", Convert.ToInt32(Session["user"].ToString()));
        //    sqlConnection.Open();
        //    string sem = cmd.ExecuteScalar().ToString();
        //    sqlConnection.Close();
            return sem.Value.ToString() ;
        }


    }
}