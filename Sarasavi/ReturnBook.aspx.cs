using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        string path;
        string sql;

        public void connection()
        {//Connection string
            path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime cdate = DateTime.Now;
            DateTime ddate = DateTime.Now;//due date retreiving from the database

            String current_date = DateTime.Now.ToString("yyyy-MM-dd");
            lblDate.Text = current_date;

            //Uncomment following lines if retriving fines
          /*   DateTime xmas = new DateTime(2020, 12, 25);//Getting date difference
             double daysUntilChristmas = xmas.Subtract(DateTime.Today).TotalDays;

            txtddifference.Text = daysUntilChristmas.ToString();
            */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            try
            {
                String update = "UPDATE COPY set Available ='1' where COPY_ISBN = '" + txtcopy_ISBN.Text + "'";

               
                SqlCommand cmb1 = new SqlCommand(update, con);

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
    }
}