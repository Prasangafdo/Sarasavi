using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sarasavi
{
    public partial class registration : System.Web.UI.Page{
        //Global variation declaration
        string path;
        string sql;
        //Create a method for databse connection
        public void connection()
        {//Connection string
          path = @"Data Source=localhost;Initial Catalog=SARASAVI_BOOKSHOP;Integrated Security=True";
    }
        string gender;
        public string getGender(){

            if (RadioButtonList1.SelectedValue == "Male")
            {
                gender="Male";

            }
            else if (RadioButtonList1.SelectedValue == "Female")
            {
                gender = "Female";
            }
            return gender;


}
        protected void Button1_Click(object sender, EventArgs e)
        { //insert query for member registration form  
            getGender();
            String Name = Fname.Text + " " + Lname.Text;
            //num.Text = gender;
            connection();

            SqlConnection con = new SqlConnection(path);
            con.Open();

            try
            {
                string sql = "INSERT INTO USER_REGISTRATION(CONTACT_NUMBER,NAME,SEX,NIC_NUMBER,USER_ADDRESS,USER_TYPE,USERNAME, USER_PASSWORD) values('" + num.Text + "','" + Name + "','" + gender + "','" + NIC.Text + "','" + addr.Text + "','" + uType.Text + "','" + username.Text + "','" + password.Text + "')";
                
                SqlCommand cmb = new SqlCommand(sql, con);
                cmb.ExecuteNonQuery();
                lblErr.Visible = true;
                lblErr.Text = "Success...!";
            }
            catch (SqlException)
            {
                lblErr.Visible = true;
                lblErr.Text = "Invalid !";
            }
            con.Close(); 
  
        }
    }
}