using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Sarasavi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string path;

        //create a method for database connection
        public void connection()
        {
            //connection string
             path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connection();
            SqlConnection con = new SqlConnection(path);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where Username=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
               // btnErrorMsg.Text = "Invalid Login";
            }
        }
        

    }
}