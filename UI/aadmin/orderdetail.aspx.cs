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

public partial class admin_orderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        aa();
        bindgr();
    }
    public void bindgr()
    {
        Model.orderdetail myorderdetail = new Model.orderdetail();
        myorderdetail.ordernum = pronum.Text;
        BLL.BLLorderupdate blll = new BLL.BLLorderupdate();
        DataSet ds = blll.bindgr(myorderdetail);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    public void aa()
    {
        Model.order myorder = new Model.order();
        myorder.id = Convert.ToInt32(Request.QueryString["id"]);
        BLL.BLLorderupdate blll = new BLL.BLLorderupdate();
        SqlDataReader dr = blll.readorder(myorder);
        if (dr.Read())
        {
            proid.Text = dr["_id"].ToString();
           needbill.Text   = dr["_needbill"].ToString();
           waysgive.Text  = dr["_waysgive"].ToString();
            pronum.Text = dr["_ordernum"].ToString();
            ordertime.Text = dr["_ordertime"].ToString();
            sellremarks.Text = dr["_sellremarks"].ToString();
            count.Text = dr["_count"].ToString();
            address.Text = dr["_address"].ToString();
            sumpric.Text = dr["_sumprice"].ToString();
            name.Text = dr["_name"].ToString();
            tel.Text = dr["_tel"].ToString();
            mobile.Text = dr["_mobile"].ToString();
            buyremarks.Text = dr["_buyremarks"].ToString();
            mail.Text = dr["_mail"].ToString();
        }
        dr.Close ();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("orderselect.aspx");
    }
}
