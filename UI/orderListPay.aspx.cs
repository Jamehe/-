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

public partial class shoplist3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Model.order  myorder= (Model.order)Session["orderTable"];
        ordernum.Text = myorder.ordernum;
        wprice.Text = myorder.sumprice.ToString();
        waysgive.Text = myorder.waysgive;
        Session["dt"] = null;
    }
}
