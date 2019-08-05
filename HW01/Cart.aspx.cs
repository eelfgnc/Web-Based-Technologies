using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing.Imaging;
using System.Data;
using System.Text;
using System.Web.UI.HtmlControls;

namespace HW01
{
    public partial class Cart : System.Web.UI.Page
    {
        Book book;
        public List<Book> BooksList;
        public ArrayList SelectedBookIndices;

        protected void Page_Load(object sender, EventArgs e)
        {
            BooksList = (List<Book>)Session["BooksList"];
            SelectedBookIndices = (ArrayList)Session["SelectedBookIndices"];
            lblinf.Visible = false;
            if (SelectedBookIndices.Count != 0)
            {
                foreach (string bookId in SelectedBookIndices)
                {

                    HtmlTable table1 = new HtmlTable();
                    HtmlTableRow row = new HtmlTableRow();
                    HtmlTableCell cell_img = new HtmlTableCell();
                    HtmlTableCell cell_info = new HtmlTableCell();
                    HtmlTableCell cell_space = new HtmlTableCell();

                    HtmlGenericControl div = new HtmlGenericControl("div");
                    div.ID = "test";

                    book = BooksList.First(b => b.BookID.ToString() == bookId);

                    Image img = new Image();
                    img.ImageUrl = book.ImageUrl;
                    img.Height = 350;
                    img.Width = 250;
                    cell_img.Controls.Add(img);
                    row.Cells.Add(cell_img);

                    cell_space.Height = "385px";
                    cell_space.Width = "40px"; 
                    row.Cells.Add(cell_space);

                    Label author = new Label();
                    author.Text = "Author: " + book.Author;
                    author.Font.Size = 25;
                    cell_info.Controls.Add(author);
                    cell_info.Controls.Add(new LiteralControl("<br />")); 

                    Label publisher = new Label();
                    publisher.Text = "Publisher: " + book.Publisher;
                    publisher.Font.Size = 25;
                    cell_info.Controls.Add(publisher);
                    cell_info.Controls.Add(new LiteralControl("<br />"));


                    Label pages = new Label();
                    pages.Text = "Page Number: " + book.PageNumber.ToString();
                    pages.Font.Size = 25;
                    cell_info.Controls.Add(pages);
                    cell_info.Controls.Add(new LiteralControl("<br />"));

                    row.Cells.Add(cell_info);
                    table1.Rows.Add(row);
                    div.Controls.Add(table1);
                    
                    form1.Controls.Add(div);
                   
                }
            }
            else if (SelectedBookIndices.Count == 0)
            {
                lblinf.Text = "Your shopping cart is empty.";
                lblinf.Visible = true;
            }
        }

        protected void btn_returntomain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}