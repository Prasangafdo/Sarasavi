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
                string book = "INSERT INTO BOOK(ISBN,BOOK_TITLE,PUBLISHER,AUTHOR,EDITION,CATEGORY) values('" + txtISBN.Text + "','" + txtbookTtle.Text + "','" + txtPublisher.Text + "','" + txtAuthor.Text + "','" + txtEdition.Text + "','" + txtCategory.Text + "')";

               // string copy = "INSERT INTO COPY(COPY_ISBN,COPY_TYPE,ISBN) values('" + txtCopyISBN.Text + "','" + ddlCopyType.Text + "','" + txtISBNcp.Text + "')";//

                SqlCommand cmd = new SqlCommand(book, con);
                cmd.ExecuteNonQuery();
            }
            catch (SqlException)
            {
                  lblErr.Visible = true;
                  lblErr.Text = "Invalid !";
            }
            con.Close();
            Response.Redirect("copyRegistration.aspx");//redirecting t copy registration
            

        }

       /* protected void ISBNChange(object sender, EventArgs e)
        {

            //take tpyped ISBN to the variable(realISBN)
            int realISBN = Convert.ToInt32(txtISBNcp.Text);
            //import database connection

            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            //Access to max copy no from copy table 
            string sql = "SELECT COUNT(COPY_ISBN) FROM  COPY WHERE ISBN='" + txtISBNcp.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            //cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            int value;
            while (reader.Read())
            { //pass that value into the array
                value = Convert.ToInt32(reader[0].ToString());

            }
            //Add 1 (+1) for the array and assig into variable (copyNo)
            int currentCopy = Convert.ToInt32(reader[0].ToString()) + 1;
            //display value in Copy ISBN text box(realISBN-copyNo)
            txtCopyISBN.Text = "ll";//Need to edit this
            // con.Close();           
        }*/



        /* public int getnumofCopies()
        {
           int copies_intparse;
            copies_intparse = int.Parse(ddlnumofCopies.Text);
            return copies_intparse;
        }*/

        /* public int getcopyISBN()
         {
             int Copies = 0;
             Copies = Copies * getnumofCopies();
             return Copies;
         }*/
        //public string setcopyISBN()
        //{

        //}
    }
}