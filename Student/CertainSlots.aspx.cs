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
    public partial class CertainSlots : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // finalInst.Visible = false;
            //fillCourses();
            GridView1.DataSource = Courses();
            GridView1.DataBind();
        }

        protected DataTable Courses()
        {
            // finalDrop.Items.Add("Course");
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from Course", con);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            con.Close();


            return dt;

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
            GridViewRow row = GridView2.SelectedRow;
            int instructorId = Convert.ToInt32(row.Cells[0].Text);
            //GridView1.SelectedIndex = -1;
            showSlots(instructorId, Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text));


        }
        protected void showSlots(int InstructorID, int CourseID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from FN_StudentViewSlot(@CourseID,@InstructorID)", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@CourseID", CourseID);
            cmd.Parameters.AddWithValue("@InstructorID", InstructorID);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            con.Close();
            GridView5.DataSource = dt;
            GridView5.DataBind();

        }
    }
}