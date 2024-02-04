using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Advising114.Advisor
{
    public partial class studentMajor : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Boolean flag = false;
            SqlConnection connection = new SqlConnection(connStr);
            string major = semInput.Value.ToString();
            SqlCommand addC = new SqlCommand("select count(*) from Student where major = @major and advisor_id = @advisor_id", connection);
            addC.CommandType = CommandType.Text;
            addC.Parameters.AddWithValue("@major", major);
            addC.Parameters.AddWithValue("@advisor_id", Convert.ToInt32(Session["user"].ToString()));
            

            connection.Open();
            int x = Convert.ToInt32(addC.ExecuteScalar().ToString());
            connection.Close();
            if (x > 0)
                flag = true;
            //MessageBox.Show("" + x);
            view(flag);
               
        }
        protected void view(bool flag)
        {

            if (flag)
            {
                GridView1.Visible = true;
                SqlConnection connection = new SqlConnection(connStr);
                string major = semInput.Value.ToString();
                SqlCommand addC = new SqlCommand("select student_id,f_name from Student where major = @major and advisor_id = @advisor_id", connection);
                addC.CommandType = CommandType.Text;
                addC.Parameters.AddWithValue("@major", major);
                addC.Parameters.AddWithValue("@advisor_id", Convert.ToInt32(Session["user"].ToString()));
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(addC);
                DataTable data = new DataTable();
                adapter.Fill(data);
                connection.Close();
                GridView1.DataSource = data;
                GridView1.DataBind();
                

            }
            else
            {
                GridView1.Visible= false;
            }
        }
    }
}