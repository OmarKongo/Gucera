using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Web.Configuration;

namespace Advising114.Admin
{
    public partial class AddExam : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
            finalDrop1.Visible = false;
        }
        protected void Unnamed_Click2(object sender, EventArgs e)
        {
            string type = "Normal";
            if (dropType.SelectedValue != "Type" && examDate.Value != null)
            {
                if (dropType.SelectedValue.ToString() == "First MakeUp")
                    type = "First_makeup";
                else
                    if (dropType.SelectedValue.ToString() == "Second MakeUp")
                    type = "Second_makeup";

                int courseId = Convert.ToInt32(finalDrop1.SelectedValue.ToString());
                DateTime dateTime = Convert.ToDateTime(examDate.Value.ToString());
                SqlConnection con = new SqlConnection(connStr);
                SqlCommand update = new SqlCommand("Procedures_AdminAddExam", con);
                update.CommandType = CommandType.StoredProcedure;
                update.Parameters.AddWithValue("@Type", type);
                update.Parameters.AddWithValue("@date", dateTime);
                update.Parameters.AddWithValue("@courseID", courseId);
                //MessageBox.Show(dateTime+"");
                con.Open();
                update.ExecuteNonQuery();
                con.Close();
                dropType.SelectedIndex = 0;
                examDate.Value = string.Empty;
                success.Visible = true;
            }
            else
            {
                MessageBox.Show("Enter Valid Data");
            }
        }
        protected void Unnamed_Click3(object sender, EventArgs e)
        {
            fillCourses();
            finalDrop1.Visible = true;
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
        protected void fillCourses()
        {
            finalDrop1.Items.Clear();
            finalDrop1.DataSource = Courses();
            finalDrop1.DataTextField = "name";
            finalDrop1.DataValueField = "course_id";
            finalDrop1.DataBind();
        }
    }
}