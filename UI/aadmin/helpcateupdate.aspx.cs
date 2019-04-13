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
            up();
        }
    }
    protected void up()
    {
        Model.Helpcate mh = new Model.Helpcate();
        mh.ID = Convert.ToInt32(Request.QueryString["uid"]);
        BLL.Helpcate bh = new BLL.Helpcate();


        SqlDataReader dr = bh.sqldatareader(mh);
        if (dr.Read())
        {
            Label1.Text = dr["_cateid"].ToString();
            name.Text = dr["_catename"].ToString();
        }
        dr.Close();   
    }
    protected void 提交_Click(object sender, EventArgs e)
    {
        Model.Helpcate mh = new Model.Helpcate();
        mh.ID = Convert.ToInt32(Request.QueryString["uid"]);
        mh.Catename = name.Text; 
        BLL.Helpcate bh = new BLL.Helpcate();
        int result = bh.update(mh);
        if (result > 0)
        {
            Response.Write("<script>alert('更新成功'),location.href='helpcatelist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败'),location.href='helpcatelist.aspx'</script>");
        }
    }
}

