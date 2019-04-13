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

using System.IO;
using System.Xml;

public partial class admin_flashupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ImageButton1.Visible = false;
            update();
        }
    }
    public void update()
    {
        int index = Convert.ToInt32(Request.QueryString["index"]);
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(Server.MapPath("~/" + "main.xml"));
        XmlNode root = xmlDoc.SelectSingleNode("tss");
        XmlNodeList xnl = xmlDoc.SelectSingleNode("tss").ChildNodes;
        for (int i = 0; i < xnl.Count; i++)
        {
            XmlElement xe = (XmlElement)xnl.Item(i);
            if (Convert.ToInt32( xe.GetAttribute("index")) == index)
            {
                Label2.Text = xe.GetAttribute("index");
                TextBox1.Text = xe.GetAttribute("src");
                TextBox4.Text = xe.GetAttribute("href");
                TextBox5.Text = xe.GetAttribute("target");


            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int index = Convert.ToInt32(Label2.Text);
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(Server.MapPath("~/" + "main.xml"));
        XmlNode root = xmlDoc.SelectSingleNode("tss");
        XmlNodeList xnl = xmlDoc.SelectSingleNode("tss").ChildNodes;
        for (int i = 0; i < xnl.Count; i++)
        {
            XmlElement xe = (XmlElement)xnl.Item(i);
            if (Convert.ToInt32(xe.GetAttribute("index")) == index)
            {
                xe.SetAttribute("src", TextBox1.Text);
                xe.SetAttribute("href",TextBox4.Text);
                xe.SetAttribute("target", TextBox5.Text);
            }

        }
     
        //root.PrependChild(xe);

        xmlDoc.Save(Server.MapPath("~/" + "main.xml"));



        msg("更新flash成功了");
        return;
        Response.Redirect("flashselect.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
    }
    public void msg(string msg)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "show", "<script>alert('" + msg + "')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == false)
        {
            msg("您还没有选择图片！");
            return;
        }
        else
        {



            string filepath = FileUpload1.PostedFile.FileName;

            string fileEx = filepath.Substring(filepath.LastIndexOf(".") + 1);

            if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif" || fileEx == "jpeg" || fileEx == "png")
            {

                string newfilename = "index_" + System.DateTime.Now.ToString("yyyyMMddhhmmssfff") + "." + fileEx;

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/flash/" + newfilename));

                string savepath = "flash/" + newfilename;
                ImageButton1.ImageUrl = "~/flash/" + newfilename;

                TextBox1.Text = savepath;
                ImageButton1.Visible = true;

            }
            else
            {
                msg("你上传文件格式不正确！！！");
                return;

            }
        }
    }
}
