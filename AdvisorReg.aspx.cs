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

namespace Advising114
{
    public partial class AdvisorReg : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected bool validPass(string pass)
        {
            if (pass != null && pass != "")
            {

                return true;
            }
            return false;
        }

        protected void Register(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {

                string name = advisorName.Text;
                string pass = password.Text;
                string off = office.Text;
                string mail = email.Text;

               


                    SqlCommand RegisterProc = new SqlCommand("Procedures_AdvisorRegistration", conn);
                    RegisterProc.CommandType = CommandType.StoredProcedure;
                    RegisterProc.Parameters.AddWithValue("@advisor_name", name);
                    RegisterProc.Parameters.AddWithValue("@password", pass);
                    RegisterProc.Parameters.AddWithValue("@office", off);
                    RegisterProc.Parameters.AddWithValue("@email", mail);


                    SqlParameter genID = RegisterProc.Parameters.Add("@Advisor_id", SqlDbType.Int);
                    genID.Direction = ParameterDirection.Output;

                    conn.Open();
                    RegisterProc.ExecuteNonQuery();
                    conn.Close();

                    MessageBox.Show("Register Sucess \n Your id: " + genID.Value.ToString());
                    Response.Redirect("login.aspx");
               
            }
        }
    }
}