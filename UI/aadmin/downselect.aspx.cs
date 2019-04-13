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
public partial class downselect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string name = Request.QueryString["title"].ToString();
            string str = "select count(*) from downlist where _title like '%"+name+"%' ";
            int result = Convert.ToInt32(Common.DB.ExecuteScalar(str));
            AspNetPager1.RecordCount = result;
            AspNetPager1.PageSize = 5;
            info();
        }
    }
    public void info()
    {
        string name = Request.QueryString["title"].ToString();
        string str = "select * from downlist  where _title like '%" + name + "%'";
        DataSet ds = Common.DB.PagedataSet(str, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "downlist");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        info();
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
        Model.downlist md = new Model.downlist();
        BLL.downlist bd = new BLL.downlist();
        int result = 0;
        string str = "";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            if (cb.Checked)
            {
                md.id = Convert.ToInt32(GridView1.DataKeys[i].Value);

                SqlDataReader sdr = bd.datareader(md);
                if (sdr.Read())
                {
                    str = sdr["_uploadurl"].ToString();

                }
                sdr.Close();
                if (File.Exists(Server.MapPath("~/") + str))
                {
                    File.Delete(Server.MapPath("~/") + str);
                }

                result = bd._delete(md);
            }

        }

        if (result > 0)
        {
            Response.Write("<script>alert('删除成功'),location.href='downloadlist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败'),location.href='downloadlist.aspx'</script>");
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.style.color='red';");
            e.Row.Attributes.Add("onmouseout", "this.style.color='#000';");
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("downselect.aspx?title=" + search.Text + " ");
    }
}
