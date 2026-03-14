using System;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace TourismWebsite
{
    public partial class Packages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPackages();
            }
        }

        private void LoadPackages()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                string query = "SELECT * FROM Packages WHERE IsActive = 1";

                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                rptPackages.DataSource = dt;
                rptPackages.DataBind();
            }
        }
    }
} 