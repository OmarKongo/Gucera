using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising114.Advisor
{
    public partial class Advisor : System.Web.UI.MasterPage
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           int id = Convert.ToInt32(Session["user"].ToString());
            name.Text = "Hello, "+getName(id);
        }
        protected string getName(int id)
        {
                SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select advisor_name from Advisor where advisor_id = @advisor_id", con);
            cmd.Parameters.AddWithValue("@advisor_id",id);
            cmd.CommandType = CommandType.Text;
            con.Open();
            string name = cmd.ExecuteScalar().ToString();
            con.Close();
            return name;
            
        }
    }
}