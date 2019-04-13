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


public partial class collect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_userid"] == null)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('请先登入！');location.href='Login.aspx'");
        }
        else
        {
            Model.collect moc = new Model.collect();
            moc.userid = Convert.ToInt32(Session["_userid"]);

            BLL.collect blc = new BLL.collect();
            int i = blc.count(moc);
            //Response.Write(i);
            AspNetPager1.RecordCount = i;
            AspNetPager1.PageSize = 4;

            data();


        }
    }
    public void data()
    {

        Model.collect mocl = new Model.collect();

        mocl.userid = Convert.ToInt32(Session["_userid"]);

        BLL.collect bllc = new BLL.collect();
        DataSet ds = bllc.drco(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, mocl);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
   
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {

        int i = Convert.ToInt32(e.CommandArgument);
       
        Model.collect mop = new Model.collect();
        mop.id = i;
        BLL.collect blo = new BLL.collect();
        int f = blo.depo(mop);

        if (f > 0)
        {
            Common.MessageAlert.Alert(Page, "删除成功！");
            data();


        }
        else
        {
            Common.MessageAlert.Alert(Page, "删除失败！");
        }
        
        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        data();
    }
}
