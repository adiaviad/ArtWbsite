using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOgin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Users u = new Users();
            string x = Request.Form["pass"];
            string y = Request.Form["username"];
            string UserName = u.LogIn(x, y);
            if (UserName != "")
            {
                Session["Users"] = Request.Form["username"];
                Response.Write("<script>alert('greetings');</script>");
                Server.Transfer("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('username or password is incorrect');</script>");
            }
        }
    }
}