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

namespace Advising114.Admin
{
    public partial class Stundent_Course : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
            viewStudents();

        }

        protected void getMajor(int id)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select major from Student where student_id = @student_id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@student_id", id);
            con.Open();
            string major = cmd.ExecuteScalar().ToString();
            con.Close();
            // Courses();
            // MessageBox.Show(major);
        }
        protected void Courses(int studentID)
        {

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from Course", con);
            cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@StudentID", studentID);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            con.Close();

            GridView2.DataSource = dt;
            GridView2.DataBind();


        }
        protected void viewStudents()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select student_id,f_name,l_name from Student", con);
            con.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow student = GridView1.SelectedRow;
            int studentID = Convert.ToInt32(student.Cells[0].Text);
            GridView3.Visible = false;
            Courses(studentID);
        }
        protected bool check(int studentID,int courseID)
        {
            SqlConnection connection = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select count(*) from Student_Instructor_Course_Take where student_id = @student_id and course_id = @course_id", connection);
            cmd.Parameters.AddWithValue("@student_id",studentID);
            cmd.Parameters.AddWithValue("@course_id", courseID);
            connection.Open();
            int rows = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            connection.Close();
            if (rows > 0)
                return false;
          return true;
        
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow student = GridView1.SelectedRow;
            int studentID = Convert.ToInt32(student.Cells[0].Text);
            GridViewRow course = GridView2.SelectedRow;
            int courseID = Convert.ToInt32(course.Cells[0].Text);
             bool flag =check(studentID, courseID);
            if (flag)
            {
                showInstructors(courseID);
                GridView3.Visible = true;
            }
            else
                MessageBox.Show("Already Taken");
            //Proc(studentID, advisorID);
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
            GridView3.DataSource = dt;
            GridView3.DataBind();


        }
        protected string getSemCode(int id)
        {
            //SqlConnection sqlConnection = new SqlConnection(connStr);
           // SqlCommand cmd = new SqlCommand("select semester_code from Payment where student_id = @student_id", sqlConnection);
            //cmd.CommandType = CommandType.Text;
            //cmd.Parameters.AddWithValue("@student_id", id);
            //sqlConnection.Open();
            //string sem = cmd.ExecuteScalar().ToString();
            //sqlConnection.Close();
            return sem.Value.ToString();
        }
        protected void Proc(int studentID, int courseID, int instructorID, string sem)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_AdminLinkStudent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.Parameters.AddWithValue("@cours_id", courseID);
            cmd.Parameters.AddWithValue("@instructor_id", instructorID);
            cmd.Parameters.AddWithValue("@semester_code", sem);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            success.Visible = true;

        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow student = GridView1.SelectedRow;
            int studentID = Convert.ToInt32(student.Cells[0].Text);
            GridViewRow course = GridView2.SelectedRow;
            int courseID = Convert.ToInt32(course.Cells[0].Text);
            GridViewRow instructor = GridView1.SelectedRow;
            int instructorID = Convert.ToInt32(instructor.Cells[0].Text);
            string sem = getSemCode(studentID);
            Proc(studentID, courseID, instructorID, sem);

        }
    }
}