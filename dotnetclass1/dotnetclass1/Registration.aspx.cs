﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetclass1
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        bool length = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvPasswordLength_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            if (args.Value.Length >= 6 && args.Value.Length <= 25)
            {
                length = true;
            }
            if (length == true)
            {
                args.IsValid = true;
            }
            else 
            {
                args.IsValid = false;
            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            if (length == true)
            {
                Response.Write("<script>alert('Registration Successful');</script>");
            }
            else
            {
                Response.Write("<script>alert('Registration Unsuccessful');</script>");
            }
            }
    }
}