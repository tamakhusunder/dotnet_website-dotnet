using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetclass1.LAB
{
    public partial class lab7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllStudent();
            }

        }

        private void GetAllStudent()
        {
            //Connection Object I
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command Object
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student]",con);

            //Data Reader
            SqlDataReader sdr = cmd.ExecuteReader();

            gvStudent.DataSource = sdr;
            gvStudent.DataBind();
            con.Close();

        }

        private void Clear()
        {
            txtId.Text = "";
            txtRollno.Text = "";
            txtName.Text = "";
        }

        protected void gvStudent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["id"] = id;

                //Connnection Object 
                string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
                SqlConnection con = new SqlConnection(myConnection);
                con.Open();

                //Command object
                SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student] WHERE [ID]=@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);

                //Data Adapter
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                txtId.Text = dt.Rows[0]["Id"].ToString();
                txtRollno.Text = dt.Rows[0]["Rollno"].ToString();
                txtName.Text = dt.Rows[0]["Name"].ToString();
                con.Close();

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //Connection Object I
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command Object
            SqlCommand cmd = new SqlCommand("UPDATE [tbl_Student] SET [Name]=@name, [Rollno]=@rollno WHERE [Id]=@id", con);
            cmd.Parameters.AddWithValue("@name",txtName.Text);
            cmd.Parameters.AddWithValue("@rollno",txtRollno.Text);
            cmd.Parameters.AddWithValue("@id", txtId.Text);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);

            GetAllStudent();
            Clear();


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Connection Object I
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command Object
            SqlCommand cmd = new SqlCommand("DELETE FROM [tbl_Student] WHERE [Id]=@id", con);
            cmd.Parameters.AddWithValue("@id", txtId.Text);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);

            GetAllStudent();
            Clear();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //Connnection Object 
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command object
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student] WHERE [ID]=@Id", con);
            cmd.Parameters.AddWithValue("@Id", txtId.Text);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            txtId.Text = dt.Rows[0]["Id"].ToString();
            txtRollno.Text = dt.Rows[0]["Rollno"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            con.Close();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //Connection Object I
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command Object
            SqlCommand cmd = new SqlCommand("INSERT INTO [tbl_Student] ([Rollno],[Name]) VALUES (@rollno,@name)", con);
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@rollno", txtRollno.Text);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);

            GetAllStudent();
            Clear();


        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            //Connnection Object 
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command object
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student]", con);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            txtId.Text = dt.Rows[0]["Id"].ToString();
            txtRollno.Text = dt.Rows[0]["Rollno"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            con.Close();

        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            //Connnection Object 
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command object
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student]", con);

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int i = dt.Rows.Count - 1;
            txtId.Text = dt.Rows[i]["Id"].ToString();
            txtRollno.Text = dt.Rows[i]["Rollno"].ToString();
            txtName.Text = dt.Rows[i]["Name"].ToString();
            con.Close();

        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            //Connnection Object 
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command object
            int id = Convert.ToInt32(Session["id"]);
            id = id - 1;
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student] WHERE [ID]=@Id", con);
            cmd.Parameters.AddWithValue("@Id", id);
            Session["id"] = id;

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            txtId.Text = dt.Rows[0]["Id"].ToString();
            txtRollno.Text = dt.Rows[0]["Rollno"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            con.Close();

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //Connnection Object 
            string myConnection = "Data Source=.; Initial Catalog=DBElective; Integrated Security=True";
            SqlConnection con = new SqlConnection(myConnection);
            con.Open();

            //Command object
            int id = Convert.ToInt32(Session["id"]);
            id = id + 1;
            SqlCommand cmd = new SqlCommand("SELECT * FROM [tbl_Student] WHERE [ID]=@Id", con);
            cmd.Parameters.AddWithValue("@Id", id);
            Session["id"] = id;

            //Data Adapter
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            txtId.Text = dt.Rows[0]["Id"].ToString();
            txtRollno.Text = dt.Rows[0]["Rollno"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            con.Close();

        }
    }
}