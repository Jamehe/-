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
public partial class admin_helpsearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AspNetPager1.PageSize = 5;
        if (!IsPostBack)
        {
            int cateid = Convert.ToInt32(Request.QueryString["cateid"]);
            Help help = new Help();
            help.Cateid = cateid;

            BLLhelp bll = new BLLhelp();
            int result = bll.searchResult(help);
            if (result>0)
            {
                  AspNetPager1.RecordCount = result;
                  bindInfo();
                  Label1.Visible = false;

            }
            else
            {
                Label1.Text = "对不起，没有相关信息";
                Label1.Visible = true;
                AspNetPager1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
            }
          

        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bindInfo();
    }

    public void bindInfo()
    {
        int cateid = Convert.ToInt32(Request.QueryString["cateid"]);
        BLLhelp bllhelp = new BLLhelp();
        DataSet ds = bllhelp.ds_search(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "info", cateid);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    public string subStr(string sString, int nleng)
    {
        if (sString.Length <= nleng)
        {
            return sString;
        }
        else
        {
            string sNewstr = sString.Substring(0, nleng);
            sNewstr = sNewstr + "...";
            return sNewstr;
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow  gv in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)gv.FindControl("CheckBox1");
            cb.Checked = true;
            
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        int id;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Help help = new Help();
            help.ID = id;

            BLLhelp bllhelp = new BLLhelp();
          int result=bllhelp.delete(help);
          if (result>0)
          {
              Common.MessageAlert.AlertLocation(Page, "alert('批量删除成功');location.href='helplist.aspx'");
          }
          else
          {
              Common.MessageAlert.Alert(Page,"批量删除失败");
          }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("helplist.aspx");
    }
}
