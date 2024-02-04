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
    public partial class GP : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(connStr);
            SqlCommand cmd2 = new SqlCommand("select * from FN_StudentViewGP(@student_ID)", con2);
            cmd2.CommandType = CommandType.Text;
            DataTable dataTable = new DataTable();
            cmd2.Parameters.AddWithValue("@student_ID", Convert.ToInt32(Session["user"].ToString()));
            con2.Open();

            SqlDataAdapter ds = new SqlDataAdapter(cmd2);

            ds.Fill(dataTable);


            con2.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }
}