using System;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Serialization;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("main.aspx");

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string check = TextBox1.Text.Trim();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");

        string query = "Select * from reg where uname='" + TextBox1.Text.Trim() + "'and pwd='" + TextBox2.Text.Trim() + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query, conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Session["user"] = check;
            Response.Redirect("LOM.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid username and password')</script>");
        }
    }
}   