using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextBox5.Text != TextBox6.Text)
            {

                lableMSG.Text = "Passwords don't match.";
                lableMSG.ForeColor = System.Drawing.Color.Red;
                return;
            }


            try
            {

                using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-IRUO82K5\SQLEXPRESS;Initial Catalog=Registration; Integrated Security=True"))
                {

                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("insert into Reg1 values(@firstname,@lastname,@dob,@email,@password1,@password2,GETDATE())", con))
                    {

                        cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@dob", Calendar1.SelectedDate);
                        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@password1", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@password2", TextBox6.Text);


                        cmd.ExecuteNonQuery();


                        lableMSG.Text = " Successful Registration";
                        lableMSG.ForeColor = System.Drawing.Color.Green;


                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        Calendar1.SelectedDate = DateTime.Now;
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {

                lableMSG.Text = "Error: " + ex.Message;
                lableMSG.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LogIn.aspx");
        }
    }
}