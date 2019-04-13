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
public partial class admin_adminList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        AspNetPager1.PageSize = 4;
        if (!IsPostBack)
        {
            BLLadmin blladmin = new BLLadmin();
            int result = blladmin.admin();

            AspNetPager1.RecordCount = result;

            binddata();
        }


    }
    public void binddata()
    {
        BLLadmin blladmin = new BLLadmin();
        DataSet ds = blladmin.adminlist(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "info");

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (Convert.ToInt32(Request.Cookies["login"].Values["_role"]) == 1)
        {

            if (e.CommandName == "Delete")
            {
                admin admin1 = new admin();
                admin1.id = Convert.ToInt32(e.CommandArgument);
                BLLadmin blladmin1 = new BLLadmin();
                int result = blladmin1.deleteAdmin(admin1);
                if (result > 0)
                {
                    Common.MessageAlert.AlertLocation(Page, "alert('删除成功');location.href='adminList.aspx'");

                }
                else
                {
                    Common.MessageAlert.Alert(Page, "删除失败");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('对不起您没有这个权限');</script>");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_search.Text == "")
        {
            Common.MessageAlert.Alert(Page,"请输入要搜索的管理员");
        }
        else
        {
            Response.Redirect("adminselect.aspx?_name=" + txt_search.Text);
        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        binddata();
    }
}
