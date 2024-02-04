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
    public partial class chooseInstructor : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
            GridView1.DataSource = Courses();
            GridView1.DataBind();
        }



        protected DataTable Courses()
        {
            string query = "select C.* from Course C inner join Student_Instructor_Course_take t on C.course_id = t.course_id where t.student_id = @student_id";
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@student_id", Convert.ToInt32(Session["user"].ToString()));
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();

            return dt;

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
        protected void chooseInstructors(int instructorID, int courseID)
        {
            string sem = getSemCode();
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_Chooseinstructor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseID", courseID);
            cmd.Parameters.AddWithValue("@studentID", Convert.ToInt32(Session["user"].ToString()));
            cmd.Parameters.AddWithValue("@instrucorID", instructorID);
            cmd.Parameters.AddWithValue("@current_semester_code", sem);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            success.Visible = true;



        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // GridView2.DataSource = null; GridView2.DataBind();
            GridViewRow row = GridView1.SelectedRow;
            int id = Convert.ToInt32(row.Cells[0].Text);
            GridView2.SelectedIndex = -1;
            showInstructors(id);
            // MessageBox.Show(id + "");
        }
        protected void showInstructors(int courseID)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select I.instructor_id,I.name from Instructor_Course IC inner join Instructor I on I.instructor_id = IC.instructor_id  where IC.course_id = @course_id", conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@course_id", courseID);
            DataTable dt = new DataTable();
            conn.Open();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(dt);
            conn.Close();
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row1 = GridView1.SelectedRow;
            GridViewRow row2 = GridView2.SelectedRow;
            int courseId = Convert.ToInt32(row1.Cells[0].Text);
            int instructorId = Convert.ToInt32(row2.Cells[0].Text);
            chooseInstructors(instructorId, courseId);



        }
    }
}