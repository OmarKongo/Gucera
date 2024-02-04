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
    public partial class DeleteCourse : System.Web.UI.Page
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
            string query = "select * from Course";
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
           // cmd.Parameters.AddWithValue("@student_id", Session["user"]);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();

            return dt;

        }
        protected void deleteC(int course)
        {
            using (SqlConnection conec = new SqlConnection(connStr))
            {

                SqlCommand addC = new SqlCommand("Procedures_AdminDeleteCourse", conec);
                addC.Parameters.AddWithValue("@courseID", course);
                addC.CommandType = CommandType.StoredProcedure;
                conec.Open();
                addC.ExecuteNonQuery();
                success.Visible = true;
                GridView1.DataSource = Courses();
                GridView1.DataBind();
               
                // MessageBox.Show("Deleted Successfully");
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // GridView2.DataSource = null; GridView2.DataBind();
            GridViewRow row = GridView1.SelectedRow;
            int id = Convert.ToInt32(row.Cells[0].Text);
            //GridView2.SelectedIndex = -1;
           //' showInstructors(id);
           deleteC(id);
            //MessageBox.Show(id + "");
        }
    }
}