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
    public partial class viewBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnErrorMsg.Visible = false;
        }

        string path;
        public void connection()
        {//Connection string
            path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {

                connection();

                SqlConnection con = new SqlConnection(path);
                string sql = "Select * from BOOK where ISBN = '" + txtISBN.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txtBookTitle.Text = reader[1].ToString();
                    txtPublisher.Text = reader[2].ToString();
                    txtAuthor.Text = reader[3].ToString();
                    txtEdition.Text = reader[4].ToString();
                    txtCategory.Text = reader[5].ToString();


                }
            }
            catch (SqlException ex)
            {
            }
            }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {

                connection();

                SqlConnection con = new SqlConnection(path);
                con.Open();
                string sql = "update BOOK set Author='" + txtAuthor.Text + "',Publisher='" + txtPublisher.Text + "',Book_title='" + txtBookTitle.Text + "', edition='"+txtEdition.Text+"', category = '"+txtCategory.Text+"' WHERE ISBN='" + txtISBN.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                btnErrorMsg.Visible = true;
                btnErrorMsg.Text = "BOOK UPDATED SUCCESSFULLY";

            }
            catch (SqlException)
            {
                btnErrorMsg.Visible = true;
                btnErrorMsg.Text = "BOOK UNABLE TO UPDATE";

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                connection();

                SqlConnection con = new SqlConnection(path);
                con.Open();
                string sql1 = "DELETE FROM BOOK WHERE ISBN ='" + txtISBN.Text + "'";
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.ExecuteNonQuery();
                con.Close();
//              btnErrorMsg0.Visible = true;
//              btnErrorMsg0.Text = "BOOK COPY DELETED";
            }
            catch (SqlException)
            {
 //               btnErrorMsg0.Visible = true;
 //               btnErrorMsg0.Text = "BOOK COPY UNABLE TO DELETE";
            }
        }
    }
}