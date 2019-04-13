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
using Common;
public partial class ProList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLL.fathercate my_f = new BLL.fathercate();
        DataSet ds_f = my_f.dataset();
        Repeater1.DataSource = ds_f.Tables[0];
        Repeater1.DataBind();
        select();
        info();
        
    }
    public string datas(string f_cateid)
    {
        string result = "";
        BLL.procate myb = new BLL.procate();
        DataSet ds = myb.data_f(Convert.ToInt32(f_cateid));
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (ds.Tables[0].Rows[i] != null)
            {
                result = result + "<li>" + "<a href=pro_catelist.aspx?cateid=" + ds.Tables[0].Rows[i]["_cateid"].ToString() + ">" + ds.Tables[0].Rows[i]["_catename"].ToString() + "</a>" + "</li>";

            }



        }
        return result;


    }
    public void select()
    {
        string name = Request.QueryString["title"].ToString();
        string str = " select count(*) from product where _title like '%"+name+"%' ";
        int result = Convert.ToInt32(Common.DB.ExecuteScalar(str));
        AspNetPager1.RecordCount = result;
        AspNetPager1.PageSize = 9;
    }
    public void info()
    {
        string name = Request.QueryString["title"].ToString();
        string str = @"select product._id, product._imageid, procate._catename, 
                       product._title,product._localprice from product , procate where
                       product._cateid=procate._cateid and _title like '%"+name+"%' ";
        SqlDataReader sdr = Common.DbHelperSQL.ExecuteReader(str);
        if (sdr.Read())
        {
            DataSet ds = Common.DB.PagedataSet(str, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "helpcate");
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        else
        {

            Label1.Text = "没有您要搜索的商品！！！";

        }
        sdr.Close();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
       
    }
  
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        info();
    }
    protected string bd(string str)
    {
        string sql = " select _imageurl from proimage where _imageid='" + str + "'";
        DataTable db = DbHelperSQL.Query(sql).Tables[0];
        return db.Rows[0]["_imageurl"].ToString();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text != "")
        {
            search.Text = Common.DB.CheckStr(search.Text);
            bool res = Common.DB.sql_immit(search.Text);
            if (res)
            {
                Response.Write("<script>alert('您输入的字符具有危险性，请重输')</script>");
            }
            else
            {
                Response.Redirect("ProList.aspx?title=" + search.Text + "");
            }
        }
    }
}
