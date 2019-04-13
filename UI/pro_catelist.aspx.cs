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


public partial class pro_catelist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLL.fathercate my_f = new BLL.fathercate();
        DataSet ds_f = my_f.dataset();
        Repeater1.DataSource = ds_f.Tables[0];
        Repeater1.DataBind();
        s_cateid();
        sbing();
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

    public void s_cateid()
    {
        string cate_id = Request.QueryString["cateid"].ToString();
        l_cateid.Text = cate_id;
        BLL.product b_p = new BLL.product();
        int result = b_p.num_cateid(Convert.ToInt32(cate_id));
        AspNetPager1.RecordCount = result;
        AspNetPager1.PageSize = 9;

    }

    public void sbing()
    {
        int cateid = Convert.ToInt32(l_cateid.Text);
        BLL.product b_date = new BLL.product();
        DataSet ds = b_date.p_dataset(cateid, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "helpcate");
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
    }

    public string s_image(string image_id)
    {
        BLL.proimage b_image = new BLL.proimage();
        DataSet ds = b_image.select_sizeid(image_id);
        return Convert.ToString(ds.Tables[0].Rows[0]["_imageurl"]);
    }
  




    protected void AspNetPager1_PageChanging1(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    { AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        sbing();

    }
}
