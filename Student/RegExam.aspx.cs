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
    public partial class RegExam : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            success.Visible = false;
            alert.Visible = false;
            finalCourses.Visible = false;
            // finalCourses.Items.Clear();

            // fillCourses();
        }

        protected void RegButton_Click(object sender, EventArgs e)
        {

            if (Valid())
            {
                int courseID = Convert.ToInt32(finalCourses.SelectedValue.ToString());
                string sem = getSemCode();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand cmd;
                if (Type.SelectedValue.ToString() == "First")
                {
                    // MessageBox.Show(Type.SelectedValue.ToString()+courseID);

                    cmd = new SqlCommand("Procedures_StudentRegisterFirstMakeup", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
                    cmd.Parameters.AddWithValue("@courseID", courseID);
                    cmd.Parameters.AddWithValue("@studentCurr_sem", sem);
                    conn.Open();
                    int rec = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rec > 0)
                        success.Visible = true;
                    else
                        alert.Visible = true;
                    //recoreded(courseID, sem, "first_makeup");
                }
                else
                {
                    cmd = new SqlCommand("Procedures_StudentRegisterSecondMakeup", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
                    cmd.Parameters.AddWithValue("@courseID", courseID);
                    cmd.Parameters.AddWithValue("@studentCurr_sem", sem);
                    conn.Open();
                   int rows = cmd.ExecuteNonQuery();
                    conn.Close();
                    if (rows > 0)
                        success.Visible = true;
                    else
                        alert.Visible = true;
                    //recoreded(courseID, sem, "Second_makeup");
                }
            }
            else
                alert.Visible = true;
            //  MessageBox.Show("" + finalCourses.SelectedValue.ToString());
        }
        protected void recoreded(int courseID, string sem, string type)
        {
            if (sem == "First")
                sem = "Normal";
            string query = "select Count(*) from Student_Instructor_Course_take where course_id = @course_id and student_id = @student_id and semester_code = @semester_code and exam_type = @exam_type";
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@course_id", courseID);
            cmd.Parameters.AddWithValue("@student_id", Convert.ToInt32(Session["user"].ToString()));
            cmd.Parameters.AddWithValue("@semester_code", sem);
            cmd.Parameters.AddWithValue("@exam_type", type);
            conn.Open();
            int rec = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (rec > 0)
                success.Visible = true;
            else
                alert.Visible = true;

        }

        protected bool Valid()
        {
            if (Type.SelectedValue.ToString() == "First" || Type.SelectedValue.ToString() == "Second")
                return true;
            return false;
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
        protected void fillCourses()
        {

            finalCourses.DataSource = Courses();


            finalCourses.DataTextField = "name";
            finalCourses.DataValueField = "course_id";


            finalCourses.DataBind();
        }


        protected DataTable Courses()
        {

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from Course", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            con.Close();


            return dt;

        }

        protected void show_Click(object sender, EventArgs e)
        {
            finalCourses.Visible = true;
            fillCourses();
        }
    }
}