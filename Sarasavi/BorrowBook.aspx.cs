using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class BorrowBook : System.Web.UI.Page
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

        protected void txtISBN_TextChanged(object sender, EventArgs e)
        {

          


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                connection();

            SqlConnection con = new SqlConnection(path);
             con.Open();
            try
            {
           
               DateTime borrow_date = DateTime.Parse(Request.Form[txtBorrowDate.UniqueID]);
               DateTime RR_Date = DateTime.Parse(Request.Form[txtRRDate.UniqueID]);

               String copyISBN = txtISBN.Text + "-" + ddlcopyISBN.Text;

               string sql = "INSERT INTO  BORROW1 (USER_NUMBER, ISBN, COPY_ISBN, BORROW_DATE, RR_DATE) values('" + txtUserNum.Text + "', '" + txtISBN.Text + "','" + copyISBN + "', '" + borrow_date + "' ,'" + RR_Date + "' )";
               String update = "UPDATE COPY set Available ='0' where COPY_ISBN = '"+copyISBN+"'";

                SqlCommand cmb = new SqlCommand(sql, con);
                SqlCommand cmb1 = new SqlCommand(update, con);

                   cmb.ExecuteNonQuery();
                   cmb1.ExecuteNonQuery();

              //  lblErr.Visible = true;
               // lblErr.Text = "Success...!";
            }
            catch (SqlException)
            {
               // lblErr.Visible = true;
              //  lblErr.Text = "Invalid !";
            }
            con.Close(); 
  
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();
/*
            string sql = "SELECT COUNT(COPY_ISBN) from COPY where ISBN = '" + txtISBN.Text + "'";
            SqlCommand cmd1 = new SqlCommand(sql, con);
            int cnum;
            SqlDataReader reader1 = cmd1.ExecuteReader(); //Reading data from the SQL server
            reader1.Read();
            cnum = Convert.ToInt32(reader1[0]);
            reader1.Close();
            if (cnum>=1)
            {
 */

                string sql1 = "SELECT * FROM copy where ISBN = '" + txtISBN.Text + "' and COPY_TYPE='BORROWED'";
                SqlCommand cmd2 = new SqlCommand(sql1, con);
                SqlDataReader reader2 = cmd2.ExecuteReader(); //Reading data from the SQL server
                while (reader2.Read())
                {
                    ddlcopyISBN.Items.Add(reader2[0].ToString());
                    //TextBox1.Text = reader2[0].ToString();

                }

          // }
           



            }

        protected void ddlcopyISBN_SelectedIndexChanged(object sender, EventArgs e)
        {
         /*   ddlcopyISBN.Items.Add("Prasanga");
            ddlcopyISBN.Items.Add("Fernando");*/
        }
        }
    }
 



   
 
 