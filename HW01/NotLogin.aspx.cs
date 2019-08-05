using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW01
{
    public partial class NotLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            form1.Attributes.Add("style", "background-image: url('images/notlogin.jpg');");
        }
    }
}