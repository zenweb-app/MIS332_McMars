using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection log1 = new SqlConnection(@"Data Source=LAPTOP-IRUO82K5\SQLEXPRESS;Initial Catalog=Registration; Integrated Security=True");
            log1.Open();
            SqlCommand cmd = new SqlCommand("SELECT userid FROM Reg1 WHERE firstname = @firstname AND password1 = @password", log1);
            cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);

            SqlDataReader mcmars = cmd.ExecuteReader();
            if (mcmars.Read())
            {

                Session["userid"] = mcmars["userid"].ToString();
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                labelmsg.Text = "Incorrect Username or Password";
                labelmsg.ForeColor = System.Drawing.Color.Red;
            }


            log1.Close();
        }
    }
}