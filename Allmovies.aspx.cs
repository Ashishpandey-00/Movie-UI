using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Allmovies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (Session["user"] == null)
        {
            Response.Redirect("LOM.aspx");
        }*/

        /*------------------------To get the value from URL------------------------------------------------*/
        if (!IsPostBack)
        {
            if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != string.Empty)
                TextBox2.Text = Request.QueryString["Id"];
        }

        /*--------------------------------------------- To find the average rate of individual movie --------------------------------------------------------------------------*/
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        string quer = "select AVG(rate) from mrc where movieid='" + TextBox2.Text + "'";
        SqlCommand c = new SqlCommand(quer, conn);
        SqlDataReader da = c.ExecuteReader();
        if (da.Read())
        {
            Label1.Text = da.GetValue(0).ToString();
        }
        conn.Close();

        /*--------------------------------------------------To get the count of comment---------------------------------------------------------------------------*/
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        string que = "select count(comment) from mrc where movieid='" + TextBox2.Text + "'";
        SqlCommand cm = new SqlCommand(que, con);
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr.GetValue(0).ToString();
        }

        /*-------------------------------------------------MOVIES-IMAGES-NAMES-ABOUT ------------------------------------------------*/
        SqlConnection cnn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");
        cnn.Open();
        string qe = "select img,moviename,about from mtable where movieid='" + TextBox2.Text + "'";
        SqlCommand cd = new SqlCommand(qe, cnn);
        SqlDataReader rd = cd.ExecuteReader();
        if (rd.Read())
        {
            Image1.ImageUrl = rd.GetValue(0).ToString();
            Label3.Text = rd.GetValue(1).ToString();
            Label4.Text = rd.GetValue(2).ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 1;
        string r = string.Empty;
        if (RadioButton1.Checked)
        {
            r = "1";
        }
        else if (RadioButton2.Checked)
        {
            r = "2";
        }
        else if (RadioButton3.Checked)
        {
            r = "3";
        }
        else if (RadioButton4.Checked)
        {
            r = "4";
        }
        else if (RadioButton5.Checked)
        {
            r = "5";
        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Ashish Pandey\Documents\a2.mdf;Integrated Security=True;Connect Timeout=30");
        string query = "insert into mrc Values(@rate,@comment,@movieid)";
        SqlCommand cmd = new SqlCommand(query, conn);

        cmd.Parameters.AddWithValue("@rate", r);
        cmd.Parameters.AddWithValue("@comment", TextBox1.Text);
        cmd.Parameters.AddWithValue("@movieid", i);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Added Successful')</script>");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("LOM.aspx");
    }
}