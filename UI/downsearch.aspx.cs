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
public partial class downsearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            string name = Request.QueryString["title"].ToString();
            name = Common.DB.CheckStr(name);
            bool res = Common.DB.sql_immit(name);
            if (res)
            {
                Response.Write("<script>alert('您输入的字符具有危险性，请重输')</script>");
            }
            else
            {
                string str = "select count(*) from downlist where _title like '%" + name + "%' ";
                int result = Convert.ToInt32(Common.DB.ExecuteScalar(str));
                AspNetPager1.RecordCount = result;
                AspNetPager1.PageSize = 20;
                info();
            }
    }
    public void info()
    {
        string name = Request.QueryString["title"].ToString();
        string str = "select * from downlist  where _title like '%" + name + "%'order by _id desc ";
        SqlDataReader sdr = Common.DbHelperSQL.ExecuteReader(str);
        if (sdr.Read())
        {
            DataSet ds = Common.DB.PagedataSet(str, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "helpcate");
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();
        }
        else
        {
            
            Label2.Text = "没有您要搜索的资源！！！";
      
        }
        sdr.Close();
    }
    protected void AspNetPager1_PageChanging1(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        info();
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (search.Text != "")
        {
            Response.Redirect("downsearch.aspx?title=" + search.Text + "");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        Label1.Text = e.CommandArgument.ToString();

        Model.downlist md = new Model.downlist();
        md.id = Convert.ToInt32(Label1.Text);
        BLL.downlist bd = new BLL.downlist();
        SqlDataReader sdr = bd.datareader(md);
        string str = "";
        int count = 0;
        if (sdr.Read())
        {
            count = Convert.ToInt32(sdr["_click"]);
            str = sdr["_uploadurl"].ToString();
        }
       
        sdr.Close();

        md.click = count + 1;
        int result = bd.click(md);
        Response.Redirect(str);

    }
}

