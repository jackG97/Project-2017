using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminarea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString; 

        SqlConnection linkToDB = new SqlConnection(connstring);
        linkToDB.Open();
        string sqlText = @"SELECT [Right] FROM [Rights] WHERE [UserName] = @UserName";
        SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
        SqlParameter paramValue2 = new SqlParameter("@UserName", SqlDbType.VarChar);
        paramValue2.Value = Context.User.Identity.Name;
        dataAction.Parameters.Add(paramValue2);
        var who = dataAction.ExecuteScalar();


        string a = "Admin";
        if (a != who.ToString())
        {


            Response.Redirect("~/reviews");
        }


    }
}