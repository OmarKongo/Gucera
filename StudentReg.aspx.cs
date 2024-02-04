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

namespace Advising114.Student
{
    public partial class StudentReg : System.Web.UI.Page
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
        protected void SignInButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {

                string fname = inputFirstName.Value;
                string lname = inputLastName.Value;
                string mail = inputEmail.Value;
                string pass = inputPassword.Value;
                string fac = inputFaculty.Value;
                string maj = inputMajor.Value;
                string sems = inputSemester.Value;



                if (validPass(pass))
                {


                    SqlCommand RegisterProc = new SqlCommand("Procedures_StudentRegistration", conn);
                    RegisterProc.CommandType = CommandType.StoredProcedure;
                    RegisterProc.Parameters.AddWithValue("@first_name", fname);
                    RegisterProc.Parameters.AddWithValue("@last_name", lname);
                    RegisterProc.Parameters.AddWithValue("@password", pass);
                    RegisterProc.Parameters.AddWithValue("@faculty", fac);
                    RegisterProc.Parameters.AddWithValue("@email", mail);
                    RegisterProc.Parameters.AddWithValue("@major", maj);
                    RegisterProc.Parameters.AddWithValue("@Semester", sems);


                    SqlParameter genID = RegisterProc.Parameters.Add("@Student_id", SqlDbType.Int);
                    genID.Direction = ParameterDirection.Output;

                    conn.Open();
                    RegisterProc.ExecuteNonQuery();
                    conn.Close();

                    MessageBox.Show("Register Sucess \n Your id: " + genID.Value.ToString());
                    Response.Redirect("Login.aspx");
                }
            }
        }
            }
        }