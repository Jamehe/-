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
public partial class admin_messageList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLLmessage bllmessage = new BLLmessage();
            int result = bllmessage.messageCount();
            AspNetPager1.RecordCount = result;
            AspNetPager1.PageSize = 10;
            binddata();



        }
    }
    public void binddata()
    {
        BLLmessage bllmessage = new BLLmessage();
        DataSet ds = bllmessage.h_select(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "message");
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        binddata();
    }
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{

    //}
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "Delete")
    //    {
    //        int id = Convert.ToInt32(e.CommandArgument);
    //        message mes = new message();
    //        mes.id = id;

    //        BLLmessage bllmessage = new BLLmessage();
    //        int result = bllmessage.delete(mes);
    //        if (result > 0)
    //        {
    //            Common.MessageAlert.AlertLocation(Page, "alert('删除成功');location.href='messageList.aspx'");


    //        }
    //        else
    //        {
    //            Common.MessageAlert.Alert(Page, "删除失败");
    //        }
    //    }
    //}

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

}
