using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising114.Admin
{
    public partial class LinkStuAdv : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            viewStudents();
            viewAdvisors();
            success.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridView3.SelectedIndex = -1;
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
        protected void viewAdvisors()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_AdminListAdvisors", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView3.DataSource = dr;
                GridView3.DataBind();
            }
        }
        protected void Proc(int studentID, int advisorID)
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_AdminLinkStudentToAdvisor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@studentID", studentID);
            cmd.Parameters.AddWithValue("@advisorID", advisorID);
            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();
            success.Visible = true;
            showLink();
        }
        protected void showLink()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("AdminListStudentsWithAdvisors", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }

        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow student = GridView1.SelectedRow;
            int studentID = Convert.ToInt32(student.Cells[0].Text);
            GridViewRow advisor = GridView3.SelectedRow;
            int advisorID = Convert.ToInt32(advisor.Cells[0].Text);
            Proc(studentID, advisorID);

        }
    }
}