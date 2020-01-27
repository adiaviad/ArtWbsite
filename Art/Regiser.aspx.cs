using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regiser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Users u = new Users();
        if (IsPostBack)
        {
            bool UN = u.Register(Request.Form["Username"], Request.Form["FName"],
              Request.Form["LName"], Request.Form["pass"],
              Request.Form["Email"],
              Request.Form["Byear"], Request.Form["Bmonth"],
              Request.Form["Bday"], Request.Form["Gender"]);
            if (UN)
            {
                Session["Users"] = Request.Form["Username"];
                Response.Write("<script>alert('register succesful');</script>");
                Server.Transfer("Home.aspx");
            }
            else
            {
                Response.Write("< script > alert('name was taken');</ script > ");
            }
        }
    }
}