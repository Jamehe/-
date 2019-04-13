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
public partial class admin_messelect : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        string title = Request.QueryString["_title"].ToString();
        if (!IsPostBack)
        {
            BLLmessage bllmessage = new BLLmessage();
            int result = bllmessage.mes_select(title);
            AspNetPager1.RecordCount = result;
            if (result > 0)
            {
                AspNetPager1.PageSize = 5;
                bindmes();
                Label1.Visible = false;
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
                txt_search.Visible = false;
                Label1.Text = "对不起，没有搜索的相关信息";
                Label1.Visible = true;
                AspNetPager1.Visible = false;
            }
        }
    }
    public void bindmes()
    {

        string title = Request.QueryString["_title"].ToString();
        BLLmessage bllmessage = new BLLmessage();
        DataSet ds = bllmessage.messelect(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "info", title);
        GridView1.DataSource = ds;
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
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb.Checked)
            {
                int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

                message mes = new message();
                mes.id = id;
                mes.state = 1;

                BLLmessage bllmessage = new BLLmessage();
                int result = bllmessage.p_update(mes);
                if (result > 0)
                {
                    Response.Write("<script>alert('批量审核成功');location.href='../message.aspx'</script>");
                }
                else
                {
                    Common.MessageAlert.Alert(Page, "alert('批量审核失败');");
                }
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gv in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)gv.FindControl("CheckBox2");
            cb.Checked = true;
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gv in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)gv.FindControl("CheckBox2");
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
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
            if (cb.Checked)
            {
                int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

                message mes = new message();
                mes.id = id;

                BLLmessage bllmessage = new BLLmessage();
                int result = bllmessage.delete(mes);
                if (result > 0)
                {
                    Response.Write("<script>alert('批量删除成功');location.href='messageList.aspx'</script>");
                }
                else
                {
                    Common.MessageAlert.Alert(Page, "alert('批量删除失败');");
                }
            }

        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (txt_search.Text != "")
        {
            Response.Redirect("messelect.aspx?_title=" + txt_search.Text);
        }
        else
        {
            Response.Write("<script>alert('请输入要搜索的留言标题');</script>");
        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bindmes();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("messageList.aspx");
    }
}
