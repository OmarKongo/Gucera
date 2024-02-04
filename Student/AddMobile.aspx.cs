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
using System.Xml.Linq;

namespace Advising114.Student
{
    public partial class AddMobile : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
        }

        protected void AddTelephoneButton_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Procedures_StudentaddMobile", con2);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
            cmd.Parameters.AddWithValue("@mobile_number", inputTelephone.Value.ToString());
            con2.Open();
            cmd.ExecuteNonQuery();
            con2.Close();
           // MessageBox.Show("Mobile Added");
           success.Visible = true;  
        }
    }
}
