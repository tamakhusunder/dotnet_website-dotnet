using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetclass1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                lblUsername.Text = "Hello " + Session["UserName"]+"!!  ";

            }
            else
            {
                Response.Write("<script>alert('Invalid Login');</script>");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.RedirectPermanent("LoginForm.aspx");
        }
    }
}