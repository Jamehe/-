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


public partial class admin_procatelist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bing();
            BLL.fathercate f_bll = new BLL.fathercate();
            DataSet ds = f_bll.dataset();
            Drop_f.DataSource = ds.Tables[0];
            Drop_f.DataBind();

        }
    }

    public void bing()
    {
        BLL.procate myb = new BLL.procate();
        DataSet ds = myb.data_set();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
   
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            z_id.Text = e.CommandArgument.ToString();
        }

        if (e.CommandName == "Delete")
        {
            int z_id = Convert.ToInt32(e.CommandArgument);
            BLL.product myb = new BLL.product();
            int result = myb.num(z_id);
            if (result > 0)
            {
                msg("先把含有此子类的商品记录删除，才能删除子类");
            }
            else
            {
                BLL.procate d_bll = new BLL.procate();
                int rs = d_bll.dalete(z_id);
                if (rs > 0)
                {
                    msg("删除成功");
                    bing();
                }
                else
                {
                    msg("删除失败！");
 
                }
            }


        }

    }
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void qued_Click(object sender, EventArgs e)
    {
        if (z_id.Text != "未选择")
        {
            if (TextBox1.Text !="")
            {
                Model.procate mym = new Model.procate();
                mym.cateid = Convert.ToInt32(z_id.Text);
                mym.catename = TextBox1.Text;
                mym.fathercateid = Convert.ToInt32(Drop_f.SelectedValue);
                BLL.procate myb = new BLL.procate();
                int result = myb.update(mym);
                if (result > 0)
                {
                    msg("更改成功！");
                    TextBox1.Text = "";
                    z_id.Text = "未选择";
                    bing();
                }

            }
            else
            {
                msg("类明不能为空");
            }
        }
        else
        {
            msg("未选择");
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataBind();
    }
}
