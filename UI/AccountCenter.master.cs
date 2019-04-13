using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AccountCenter : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_userid"] == null || Session["_userid"] == "" || Session["_userid"].ToString().Trim()=="")
        {
            Common.MessageAlert.AlertLocation(Page, "alert('对不起，您没有登陆！');location.href='Login.aspx'");
            return;
        }

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session["_userid"] = null;
        Session.Remove("_userid");
        Session["_username"] = null;
        Session.Remove("_username");
        Response.Redirect("index.aspx");
    }
}
