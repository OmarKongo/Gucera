using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising114.Advisor
{
    public partial class MyStudents : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewAssignedStudentsMajor();
        }

        protected void ViewAssignedStudentsMajor()
        {

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand assignedProc = new SqlCommand("select student_id,f_name from Student where advisor_id = @AdvisorID", con);
            assignedProc.CommandType = CommandType.Text;
            assignedProc.Parameters.AddWithValue("@AdvisorID", Convert.ToInt32(Session["user"].ToString())); //Session["user"]
          //

            con.Open();
            SqlDataReader reader = assignedProc.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();

        }
    }
}