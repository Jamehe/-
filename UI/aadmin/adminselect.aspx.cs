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
using Model;
using BLL;
public partial class admin_adminselect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AspNetPager1.PageSize = 5;
        if (!IsPostBack)
        {
            string name=Request.QueryString["_name"];
            BLLadmin blladmin = new BLLadmin();
            int result = blladmin.s_admin(name);
            AspNetPager1.RecordCount = result;
            binddata();
        }

    }


    public void binddata()
    {
        string name=Request.QueryString["_name"];
        BLLadmin blladmin = new BLLadmin();
        DataSet ds = blladmin.S_admin(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "info",name);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminList.aspx");
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        binddata();
    }
}
