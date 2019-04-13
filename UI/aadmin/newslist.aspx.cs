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


public partial class admin_newslist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string str = "select count(*) from news";
            int result = Convert.ToInt32(Common.DB.ExecuteScalar(str));
            AspNetPager1.RecordCount = result;
            AspNetPager1.PageSize = 5;
            info();
        }
    }
    public void info()
    {

        string str = "select * from news,newscate where  news._cateid=newscate._cateid order by _top desc ,_id desc";
        DataSet ds = Common.DB.PagedataSet(str, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "helpcate");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gv in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)gv.FindControl("CheckBox1");
            cb.Checked = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gv in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)gv.FindControl("CheckBox1");
            if (cb.Checked)
            {
                cb.Checked = false;
            }
            else
            {
                cb.Checked = true;
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Model.News mn = new Model.News();
        BLL.News bn = new BLL.News();
        int result = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb.Checked)
            {
                mn.ID = Convert.ToInt32(GridView1.DataKeys[i].Value);
                Response.Write(mn.ID);
                result = bn._delete(mn);
            }
        }
        
        if (result > 0)
        {
            Response.Write("<script>alert('删除成功'),location.href='newslist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败'),location.href='newslist.aspx'</script>");
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        Response.Redirect("newsselect.aspx?biaoti="+select.Text+"");
    }
    protected void AspNetPager1_PageChanging1(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        info();
    }
}
