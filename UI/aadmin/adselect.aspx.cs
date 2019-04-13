using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

using System.Xml;
using System.IO;

public partial class admin_flashselect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            loaddata();

         }
        
        
    }
    public void loaddata()
    {
        XmlDataDocument xml = new XmlDataDocument();
        xml.Load(Server.MapPath("~/" + "ad.xml"));  

        XmlNodeList nodes = xml.SelectSingleNode("ttt").ChildNodes;

        DataTable dt = new DataTable();

        dt.Columns.Add("index", typeof(string));
        dt.Columns.Add("src", typeof(string));
        dt.Columns.Add("href", typeof(string));
        dt.Columns.Add("target", typeof(string));

        foreach (XmlNode node in nodes)
        {
            DataRow row = dt.NewRow();

            row["index"] = node.Attributes["index"].Value;
            row["src"] = node.Attributes["src"].Value;
            row["href"] = node.Attributes["href"].Value;
            row["target"] = node.Attributes["target"].Value;
           


            dt.Rows.Add(row);
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1;
            e.Row.Cells[0].Text = id.ToString();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Delete")
        {
            string index = (e.CommandArgument).ToString();
            try
            {

                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(Server.MapPath("~/" + "ad.xml"));
                XmlNode root = xmlDoc.SelectSingleNode("ttt");
                XmlNodeList xnl = xmlDoc.SelectSingleNode("ttt").ChildNodes;

                for (int i = 0; i < xnl.Count; i++)
                {
                    XmlElement xe = (XmlElement)xnl.Item(i);


                    if (xe.GetAttribute("index") == index)
                    {
                        string src = xe.GetAttribute("src");

                        if (File.Exists(Server.MapPath("~/" + src)))
                        {


                            File.Delete(Server.MapPath("~/" + src));
                        }

                        root.RemoveChild(xe);



                    }
                }
                xmlDoc.Save(Server.MapPath("~/" + "ad.xml"));


                loaddata();
                msg("删除成功");
                return;


            }

            catch (Exception err)
            {
                Response.Write(err);
            }
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    public void msg(string msg)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "show", "<script>alert('" + msg + "')</script>");
    }

}
