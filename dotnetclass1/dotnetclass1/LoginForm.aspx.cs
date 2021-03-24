using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace dotnetclass1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //if (txtusername.Text == "Sunder" && txtpassword.Text == "12345")
            //{
            //    Session["UserName"]=txtusername.Text;
            //    //Response.Write("<script>alert('Login Successful');</script>");
            //    Response.RedirectPermanent("1_overview.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid user');</script>");
                
            //}

            //------new code
            //Connection Object
            string myConnnection = "Data Source=DESKTOP-FP899JU; Initial Catalog=DBElective;Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnnection);
            con.Open();

            //Command Object
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student] WHERE [Name]=@name AND [Rollno]=@rollno", con);
            cmd.Parameters.AddWithValue("@name", txtusername.Text);
            cmd.Parameters.AddWithValue("@rollno",txtpassword.Text);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Session["UserName"]=txtusername.Text;   //optional fo exam
                Response.RedirectPermanent("6_ADO.aspx");
            }
            else
            {
                lblMessage.Text="Invalid Username or Password";
            }
        } 
    }
}