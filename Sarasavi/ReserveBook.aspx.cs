using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class ReserveBook : System.Web.UI.Page
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
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();
            try
            {
                DateTime reserve_Date = DateTime.Parse(Request.Form[txt_Date.UniqueID]);

                String copyISBN = txt_copyISBN.Text;

                string sql = "INSERT INTO  RESERVATION (USER_NUMBER, COPY_ISBN, DATE) values('" + txt_userNumber.Text + "', '" + copyISBN + "' ,'" + reserve_Date + "' )";
                String update = "UPDATE COPY set Available ='0' where COPY_ISBN = '" + copyISBN + "'";

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
    }
}