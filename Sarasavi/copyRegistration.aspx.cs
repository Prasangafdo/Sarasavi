using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class copyRegistration : System.Web.UI.Page
    {

        string path;
        string sql;

        public void connection()
        {//Connection string
            path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErr.Visible = true;
            lblErr.Text = "Please fill only ISBN";

        }

        protected void btnCopyReg_Click(object sender, EventArgs e)
        {

 
        }

        protected void txtISBN_TextChanged(object sender, EventArgs e)
        {
            
        }

   

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            String Title = "SELECT * FROM BOOK WHERE ISBN ='" + txtISBN.Text + "'";

            SqlCommand cmd = new SqlCommand(Title, con);
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader(); //Reading data from the SQL server
            while (reader.Read())
            {
                txtTitle.Text = reader[1].ToString();
            }
            reader.Close();
            ///////////Edited by me
            //txtCopyISBN.Text;
            String check = "SELECT COUNT(COPY_ISBN) as maxCopy FROM COPY WHERE ISBN='" + txtISBN.Text + "'";
            SqlCommand cmd1 = new SqlCommand(check, con);
            int cnum;
            SqlDataReader reader1 = cmd1.ExecuteReader(); //Reading data from the SQL server
            reader1.Read();
            cnum = Convert.ToInt32(reader1[0]);

            int copyisbnval = cnum + 1;
            String cval = copyisbnval.ToString();
            txtCopyISBN.Text = (txtISBN.Text + "-" + copyisbnval).ToString();  
           // txtCopyISBN.Text = txtISBN.Text + cval;
            //  txtCopyISBN.Text = cval;
            con.Close();
        }
        protected void btnCopyReg1_Click(object sender, EventArgs e)
        {
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            try
            {

                String Title = "SELECT * FROM BOOK WHERE ISBN ='" + txtISBN.Text + "'";

                SqlCommand cmd = new SqlCommand(Title, con);
                cmd.ExecuteNonQuery();
                SqlDataReader reader = cmd.ExecuteReader(); //Reading data from the SQL server
                while (reader.Read())
                {
                    txtTitle.Text = reader[1].ToString();
                }
                reader.Close();
                //txtCopyISBN.Text;
                String check = "SELECT COUNT(COPY_ISBN) as maxCopy FROM COPY WHERE ISBN='" + txtISBN.Text + "'";
                SqlCommand cmd1 = new SqlCommand(check, con);
                int cnum;
                SqlDataReader reader1 = cmd1.ExecuteReader(); //Reading data from the SQL server
                reader1.Read();
                cnum = Convert.ToInt32(reader1[0]);
                reader1.Close();
                int copyisbnval = cnum + 1;
                String cval = copyisbnval.ToString();
                txtCopyISBN.Text = (txtISBN.Text + "-" + copyisbnval).ToString();


                //Inserting cpy valuses to the db
                string book = "INSERT INTO COPY(COPY_ISBN,COPY_TYPE,ISBN) values('" + txtCopyISBN.Text + "', '" + ddlCopyType.Text + "','" + txtISBN.Text + "')";

                SqlCommand cmd2 = new SqlCommand(book, con);
                cmd2.ExecuteNonQuery();
                lblErr.Text = "Success...!";
                con.Close();
            }
            catch(SqlException)
            {
                lblErr.Visible = true;
                lblErr.Text = "Invalid !"; 
                con.Close();
             }
        }

    }
}