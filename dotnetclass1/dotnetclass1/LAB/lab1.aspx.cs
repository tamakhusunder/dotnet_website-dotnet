using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetclass1.LAB
{
    public partial class lab1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculation_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtValue1.Text);
            int num2 = Convert.ToInt32(txtValue2.Text);

            int num3 = num1 + num2;
            lblCalculation.Text = num3.ToString();

        }

        protected void btnRadioButtonCalc_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtValue1.Text);
            int num2 = Convert.ToInt32(txtValue2.Text);

            int num;
            if (rblist.SelectedValue == "+")
            {
                num = num1 + num2;
                lblRadioCalculation.Text = num.ToString();

            }
            else if (rblist.SelectedValue == "-")
            {
                num = num1 - num2;
                lblRadioCalculation.Text = num.ToString();
 
            }
            else if (rblist.SelectedValue == "*")
            {
                num = num1 * num2;
                lblRadioCalculation.Text = num.ToString();

            }
                else if (rblist.SelectedValue == "/")
            {
                num = num1 / num2;
                lblRadioCalculation.Text = num.ToString();

            }
            else
            {
                lblRadioCalculation.Text = "Invalid Choice";
            }
        }

        protected void btnDropDownCalc_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtValue1.Text);
            int num2 = Convert.ToInt32(txtValue2.Text);
            int num;

            if (ddlist.SelectedItem.Value == "+")
            {
                num = num1 + num2;
                lblDropDownCalculation.Text = num.ToString();
            }
            else if (ddlist.SelectedItem.Value == "-")
            {
                num = num1 - num2;
                lblDropDownCalculation.Text = num.ToString();
            }
            else if (ddlist.SelectedItem.Value == "*")
            {
                num = num1 * num2;
                lblDropDownCalculation.Text = num.ToString();
            }
            else if (ddlist.SelectedItem.Value == "/")
            {
                num = num1 / num2;
                lblDropDownCalculation.Text = num.ToString();
            }
            else
            {
                lblDropDownCalculation.Text = "Invalid selection";
            }
        }

        protected void butnCheckboxCalc_Click(object sender, EventArgs e)
        {
            string st = "";
            foreach (ListItem li in cbList.Items)
            {
                if (li.Selected == true)
                {
                    st = st + li.Value;
                }
                lblCheckBoxDisplayList.Text = st;

            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextArea1.InnerText = Calendar1.TodaysDate.ToShortDateString();
            TextArea2.InnerText = Calendar1.SelectedDate.ToShortDateString();

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("lab1.aspx");
        }

    }
}