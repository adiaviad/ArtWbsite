using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Update : System.Web.UI.Page
{
    protected string Password = "";
    protected string checkPassword = "";
    protected string FirstName = "";
    protected string LastName = "";
    protected string Email = "";
    protected string Gender = "";
    protected string BirthYear = "";
    protected string BirthMonth = "";
    protected string BirthDay = "";
    protected string userName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        Users u = new Users();
        if (!IsPostBack)
        {
            ds = u.Update(Session["user"].ToString());
            Password = Session["user"].ToString();
            userName = ds.Tables[0].Rows[0]["Userame"].ToString();
            FirstName = ds.Tables[0].Rows[0]["FName"].ToString();
            LastName = ds.Tables[0].Rows[0]["LName"].ToString();
            Password = ds.Tables[0].Rows[0]["Pass"].ToString();
            checkPassword = ds.Tables[0].Rows[0]["CheckPass"].ToString();
            Email = ds.Tables[0].Rows[0]["Email"].ToString();
            BirthYear = ds.Tables[0].Rows[0]["Byear"].ToString();
            BirthMonth = ds.Tables[0].Rows[0]["Bmounth"].ToString();
            BirthDay = ds.Tables[0].Rows[0]["Bday"].ToString();
            Gender = ds.Tables[0].Rows[0]["Gender"].ToString();
        }
        else
        {
            bool Updated = u.UpdateUserDetails(
            Request.Form["FName"],
            Request.Form["LName"],
            Request.Form["pass"],
            Request.Form["CheckPass"],
            Request.Form["Email"],
            Request.Form["Byear"],
            Request.Form["Bmounth"],
            Request.Form["Bday"],
            Request.Form["gender"],
            Session["user"].ToString());
            if (Updated)
            {
                Response.Write("<script>alert('Detail Updated Seccesspul!');</script>");
                Server.Transfer("HomePage.aspx");
            }

            else
            {
                Response.Write("<script>alert('Detail weren't Updated!');</script>");
            }
        }
    }
} 
    