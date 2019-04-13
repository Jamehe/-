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
public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            BLLmessage bllmessage = new BLLmessage();
            int result = bllmessage.message_state();
            AspNetPager1.RecordCount = result;
            AspNetPager1.PageSize = 5;
            binddata();
        }

    }



    public void binddata()
    {
        BLLmessage bllmessage = new BLLmessage();
        DataSet ds = bllmessage.select(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "message");
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
    //    if ((txt_title.Text == "") || (txt_content.Text == ""))
    //    {
    //        Response.Write("<script>alert('请输入标题及内容');</script>");
    //    }

    //    else
    //    {
    //        Model.message mes = new Model.message();
    //        mes.title = Common.DB.CheckStr(txt_title.Text);
    //        mes.content = Common.DB.CheckStr(txt_content.Text);
    //        mes.ip = Request.UserHostAddress;

    //        BLLmessage bllmessage = new BLLmessage();
    //        int result = bllmessage.post(mes);
    //        if (result > 0)
    //        {
    //            Common.MessageAlert.AlertLocation(Page, "alert( '留言成功，将通过审核')");
    //            txt_title.Text = "";
    //            txt_content.Text = "";
    //        }
    //        else
    //        {
    //            Common.MessageAlert.Alert(Page, "留言失败");
    //        }
    //    }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_title.Text = "";
        txt_content.Text = "";
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        binddata();
    }
}
