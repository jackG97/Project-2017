using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editcomment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;


        SqlConnection linkToDB = new SqlConnection(connstring);
        linkToDB.Open();
        string sqlText = @"SELECT [Comment] FROM [Comments] WHERE [id] = @id";
        SqlCommand dataAction = new SqlCommand(sqlText, linkToDB);
        SqlParameter paramValue2 = new SqlParameter("@id", SqlDbType.VarChar);
        paramValue2.Value = Request.QueryString["id"];
        dataAction.Parameters.Add(paramValue2);
        var who = dataAction.ExecuteScalar();


        Label1.Text = who.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var ReviewUpdate = new SqlDataSource();
        ReviewUpdate.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        ReviewUpdate.UpdateCommandType = SqlDataSourceCommandType.Text;
        ReviewUpdate.UpdateCommand = "UPDATE [Comments] SET [Comment] = @Comment WHERE (id = @Id)";
        ReviewUpdate.UpdateParameters.Add("Comment", TextBox1.Text.ToString());
        // ReviewUpdate.UpdateParameters.Add("UserName", textBox4.Text.ToString());
        ReviewUpdate.UpdateParameters.Add("Id", Request.QueryString["id"]);

        ReviewUpdate.Update();

        Response.Redirect("User_Profile");

    }
}