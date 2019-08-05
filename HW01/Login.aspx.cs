using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW01
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            form1.Attributes.Add("style", "background-image: url('images/login.jpg');");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Cookies["userCookie"]["firstName"] = txtfirstname.Text;
            Response.Cookies["userCookie"]["lastName"] = txtlastname.Text;
            Response.Cookies["userCookie"].Expires = DateTime.Now.AddMonths(1);
            Response.Redirect("Default.aspx");
        }
    }
}