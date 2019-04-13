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

public partial class admin_orderupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            aa();
        }
    }
    public void aa()
    {
        Model.order myorder = new Model.order();
        myorder.id = Convert .ToInt32( Request.QueryString["id"]);
        BLL.BLLorderupdate blll = new BLL.BLLorderupdate();
        SqlDataReader dr = blll.readorder(myorder);
        if (dr.Read())
        {
            ordernum .Text =dr["_ordernum"].ToString ();
            sellremarks.Text = dr["_sellremarks"].ToString();
            proid.Text  = dr["_id"].ToString();
            if (dr["_paystate"].ToString() == "1")
            {
                ispay.Checked = true;
            }
            else
            {
                notpay.Checked = true;
            }
            if (dr["_prostate"].ToString() == "1")
            {
                ispro.Checked = true;
            }
            else
            {
                notpro.Checked = true; 
            }
        }
        dr.Close();
    }
    protected void change_Click(object sender, EventArgs e)
    {
        Model.order myorder = new Model.order();
        myorder.id = Convert.ToInt32(Request.QueryString["id"]);
        myorder.sellremarks = sellremarks.Text;
        if (ispay.Checked == true)
        {
            myorder.paystate = 1;
        }
        if(notpay .Checked ==true )
        {
            myorder.paystate = 0;
        }
        if (ispro.Checked == true)
        {
            myorder.prostate = 1;
        }
        if(notpro .Checked ==true )
        {
            myorder.prostate = 0;
        }
        BLL.BLLorderupdate blll = new BLL.BLLorderupdate();
        int result = blll.update(myorder );


        if (result > 0)
        {
            Common .MessageAlert .AlertLocation (Page , "if(confirm('更新成功，是否返回订单列表?')) location.href='orderselect.aspx'");
        }
    }
}
