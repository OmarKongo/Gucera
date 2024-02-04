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

namespace Advising114.Admin
{
    public partial class Payments : System.Web.UI.Page
    {
        
        string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Div1.Visible = false;
            success.Visible = false;
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("select * from Student_Payment", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();
        
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {

                    // MessageBox.Show(e.RowIndex.ToString() + GridView1.Rows.Count.ToString());

                    //      id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                    GridViewRow row = GridView1.SelectedRow;
                    int id = Convert.ToInt32(row.Cells[0].Text);



                    // 

                    SqlCommand update = new SqlCommand("Procedures_AdminIssueInstallment", con);
                    update.CommandType = CommandType.StoredProcedure;
                    update.Parameters.AddWithValue("@payment_id", id);
                    con.Open();
                    update.ExecuteNonQuery();
                    con.Close();
                }
                success.Visible = true;
            }
            catch (Exception ex)
            {
                Div1.Visible = true;
                //MessageBox.Show("Already Issued");
            }
        }
    }
}