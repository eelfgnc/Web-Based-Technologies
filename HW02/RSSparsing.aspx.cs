using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml; //XML document
using System.Collections; //Array list
using Serilog; //Nuget logger package
using System.Data; //Data table
using System.Drawing;

namespace WebApplication1
{
    public partial class RSSparsing : System.Web.UI.Page
    {
        XmlDocument xml_document = new XmlDocument();
        string URL = "http://ajans.dha.com.tr/dha_public_rss.php.";
        ArrayList news_list = new ArrayList();
        string log_file = "C:/Users/elfgnc/Desktop/WebApplication1/WebApplication1/Log.txt";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                XML_Document();
                Parse_RSS_Nodes();
                Create_Data_Table();
            }
            catch(Exception ex)
            {
                Log_Error_Message(ex.Message);
            }
        }
        public void Log_Error_Message(string mssage)
        {
            Log.Logger = new LoggerConfiguration()
                        .WriteTo.File(log_file)
                        .CreateLogger();

            Log.Information(mssage);
            Log.CloseAndFlush();
        }
        public void XML_Document()
        {
            try
            {
                xml_document.Load(URL);
            }
            catch(Exception ex)
            {
                Log_Error_Message(ex.Message);
            }
        }
        public void Parse_RSS_Nodes()
        {
            int id = 1;
            XmlNodeList node = xml_document.SelectNodes("rss/channel/item");
            foreach(XmlNode item in node)
            {
                XmlNode sub_node = item.SelectSingleNode("title");

                string title = sub_node != null ? sub_node.InnerText : "";

                sub_node = item.SelectSingleNode("description");
                string description = sub_node != null ? sub_node.InnerText : "";

                sub_node = item.SelectSingleNode("category");
                string category = sub_node != null ? sub_node.InnerText : "";

                sub_node = item.SelectSingleNode("author");
                string author = sub_node != null ? sub_node.InnerText : "";

                sub_node = item.SelectSingleNode("pubDate");
                string pubDate = sub_node != null ? sub_node.InnerText : "";

                sub_node = item.SelectSingleNode("image");
                string imageUrl = sub_node != null ? sub_node.InnerText : "";


                news_list.Add(
                    new News(id, title, description, category, author, pubDate, imageUrl)
                    );
                id++;
            }
        }
        public void Create_Data_Table()
        {
            DataTable tabel = new DataTable();
            tabel.Columns.Add("ID");
            tabel.Columns.Add("Title");
            tabel.Columns.Add("Category");

            foreach (News item in news_list)
            {
                tabel.Rows.Add(item.NewsID, item.Title, item.Category);
                
            }
            gridv_news.DataSource = tabel;
            gridv_news.DataBind();
            for(int i=0;i<gridv_news.Rows.Count;i++)
            {
                if(gridv_news.Rows[i].Cells[2].Text == "DHA-Genel")
                {
                    gridv_news.Rows[i].BackColor = Color.Aqua;
                }
                else if(gridv_news.Rows[i].Cells[2].Text == "DHA-Eğitim")
                {
                    gridv_news.Rows[i].BackColor = Color.Honeydew;
                }
                else if(gridv_news.Rows[i].Cells[2].Text == "DHA-Sağlık")
                {
                    gridv_news.Rows[i].BackColor = Color.Plum;
                }
                else if (gridv_news.Rows[i].Cells[2].Text == "	DHA-Kültür Sanat")
                {
                    gridv_news.Rows[i].BackColor = Color.Gray;
                }
                else if (gridv_news.Rows[i].Cells[2].Text == "DHA-Ekonomi")
                {
                    gridv_news.Rows[i].BackColor = Color.Ivory;
                }
                else
                {
                    gridv_news.Rows[i].BackColor = Color.MistyRose;
                }
            }
        }
    }
}