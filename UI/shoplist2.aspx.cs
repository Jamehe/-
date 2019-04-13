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
using System.Data;
public partial class shoplist2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["wholeprice"] != null && Session["wholeprocount"] != null)
            {
                wprice.Text = Session["wholeprice"].ToString();
                wholeprocount.Text = Session["wholeprocount"].ToString();
                wweight.Text = Session["wholeweight"].ToString();
                bindaddress();
                aa();
                
            }
            else
            {

            }
        }
        
    }
    public void bindaddress()
    {
        
        Model.address myaddress = new Model.address();
        myaddress.userid  = Convert.ToInt32(Session["_userid"]);
        BLL.BLLshoplist2 blll = new BLL.BLLshoplist2();
       SqlDataReader dr = blll.readaddress(myaddress);
       if (dr.Read())
       {
           address.Text = dr["_address"].ToString();
           tel.Text = dr["_tel"].ToString();
           mobile.Text = dr["_mobile"].ToString();
           receivename.Text = dr["_name"].ToString();
           mail.Text = dr["_mail"].ToString();
       }
       dr.Close();
       Label1.Text = receivename.Text+"　";
       Label2.Text =  address.Text + "　";
       Label3.Text = mobile.Text + "　";
       Label4.Text =  tel.Text + "　";
       Label5.Text = mail.Text + "　";
        
    }
    public void aa()
    {
        DataTable dt = null;
        if (Session["dt"] != null)
        {
            dt = (DataTable)Session["dt"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
         
        }


    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
            Panel1.Visible = !Panel1.Visible;
    }
  
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            DataTable dt = (DataTable)Session["dt"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (Convert.ToInt32(dt.Rows[i]["id"]) == Convert.ToInt32(e.CommandArgument))
                {
                    dt.Rows.RemoveAt(i);
                }
            }
            Session["dt"] = dt;
            aa();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (receivename.Text.Trim() == "" || address.Text.Trim() == "" || tel.Text.Trim() == "" || mobile.Text.Trim() == "" || mail.Text.Trim() == "" )
        {
            Common.MessageAlert.Alert(Page, "您还有信息没有填写，不能提交订单！！");
        }
        else
        {
            bindordertable();
        }
        
    }
    public void bindordertable()
    {
        //ordertable数据的插入
        Model.order myorder = new Model.order();
        myorder.ordernum = DateTime.Now.ToString("yyyyMMddhhmmssfff");
        Session["ordernum"] = myorder.ordernum;
        myorder.userid = Convert.ToInt32(Session["_userid"]);
        myorder.buyremarks =Server .HtmlEncode ( buyremarks.Text);
        myorder.count = Convert.ToInt32(wholeprocount.Text);
        myorder.address =Server .HtmlEncode ( address.Text);
        myorder.tel =Server .HtmlEncode ( tel.Text);
        myorder.mobile =Server .HtmlEncode ( mobile.Text);
        myorder.mail =Server .HtmlEncode ( mail.Text);
        myorder.name =Server .HtmlEncode ( receivename.Text);
        myorder.sumprice = Convert.ToDouble(wprice.Text);
        //if (needbill.Checked)
        //{
        //    myorder.needbill = 1;
        //}
        //else
        //{
        //    myorder.needbill = 0;
        //}
        if (online.Checked)
        {
            myorder.waysgive = "在线支付";
        }
        else
        {
            myorder.waysgive = "货到付款";
        }
        Session["waysgive"] = myorder.waysgive;
        Session["orderUser"] = myorder;
        BLL.BLLshoplist2 blll = new BLL.BLLshoplist2();
        int result = blll.insertOrdertable(myorder);
        //ordertabldetail数据的插入
        int result2=0;
        for(int i=0;i<GridView1 .Rows .Count ;i++)
        {
        Model .orderdetail myorderdetail=new Model.orderdetail ();
       
        Label sumweight = new Label();
        Label sumprice = new Label();
        Label weight = new Label();
        Label count = new Label();
        Label localprice = new Label();
        Label title = new Label();
        Label cate = new Label();
        Label id=new Label();
        Image img = new Image();
        sumweight = (Label)GridView1.Rows[i].FindControl("sumweight");
        sumprice = (Label)GridView1.Rows[i].FindControl("sumprice");
        weight = (Label)GridView1.Rows[i].FindControl("weight");
        count = (Label)GridView1.Rows[i].FindControl("count");
       localprice = (Label)GridView1.Rows[i].FindControl("localprice");
        title = (Label)GridView1.Rows[i].FindControl("title");
        img = (Image)GridView1.Rows[i].FindControl("img");
        cate = (Label)GridView1.Rows[i].FindControl("cate");
        id = (Label)GridView1.Rows[i].FindControl("id");
        myorderdetail.ordernum = Session["ordernum"].ToString();    
        myorderdetail.sumweight = sumweight.Text;
        myorderdetail.sumprice =Convert .ToDouble ( sumprice.Text);
        myorderdetail.weight = weight.Text;
        myorderdetail.count =Convert .ToInt32( count.Text);
        myorderdetail.price =Convert .ToDouble ( localprice.Text);
        myorderdetail.title = title.Text;
        myorderdetail.proimage = img.ImageUrl;
        myorderdetail.cate = cate.Text;
        myorderdetail.proid =Convert .ToInt32 ( id.Text);
        result2 = blll.insertdetail(myorderdetail);
        }
        if (result>0&&result2 > 0)
        {
            Response .Redirect ("shoplist3.aspx");
        }
        else
        {
            Common.MessageAlert.Alert(Page, "提交失败!");
        }
    }
    protected void receivename_TextChanged(object sender, EventArgs e)
    {

    }
    protected void address_TextChanged(object sender, EventArgs e)
    {

    }
    protected void mobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void tel_TextChanged(object sender, EventArgs e)
    {

    }
    protected void mail_TextChanged(object sender, EventArgs e)
    {

    }
}
