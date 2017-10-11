using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class viewUsers : System.Web.UI.Page
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


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {

                connection();

                SqlConnection con = new SqlConnection(path);
                con.Open();
                string sql = "update USER_REGISTRATION set CONTACT_NUMBER='" + txtContactnumber.Text + "',NAME='" + txtName.Text + "',SEX='" + txtGender.Text + "', NIC_NUMBER='" + txtNIC.Text + "', USER_ADDRESS = '" + txtAddress.Text + "', USER_TYPE = '" + txtUserType.Text + "', USERNAME = '" + txtUsername.Text + "', PASSWORD = '" + txtPassword.Text + "'WHERE USER_number='" + txtUsernumber.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                btnErrorMsg.Visible = true;
                btnErrorMsg.Text = "USER UPDATED SUCCESSFULLY";

            }
            catch (SqlException)
            {
                btnErrorMsg.Visible = true;
                btnErrorMsg.Text = "USER UNABLE TO UPDATE";

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
             try
            {
                connection();

                SqlConnection con = new SqlConnection(path);
                con.Open();
                string sql1 = "DELETE FROM USER_REGISTRATION WHERE USER_number ='" + txtUsernumber.Text + "'";
                SqlCommand cmd = new SqlCommand(sql1, con);
                cmd.ExecuteNonQuery();
                con.Close();
              btnErrorMsg.Visible = true;
              btnErrorMsg.Text = "USER COPY DELETED";
            }
            catch (SqlException)
            {
                btnErrorMsg.Visible = true;
                btnErrorMsg.Text = "USER NABLE TO DELETE";
            }
        }
         protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {

                connection();

                SqlConnection con = new SqlConnection(path);
                string sql = "Select * from USER_REGISTRATION where USER_Number = '" + txtUsernumber.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txtContactnumber.Text = reader[1].ToString();
                    txtName.Text = reader[2].ToString();
                    txtGender.Text = reader[3].ToString();
                    txtNIC.Text = reader[4].ToString();
                    txtAddress.Text = reader[5].ToString();
                    txtUserType.Text = reader[6].ToString();
                    txtUsername.Text = reader[7].ToString();
                    txtPassword.Text = reader[8].ToString();


                }
            }
            catch (SqlException ex)
            {
            }
        }
    }
}