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


public partial class admin_aa : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.Helpcate mh = new Model.Helpcate();
        BLL.Helpcate bn = new BLL.Helpcate();
        mh.Catename = TextBox1.Text;
        int result = bn.insert(mh);
        if (result > 0)
        {
            Response.Write("<script>alert('添加成功'),location.href='helpcatelist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败'),location.href='helpcatelist.aspx'</script>");
        }
    }
}