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
        Model.order orderPay;
        BLL.BLLshoplist2 blll = new BLL.BLLshoplist2();
        int result = 0;
        //支付未支付的订单逻辑
        if (Request.QueryString["flag"] == "1")
        {
            orderPay = (Model.order)Session["orderTable"];
            ordernum.Text = orderPay.ordernum;
            wprice.Text = orderPay.sumprice.ToString();
            waysgive.Text = orderPay.waysgive;
            orderPay.paystate = 1;
            result = blll.updatePaystateById(orderPay);
        }
        else {
            ordernum.Text = Session["ordernum"].ToString();
            wprice.Text = Session["wholeprice"].ToString();
            waysgive.Text = Session["waysgive"].ToString();
            Session["dt"] = null;
            orderPay = (Model.order)Session["orderUser"];
            orderPay.paystate = 1;
            result = blll.updateOrdertable(orderPay);
        }
        
    }
}
