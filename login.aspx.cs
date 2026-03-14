using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace TourismWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter both email and password');", true);
                return;
            }

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

                using (MySqlConnection con = new MySqlConnection(connStr))
                {
                    con.Open();

                    string query = "SELECT FullName FROM Users WHERE Email=@Email AND Password=@Password";

                    MySqlCommand cmd = new MySqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        // Create session
                        Session["UserEmail"] = email;
                        Session["UserName"] = result.ToString();

                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or password');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: " + ex.Message + "');", true);
            }
        }
    }
}