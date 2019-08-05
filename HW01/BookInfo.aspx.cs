using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace HW01
{
    public partial class BookInfo : System.Web.UI.Page
    {
        Book book = null;
        string bookId = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            pnlwarning.Visible = false;
            lbltocart.Visible = false;
            lbltolist.Visible = false;

            if (Request.QueryString["id"] != null)
            {
                bookId = (string)Request.QueryString["id"];
            }
            else
            {
                lblwarning.Text = "Please, specify a Book ID !";
                table.Visible = false;
                pnlwarning.Visible = true;
            }


            if (!string.IsNullOrEmpty(bookId))
            {
                List<Book> booksList = (List<Book>)Session["booksList"];
                try
                {
                    book = booksList.First(b => b.BookID.ToString() == bookId);
                }
                catch (Exception)
                {
                    lblwarning.Text = "Invalid Book ID !";
                    table.Visible = false;
                    pnlwarning.Visible = true;
                }

                if (book != null)
                {
                    imgbook.ImageUrl = book.ImageUrl;
                    lbltitle.Text = book.Title;
                    lblauthor.Text = book.Author;
                    lblpublisher.Text = book.Publisher;
                    lblpages.Text = book.PageNumber.ToString();
                }
            }
        }

        protected void btnshowcart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void btnaddcart_Click(object sender, EventArgs e)
        {
            ArrayList SelectedBookIndices = (ArrayList)Session["SelectedBookIndices"];

            if (SelectedBookIndices.Count != 0 && SelectedBookIndices.Contains(bookId))
            {
                lbltolist.Visible = true;
            }
            else
            {
                SelectedBookIndices.Add(bookId);
                Session["SelectedBookIndices"] = SelectedBookIndices;
                lbltocart.Visible = true;
            }
        }

        protected void btnreturntomain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}