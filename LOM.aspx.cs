using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         /* if (Session["user"] == null)
           {
               Response.Redirect("main.aspx");

           }*/
           
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Session["user"] = null;
        Response.Redirect("main.aspx");

    }
}