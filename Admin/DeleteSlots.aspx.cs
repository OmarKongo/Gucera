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
    public partial class DeleteSlots : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            showSems();
            success.Visible = false;
        }
        protected void showSems()
        {
            DataTable dt = new DataTable();
            SqlConnection c = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select semester_code from Semester",c);
            cmd.CommandType = CommandType.Text;
            c.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);

            c.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string sem = row.Cells[0].ToString();
            select(sem);
        }
        protected void select(string sem)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand addC = new SqlCommand("Procedures_AdminDeleteSlots", conn);
            addC.Parameters.AddWithValue("@current_semester",sem);
            addC.CommandType = CommandType.StoredProcedure;
            conn.Open();
            addC.ExecuteNonQuery();
            conn.Close();
            success.Visible = true;
        }
    }
}