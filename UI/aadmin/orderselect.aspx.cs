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


public partial class admin_orderselect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AspNetPager1.PageSize = 6;
        if (!IsPostBack)
        {
            aa();
        }

    }
    public void aa()
    {
        BLL.BLLorderselect blll = new BLL.BLLorderselect();
        int result = blll.pageint();
        AspNetPager1.RecordCount = result;
    
       
        LoadDataInfo();
    }
    public void LoadDataInfo()
    {
        BLL.BLLorderselect blll = new BLL.BLLorderselect();
        DataSet ds = blll.pagebind(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    public void LoadDataInfo1()
    {
        Model .order myorder=new Model.order ();
        myorder .ordernum =ordernum .Text ;
        BLL.BLLorderselect blll = new BLL.BLLorderselect();
        DataSet ds = blll.pagebind1(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize,myorder );
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {

    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
   
        if (  ordernum .Text == "")
        {
            LoadDataInfo();
        }
        else
        {
            LoadDataInfo1();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            Model.order mymodel = new Model.order();
            mymodel.id = Convert .ToInt32 ( e.CommandArgument);
            BLL.BLLorderselect blll = new BLL.BLLorderselect();
            int result = blll.delete(mymodel );
           
            if (result > 0)
            {
                Response.Write("<script>alert('删除成功!');location.href='orderselect.aspx'</script>");
            }
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void search_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (ordernum.Text != "")
        {
            Label1.Visible = false;
            Model.order myorder = new Model.order();
            myorder.ordernum = ordernum.Text;
            BLL.BLLorderselect blll = new BLL.BLLorderselect();
            int result = blll.pageint1(myorder);
            AspNetPager1.RecordCount = result;
    
            LoadDataInfo1();
            if (result == 0)
            {
                Label1.Visible = true;
                GridView1.DataSource = null;
                GridView1.DataBind();
                AspNetPager1.Visible = false;
            }
        }
        else
        {
            Label1.Visible = true;
            GridView1.DataSource = null;
            GridView1.DataBind();
            AspNetPager1.Visible = false;
        }
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {

    }
}
