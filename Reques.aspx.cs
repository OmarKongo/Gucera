using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising114
{
    public partial class Reques : System.Web.UI.Page
    {
       
            string connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ConnectionString;
            protected void Page_Load(object sender, EventArgs e)
            {

                // finalCourses.Items.Clear();
                success.Visible = false;
                alert.Visible = false;
                finalCourses.Visible = false;
                //MessageBox.Show(finalCourses.Items.Count.ToString());
                // fillCourses();

            }



            protected void RequestCourseButton_Click(object sender, EventArgs e)
            {
                inputType.Value.ToLower();
                //MessageBox.Show(""+inputCreditHours.Value+inputCourseid.Value);
                if (checkValidity())
                {
                    alert.Visible = false;
                    if (inputType.Value.ToString() == "course")
                    {
                        //MessageBox.Show(finalCourses.SelectedIndex.ToString());
                        SqlConnection con = new SqlConnection(connStr);
                        SqlCommand cmd = new SqlCommand("Procedures_StudentSendingCourseRequest", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
                        cmd.Parameters.AddWithValue("@courseID", Convert.ToInt32(DropIDs.Items[finalCourses.SelectedIndex].ToString()));
                        cmd.Parameters.AddWithValue("@type", inputType.Value.ToString());
                        cmd.Parameters.AddWithValue("@comment", inputComment.Value.ToString());

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        success.Visible = true;
                        // MessageBox.Show("Request Sent");

                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(connStr);
                        SqlCommand cmd = new SqlCommand("Procedures_StudentSendingCHRequest", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@StudentID", Convert.ToInt32(Session["user"].ToString()));
                        cmd.Parameters.AddWithValue("@credit_hours", Convert.ToInt32(inputCredit.Value));
                        cmd.Parameters.AddWithValue("@type", inputType.Value.ToString());
                        cmd.Parameters.AddWithValue("@comment", inputComment.Value.ToString());

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        success.Visible = true;
                        //MessageBox.Show("Request Sent");


                    }
                }
                else
                {
                    alert.Visible = true;
                }
                inputType.Value = string.Empty;
                inputComment.Value = string.Empty;
                inputCredit.Value = string.Empty;

            }

            protected void fillCourses()
            {
                string s = "";
                finalCourses.Items.Clear();
                // initCourses.Items.Clear();
                DropIDs.Items.Clear();
                initCourses.DataSource = Courses();

                initCourses.DataTextField = "name";
                initCourses.DataValueField = "course_id";
                initCourses.DataBind();
                for (int i = 0; i < initCourses.Items.Count; i++)
                {

                    //  s += dropCourse.Items[i].ToString();
                    //  x+= dropCourse.
                    // x++;
                    s += initCourses.Items[i].Value.ToString();
                    finalCourses.Items.Add(initCourses.Items[i].Text);
                    DropIDs.Items.Add(initCourses.Items[i].Value);
                }


                //   MessageBox.Show(s+"");
                //finalCourses.DataBind();
                // DropIDs.DataBind();
            }


            protected DataTable Courses()
            {
                // finalDrop.Items.Add("Course");
                SqlConnection con = new SqlConnection(connStr);
                SqlCommand cmd = new SqlCommand("select * from Course", con);
                cmd.CommandType = CommandType.Text;
                // cmd.Parameters.AddWithValue("@StudentID", Session["user"]);
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                adapter.Fill(dt);
                con.Close();


                return dt;

            }
            protected bool checkValidity()
            {
                if (inputType.Value.ToString() == "credit" & inputCredit.Value.ToString() != string.Empty)
                    return true;
                if (inputType.Value.ToString() == "course" & inputCredit.Value == string.Empty)
                    return true;
                else
                    return false;
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                finalCourses.Visible = true;
                fillCourses();

            }
        }
    }