using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics.Eventing.Reader;

namespace Advising114
{
    public partial class Login : System.Web.UI.Page
    {
        //  Advising_SystemDBEntities1 entities = new Advising_SystemDBEntities1();   
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();

        }
        protected bool validID(string id)
        {
            if (id != null && id != "")
            {
                int myInt;
                bool parse = Int32.TryParse(id, out myInt);
                return parse;
            }
            return false;
        }
        protected void studentLogin(string connection, int id, string pass)
        {
            string success;
            using (SqlConnection conn = new SqlConnection(connection))
            {


                SqlCommand loginProc = new SqlCommand("FN_StudentLogin", conn);
                loginProc.CommandType = CommandType.StoredProcedure;
                loginProc.Parameters.Add("@return", SqlDbType.Bit).Direction = ParameterDirection.ReturnValue;

                loginProc.Parameters.AddWithValue("@Student_id", id);
                loginProc.Parameters.AddWithValue("@password", pass);



                conn.Open();
                loginProc.ExecuteNonQuery();

                success = loginProc.Parameters["@return"].Value.ToString();
                conn.Close();
              //  MessageBox.Show(success);
                if (success == "True")
                {
                    Session["user"] = id;
                    // Student web form
                    Response.Redirect("Student/StudentHome.aspx");
                }
                else
                     if (success == "False")
                {

                   
                    //MessageBox.Show("Invalid Account");
                }
            }
        }
        protected void advisorLogin(string connection, int id, string pass)
        {
            string success;
            using (SqlConnection conn = new SqlConnection(connection))
            {


                SqlCommand loginProc = new SqlCommand("FN_AdvisorLogin", conn);
                loginProc.CommandType = CommandType.StoredProcedure;
                loginProc.Parameters.Add("@return", SqlDbType.Bit).Direction = ParameterDirection.ReturnValue;

                loginProc.Parameters.AddWithValue("@advisor_Id", id);
                loginProc.Parameters.AddWithValue("@password", pass);



                conn.Open();
                loginProc.ExecuteNonQuery();

                success = loginProc.Parameters["@return"].Value.ToString();
                conn.Close();

                if (success == "True")
                {
                    Session["user"] = id;
                    //Advisor web form
                    Response.Redirect("Advisor/AdvisorHome.aspx");
                }
                else
                     if (success == "False")
                {
                    MessageBox.Show("Invalid Account");
                }
            }
        }
        //protected void AdminLogin(string connection, int id, string pass)
        //{
        //    string success;
        //    using (SqlConnection conn = new SqlConnection(connection))
        //    {


        //        SqlCommand loginProc = new SqlCommand("FN_StudentLogin", conn);
        //        loginProc.CommandType = CommandType.StoredProcedure;
        //        loginProc.Parameters.Add("@return", SqlDbType.Bit).Direction = ParameterDirection.ReturnValue;

        //        loginProc.Parameters.AddWithValue("@Student_id", id);
        //        loginProc.Parameters.AddWithValue("@password", pass);



        //        conn.Open();
        //        loginProc.ExecuteNonQuery();

        //        success = loginProc.Parameters["@return"].Value.ToString();
        //        conn.Close();

        //        if (success == "True")
        //        {
        //            Response.Redirect("ww.aspx");
        //        }
        //        else
        //             if (success == "False")
        //        {
        //            MessageBox.Show(select.Text);
        //        }


        //    }
        //}
           

          

protected void login(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
            if ( passEntry.Text!=string.Empty && validID(idEntry.Text)) 
            {
                
                
                int id = Int16.Parse(idEntry.Text);
                string pass = passEntry.Text;

                if(select.Text=="Admin")
                {
                    if(id == 1 && pass == "omar")
                    {
                        Response.Redirect("Admin/AdminHome.aspx");
                    //Admin Page
                    }
                }
                else
                    if(select.Text=="Advisor")
                    advisorLogin(connStr, id,pass);
                else
                    if(select.Text=="Student")
                    studentLogin(connStr, id,pass);
                else
                    MessageBox.Show("Please enter a valid Role");
            }
            else
            {
                MessageBox.Show("Please enter valid data");
            }
            
           
              
            
            
                
            
          
        }

        protected void register(object sender, EventArgs e)
        {
            Response.Redirect("StudentReg.aspx");
        }
    }
}