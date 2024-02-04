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
    public partial class AllRequests : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            requests();
        }

        protected void requests()
        {
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand requestsFunc = new SqlCommand("select * from FN_Advisors_Requests(@advisor_id)", con);
            requestsFunc.CommandType = CommandType.Text;
            DataTable dataTable = new DataTable();
            requestsFunc.Parameters.AddWithValue("@advisor_id", Convert.ToInt32(Session["user"].ToString())); //Session["user"]

            con.Open();
            SqlDataAdapter ds = new SqlDataAdapter(requestsFunc);
            ds.Fill(dataTable);
            con.Close();

            GridView3.DataSource = dataTable;
            GridView3.DataBind();
        }
    }
}