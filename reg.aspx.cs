using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Drawing;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");
        string query = "insert into reg Values(@uname,@pwd,@cpwd,@email)";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        cmd.Parameters.AddWithValue("@cpwd", TextBox3.Text);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        conn.Open();
        Response.Write("<script>alert('Registration Successful')</script>");
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("main.aspx");
    }
}