using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace Advising114.Admin
{
    public partial class UpdateStatus : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            viewAllStudents();
            success.Visible = false;
        }
        protected void viewAllStudents()
        {

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_AdminListStudents", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


            using (SqlConnection con = new SqlConnection(connStr))
            {

                
                GridViewRow row = GridView1.SelectedRow;
                int id = Convert.ToInt32(row.Cells[0].Text);

                SqlCommand update = new SqlCommand("Procedure_AdminUpdateStudentStatus", con);
                update.CommandType = CommandType.StoredProcedure;
                update.Parameters.AddWithValue("@student_id", id);
                con.Open();
                update.ExecuteNonQuery();
                con.Close();
                success.Visible = true;
            }
            viewAllStudents();
        }
    }
}