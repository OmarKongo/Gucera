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
    public partial class Unpaid_Installment : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand loginProc = new SqlCommand("FN_StudentUpcoming_installment", conn);
            loginProc.CommandType = CommandType.StoredProcedure;
            loginProc.Parameters.Add("@return", SqlDbType.DateTime).Direction = ParameterDirection.ReturnValue;

            loginProc.Parameters.AddWithValue("@Student_id", Convert.ToInt32(Session["user"].ToString()));
            //loginProc.Parameters.AddWithValue("@password", pass);



            conn.Open();
            loginProc.ExecuteNonQuery();

            string dateS = loginProc.Parameters["@return"].Value.ToString();
            conn.Close();
            SqlConnection conn1 = new SqlConnection(connStr);
            SqlCommand getPaymentId = new SqlCommand("select payment_id from Payment where student_id = @student_id", conn);
            getPaymentId.CommandType = CommandType.Text;


            getPaymentId.Parameters.AddWithValue("@student_id", Convert.ToInt32(Session["user"].ToString()));
            //getPaymentId.Parameters.AddWithValue("@status", "notPaid");
            //loginProc.Parameters.AddWithValue("@password", pass);



            conn.Open();
            String paymentId = getPaymentId.ExecuteScalar().ToString();


            conn.Close();

            SqlConnection conn2 = new SqlConnection(connStr);
            SqlCommand getInstallment = new SqlCommand("select * from Installment where  deadline = @deadline and payment_id = @payment_id", conn);
            getInstallment.CommandType = CommandType.Text;

            getInstallment.Parameters.AddWithValue("@deadline", Convert.ToDateTime(dateS));
            getInstallment.Parameters.AddWithValue("@payment_id", Convert.ToInt32(paymentId));
            ;
            DataTable dt = new DataTable();


            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(getInstallment);
            adapter.Fill(dt);


            //            Date date = (Date)loginProc.Parameters["@return"].Value;
            conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}