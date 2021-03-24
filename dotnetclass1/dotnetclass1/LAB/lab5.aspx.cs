using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetclass1.LAB
{
    public partial class lab5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "Sunder" && txtpassword.Text == "12345")
            {
                Session["UserName"] = txtusername.Text;
                //Response.Write("<script>alert('Login Successful');</script>");
                Response.RedirectPermanent("1_overview.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid user');</script>");

            }
        }
    }
}