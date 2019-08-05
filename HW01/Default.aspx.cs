using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace HW01
{
    public partial class Default : System.Web.UI.Page
    {
        List<Book> BooksList = new List<Book>() {
            new Book(1, "ASP.NET 3.5 Unleashed", "Stephen Walther", "Sams", 1920,
                "images/image1.jpg"),
            new Book(2, "ASP.NET Evolution", "Dan Kent", "Sams", 384,
                "images/image2.jpg"),
            new Book(3, "Mastering Web Development with Microsoft Visual Studio 2015", "John Paul Mueller", "Sams", 848,
                "images/image3.jpg"),
            new Book(4, "Beginning ASP.NET 2.0", "Chris Hart, John Kau fman, Dave Su ssman, and Chris Ullman", "Wrox", 792,
                "images/image4.jpg"),
            new Book(5, "Beginning ASP.NET in C# 2008: From Novice to Professional, Second Edition", "Matthew MacDonald", "Apress", 954,
                "images/image5.jpg")
        };
        ArrayList SelectedBookIndices = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            form1.Attributes.Add("style", "background-image: url('images/default.jpg');");
            if (Request.Cookies["userCookie"] != null)
            {
                AddBooks();
                string firstName = Request.Cookies["userCookie"]["firstName"];
                string lastName = Request.Cookies["userCookie"]["lastName"];

                lblwelcome.Text += firstName + " " + lastName;
            }
            else
            {
                Response.Redirect("NotLogin.aspx");
            }
        }

        protected void btncart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["userCookie"].Expires = DateTime.Now.AddDays(-1);
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        public void AddBooks()
        {
            Session["BooksList"] = BooksList;
            if ((ArrayList)Session["SelectedBookIndices"] == null)
            {
                Session["SelectedBookIndices"] = SelectedBookIndices;
            }
        }
    }
}