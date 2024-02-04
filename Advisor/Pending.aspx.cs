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

namespace Advising114.Advisor
{
    public partial class Pending : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false; 
            pendingRequests();
        }

        protected void pendingRequests()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand pendingRequestsProc = new SqlCommand("Procedures_AdvisorViewPendingRequests", con);
            pendingRequestsProc.CommandType = CommandType.StoredProcedure;
            pendingRequestsProc.Parameters.AddWithValue("@Advisor_ID", Convert.ToInt32(Session["user"].ToString())); //Session["user"]


            con.Open();
            SqlDataReader reader = pendingRequestsProc.ExecuteReader();

            GridView4.DataSource = reader;
            GridView4.DataBind();
            con.Close();

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView4.SelectedRow;
            int reqId = Convert.ToInt32(row.Cells[0].Text);
            int studentId = Convert.ToInt32(row.Cells[6].Text);
            string type = row.Cells[1].Text;

            SqlConnection con = new SqlConnection(connStr);
           // SqlCommand getSemCode = new SqlCommand("select semester_code from Payment where student_id = @student_id", con);
           // getSemCode.Parameters.AddWithValue("@student_id", studentId);
           // getSemCode.CommandType = CommandType.Text;
           // DataTable data = new DataTable();
           // con.Open();
           // //SqlDataAdapter adapter = new SqlDataAdapter(getSemCode);
           // //adapter.Fill(data);
           // string sem = getSemCode.ExecuteScalar().ToString();
           // con.Close();
           // //   data.Rows.Find.
           //// MessageBox.Show(sem);
            if (type == "course")
            {
                SqlCommand coursePend = new SqlCommand("Procedures_AdvisorApproveRejectCourseRequest", con);
                coursePend.CommandType = CommandType.StoredProcedure;
                coursePend.Parameters.AddWithValue("@requestID", reqId);
                coursePend.Parameters.AddWithValue("@current_semester_code", sem.Value.ToString());
                con.Open();
                coursePend.ExecuteNonQuery();
                con.Close();
                success.Visible = true;
                //MessageBox.Show("Course is updated");

            }
            else
            {

                SqlCommand creditPend = new SqlCommand("Procedures_AdvisorApproveRejectCHRequest", con);
                creditPend.CommandType = CommandType.StoredProcedure;
                creditPend.Parameters.AddWithValue("@requestID", reqId);
                creditPend.Parameters.AddWithValue("@current_sem_code", sem.Value.ToString());
                con.Open();
                creditPend.ExecuteNonQuery();
                con.Close();
                success.Visible = true;
                //MessageBox.Show("Credit is updated");
            }




            GridView4.SelectedIndex = -1;
            pendingRequests();
        }

    }
}