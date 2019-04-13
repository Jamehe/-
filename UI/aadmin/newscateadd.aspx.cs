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


public partial class admin_add : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {

        Model.Newscate mn = new Model.Newscate();
        BLL.Newscate bn = new BLL.Newscate();
        mn.Catename = name.Text;
        int result = bn.insert(mn);
        if (result > 0)
        {
            Response.Write("<script>alert('添加成功'),location.href='newscate.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败'),location.href='newscate.aspx'</script>");
        }
    }
}

