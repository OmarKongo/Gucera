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

namespace Advising114.Admin
{
    public partial class AddSem : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            success.Visible = false;
          
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
           

           
                string code = semCode.Value;
                //Date date = startDate.Value; 

                SqlConnection con = new SqlConnection(connStr);
                SqlCommand update = new SqlCommand("AdminAddingSemester", con);
                update.CommandType = CommandType.StoredProcedure;
                update.Parameters.AddWithValue("@start_date", startDate.Value);
                update.Parameters.AddWithValue("@end_date", endDate.Value);
                update.Parameters.AddWithValue("@semester_code", code);
                con.Open();
                update.ExecuteNonQuery();
                con.Close();
                semCode.Value = string.Empty;
                startDate.Value = string.Empty;
                endDate.Value = string.Empty;
                success.Visible = true;
                // Response.Redirect("login.aspx");
            
        }
       
    }
}