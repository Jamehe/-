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
using System.Data.SqlClient;
using System.IO;
public partial class admin_downloadupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            _load();
        }
    }
    protected void _load()
    {
        Model.downlist md  = new Model.downlist();
        md.id = Convert.ToInt32(Request.QueryString["uid"]);
        BLL.downlist bd = new BLL.downlist();
        SqlDataReader sdr = bd.datareader(md);
        if (sdr.Read())
        {
            name.Text= sdr["_title"].ToString();
            size.Text = sdr["_size"].ToString();
            fileurl.Text = sdr["_uploadurl"].ToString();
            Label1.Text = sdr["_uploadurl"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (File.Exists(Server.MapPath("~/") + Label1.Text))
        {
            File.Delete(Server.MapPath("~/")+Label1.Text);
        }
        string filepath = FileUpload1.PostedFile.FileName;
        string type = filepath.Substring(filepath.LastIndexOf(".")+1);
        if (type == "doc" || type == "txt" || type == "xls" || type == "rar")
        {
            if (FileUpload1.PostedFile.ContentLength < 102400 * 1024)
            {
                string _size;
                string newfilename = "index_" + System.DateTime.Now.ToString("yyyyMMddhhmmssfff");
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/download/" + newfilename));
                fileurl.Text = "download/" + newfilename;
                _size = (FileUpload1.PostedFile.ContentLength / 1024.0).ToString() + "KB";
                size.Text = (FileUpload1.PostedFile.ContentLength / 1024).ToString() + ".";
                _size = _size.Substring(_size.LastIndexOf(".") + 1, 3);
                
                size.Text = size.Text + _size + "KB";
                Label1.Text = "上传成功";

            }
            else
            {
                msg("上传文件太大了！！！");
                return;
            }
        }
        else 
        {
            msg("上传文件的格式不对！！!");
        }
    }
    public void msg(string msg)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "show", "<script>alert(" + msg + ")</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Model.downlist md = new Model.downlist();
        BLL.downlist bd = new BLL.downlist();
        md.id = Convert.ToInt32(Request.QueryString["uid"]);
        md.title = name.Text;
        md.size = size.Text;
        md.click = 0;
        md.uploadurl = fileurl.Text;
        if (bd.update(md) > 0)
        {
            Response.Write("<script>alert('更新成功'),location.href='downloadlist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败'),location.href='downloadlist.aspx'</script>");
        }
        name.Text = "";
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        name.Text = "";
        size.Text = "";
        Label1.Text = "请重新上传文件";
        if (File.Exists(Server.MapPath("~/") + fileurl.Text))
        {
            File.Delete(Server.MapPath("~/") + fileurl.Text);
        }
        size.Text = "";
    }
}
