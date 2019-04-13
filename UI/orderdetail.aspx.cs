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

using System.Data.SqlClient ;

public partial class orderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        bindgr();aa();
        Label1.Text = Request.QueryString["ordernum"].ToString();
    }
    public void aa()
    {
        double wholeprice=0;
        double wholeweight=0;
        Label sumweight = new Label();
        Label sumprice = new Label();

        wholeprocount.Text = GridView1.Rows.Count.ToString ();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sumweight =(Label )GridView1.Rows[i].FindControl("sumweight");
            sumprice =(Label )GridView1 .Rows [i].FindControl ("sumprice");
            wholeweight +=Convert .ToDouble ( sumweight.Text);
            wholeprice +=Convert .ToDouble ( sumprice.Text);

        }
      
        wprice.Text = wholeprice.ToString();
        wweight.Text = wholeweight .ToString();
    }
    public void bindgr()
    {
        Model.orderdetail myorderdetail = new Model.orderdetail();
        myorderdetail.ordernum = Request.QueryString["ordernum"].ToString ();
        BLL.BLLorderupdate blll = new BLL.BLLorderupdate();
        DataSet ds = blll.bindgr(myorderdetail);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Order.aspx"); Response.Redirect("Order.aspx");

    }
}
