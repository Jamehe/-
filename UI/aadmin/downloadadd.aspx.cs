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
using Common;
public partial class admin_downloadadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Model.downlist md = new Model.downlist();
        BLL.downlist bd = new BLL.downlist();
        md.title = name.Text;
        md.size = size.Text;
        md.click = 0;
        md.uploadurl = Label1.Text;
        if (bd.downloadadd(md) > 0)
        {
            msg("添加成功");
        }
        else
        {
            msg("添加失败");
        }
        name.Text = "";
        size.Text = "";
        Label3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string filepath = FileUpload1.PostedFile.FileName;
        
        string type=filepath.Substring(filepath.LastIndexOf(".")+1);
        if (type == "doc" || type == "txt" || type == "xls"||type=="rar")
        {
            if (FileUpload1.PostedFile.ContentLength < 102400 * 1024)
            {
                if (FileUpload1.PostedFile.ContentLength > 0)
                {
                    string _size;
                    string newfilename = "index_" + System.DateTime.Now.ToString("yyyyMMddhhmmssfff") + "." + type;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/download/" + newfilename));
                    string savepath = "download/" + newfilename;
                    Label1.Text = savepath;
                    size.Visible = true;

                    //size.Text = (FileUpload1.PostedFile.ContentLength / 1024).ToString() + ".";

                    //_size = (FileUpload1.PostedFile.ContentLength / 1024.0).ToString();

                    //_size = _size.Substring(_size.LastIndexOf(".") + 1, 2);


                    size.Text = Math.Round(Convert.ToDouble(FileUpload1.PostedFile.ContentLength / 1024), 2) + "KB";
                   // size.Text = size.Text + _size + "KB";


                    Label3.Text = "上传文件成功";
                }
                else
                {
                    msg("你上传文件为空！！！");
                    return;
                }
            }
            else
            {
                msg("你上传文件太大了！！！");
                return;
            }
        }
        else
        {
            msg("您上传的格式不正确");
        }

    }
    public void msg(string msg)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "show", "<script>alert('" + msg + "')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        name.Text = "";
        size.Text = "";
        Label3.Text = "请重新上传文件";
        if (File.Exists(Server.MapPath("~/") + Label1.Text))
        {
            File.Delete(Server.MapPath("~/") + Label1.Text);
        }
        size.Text = "";
    }
    public static string substr(string str, int num)
    {
        string strs;
        if (str.Length > num)
        {
            strs = str.Substring(0, num);


        }
        else
        {
            strs = str;

        }
        return strs;
    }
}
