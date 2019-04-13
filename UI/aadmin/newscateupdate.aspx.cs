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
public partial class admin_aa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Model.Newscate mn = new Model.Newscate();
            mn.ID = Convert.ToInt32(Request.QueryString["uid"]);
            BLL.Newscate bn = new BLL.Newscate();
            SqlDataReader sdr = bn.sqldatareader(mn);
            if (sdr.Read())
            {
                Label1.Text = sdr["_cateid"].ToString();
                name.Text = sdr["_catename"].ToString();
            }
            sdr.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.Newscate mn = new Model.Newscate();
        mn.Catename = name.Text;
        mn.ID = Convert.ToInt32(Label1.Text);
        BLL.Newscate bn = new BLL.Newscate();
        int result = bn.update(mn);
        if (result > 0)
        {
            Response.Write("<script>alert('更新成功'),location.href='newscate.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败'),location.href='newscate.aspx'</script>");
        }
    }
}
