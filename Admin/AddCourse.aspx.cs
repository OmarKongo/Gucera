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
    public partial class AddCourse : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
        }
        protected void Unnamed_Click1(object sender, EventArgs e)
        {


            string name = cName.Value;
            string Major = major.Value;

            bool flag;
            int Hours = Convert.ToInt32(hours.Value);
            int Sem = Convert.ToInt32(semester.Value);
            if (offered.Checked == false)
                flag = false;
            else
                flag = true;
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand update = new SqlCommand("Procedures_AdminAddingCourse", con);
            update.CommandType = CommandType.StoredProcedure;
            update.Parameters.AddWithValue("@major", Major);
            update.Parameters.AddWithValue("@name", name);
            update.Parameters.AddWithValue("@semester", Sem);
            update.Parameters.AddWithValue("@credit_hours", Hours);
            update.Parameters.AddWithValue("@is_offered", flag);

            con.Open();
            update.ExecuteNonQuery();
            con.Close();

            cName.Value = string.Empty;
            major.Value = string.Empty;
            hours.Value = string.Empty;
            semester.Value = string.Empty;
            offered.Checked = false;
            success.Visible = true;
            //MessageBox.Show("aa");
            //finalDrop1.Items.Add(name);
            // DropID1.Items.Add(cId.ToString());

            //fillCourses();



        }
       
    }
}