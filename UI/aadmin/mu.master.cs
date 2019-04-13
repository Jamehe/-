using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;
public partial class mu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["login"]!=null)
        {
            HttpCookie MyCookie = Request.Cookies["login"];
            if (Convert.ToInt32(MyCookie.Values["_role"]) == 1)
            {
                Label1.Text = "欢迎您　" + Request.Cookies["login"].Values["_name"] ;
                Label2.Text = "角色：超级管理员";
            }
            else
            {
                Label1.Text = "欢迎您　" + Request.Cookies["login"].Values["_name"];
                Label2.Text = "角色：管理员";
            }
            
        }
        else
        {
            Response.Write("<script>alert('对不起请先登入'),location.href='adminlogin.aspx'</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["login"];

        TimeSpan ts = new TimeSpan(0, 0, 0, 0);

        DateTime dt = DateTime.Now;

        cookie.Expires = dt.Add(ts);

        Response.AppendCookie(cookie);
        Response.Redirect("adminlogin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect ("../index.aspx");
    }
}
