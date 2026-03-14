using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Web.UI;

namespace TourismWebsite
{
    public partial class Signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            // Capture data from ASP controls
            string name = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string pass = txtPassword.Text;
            string confirmPass = txtConfirmPassword.Text;

            // Validation
            

            try
            {
                // Get connection string from Web.config
                string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

                using (MySqlConnection con = new MySqlConnection(connStr))
                {
                    con.Open();

                    // OPTIONAL: Check if email already exists
                    string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email=@Email";
                    MySqlCommand checkCmd = new MySqlCommand(checkQuery, con);
                    checkCmd.Parameters.AddWithValue("@Email", email);

                    int userExists = Convert.ToInt32(checkCmd.ExecuteScalar());

                    if (userExists > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email already registered!');", true);
                        return;
                    }

                    // Insert user into database
                    string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@FullName, @Email, @Password)";
                    MySqlCommand cmd = new MySqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@FullName", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", pass);

                    cmd.ExecuteNonQuery();
                }

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Account Created Successfully!');", true);

                // Optional redirect
                // Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: " + ex.Message + "');", true);
            }
        }
    }
}