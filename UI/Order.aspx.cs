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

public partial class Order : System.Web.UI.Page
{
    //接收支付或未支付字符串
    string str = null;
    //通过属性传到前端页面(支付状态)
    public string orderState { get{
        return str;
    } }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_userid"] == null)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('对不起，您没有登陆！');location.href='Login.aspx'");
        }
        else
        {

            if (!IsPostBack)
            {
                Model.order mooj = new Model.order();
                mooj.userid = Convert.ToInt32(Session["_userid"]);
                BLL.oredr boo = new BLL.oredr();
                int i = boo.count(mooj);
                AspNetPager1.RecordCount = i;
                AspNetPager1.PageSize = 6;
                pp();

            }
        }
    }
    public void pp()
    {
        Model.order moo = new Model.order();
        moo.userid = Convert.ToInt32(Session["_userid"]);
        BLL.oredr bmy = new BLL.oredr();
        
        DataSet ds = bmy.findOrders(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, moo);
        foreach (DataTable ta in ds.Tables)
        {
            foreach (DataRow row in ta.Rows)
            {
                Model.order or = new Model.order();
                or.paystate =Convert.ToInt32( row["_paystate"].ToString());
                if (or.paystate == 1)
                {
                    str = "已支付";
                }
                else
                {
                    str = "未支付";
                }
            }
        }
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

    }
  
 
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Model.order moor = new Model.order();
            moor.id = id;
            moor.userid = Convert.ToInt32(Session["_userid"]);
            BLL.oredr bllu = new BLL.oredr();
            int i = bllu.deleteUserOrder(moor);
            if (i > 0)
            {
                Common.MessageAlert.Alert(Page, "删除成功！！");
                pp();
            }
            else
            {
                Common.MessageAlert.Alert(Page, "删除失败！！");
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Pay")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            BLL.oredr bllu = new BLL.oredr();
            Model.order moor = bllu.getuserOrder(id);
            
            if (moor!=null)
            {
                Session["orderTable"] = moor;
                Response.Redirect("orderListPay.aspx");
            }
            else
            {
                Common.MessageAlert.Alert(Page, "不好意思，系统阻塞了.....");
            }
        }
    }
   

    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        
            pp();
       
    }
  
}
