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

public partial class admin_flashadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ImageButton1.Visible = false;
            
        }

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 5;
        i += 1;
        string index = i.ToString();
        XmlDocument xmldoc = new XmlDocument();

        xmldoc.Load(Server.MapPath("~/" + "main.xml"));

        XmlNode root = xmldoc.SelectSingleNode("tss");

        XmlElement xe1 = xmldoc.CreateElement("clip");

        xe1.SetAttribute("index", index);
        xe1.SetAttribute("src", TextBox1.Text);
        xe1.SetAttribute("href", TextBox4.Text);
        xe1.SetAttribute("target", TextBox3.Text);
        

        root.PrependChild(xe1);


        xmldoc.Save(Server.MapPath("~/" + "main.xml"));



        msg("添加新的flash成功了");
        Response.Redirect("flashselect.aspx");
        return;
    }
    public void msg(string msg)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "show", "<script>alert('" + msg + "')</script>");
    }
}
