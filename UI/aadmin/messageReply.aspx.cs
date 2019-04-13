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
using BLL;
using Model;
public partial class admin_messageReply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        int id = Convert.ToInt32(Request.QueryString["_id"]);
        message mes = new message();
        mes.id = id;

        BLLmessage bllmessage = new BLLmessage();
        SqlDataReader sdr = bllmessage.readmessage(mes);
        if (sdr.Read())
        {
            Label1.Text = sdr["_title"].ToString();
            TextBox1.Text = sdr["_content"].ToString();
            Label3.Text = sdr["_posttime"].ToString();
        }
        sdr.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        message mes = new message();
        mes.id = Convert.ToInt32(Request.QueryString["_id"]);
        mes.reply = TextBox2.Text;
        mes.state = 1;
        BLLmessage bllmessage = new BLLmessage();
        int result = bllmessage.reply(mes);
        if (result > 0)
        {
            Response.Write("<script>alert('回复留言成功');location.href='../message.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('回复留言失败');</script>");
        }
    }
}
