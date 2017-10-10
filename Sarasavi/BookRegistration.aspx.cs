using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Sarasavi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string path;
        string sql;

        public void connection()
        {//Connection string
            path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //book registration form  

            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            try
            {
                string book = "INSERT INTO BOOK(ISBN,BOOK_TITLE,PUBLISHER,AUTHOR,EDITION,CATEGORY) values+('" + txtISBN.Text + "','" + txtbookTtle.Text + "','" + txtPublisher.Text + "','" + txtAuthor.Text + "','" + txtEdition.Text + "','" + txtCategory.Text + "')";

                SqlCommand cmd = new SqlCommand(book, con);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                  lblErr.Visible = true;
                  lblErr.Text = "Invalid !";
            }
            con.Close();
            Response.Redirect("copyRegistration.aspx");//redirecting to copy registration
            

        }
    }
}