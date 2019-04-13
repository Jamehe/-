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
using System.Xml;
using System.IO;


public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 

       
        info();
        loaddata();
        loadCate();
        
    }

    public void loadCate()
    {
        Page.Title = "校园淘网";
        
        HtmlMeta myMeta = new HtmlMeta();
        myMeta.Name = "Keywords";
        myMeta.Content = "闲置,校园";
        this.Header.Controls.Add(myMeta);

        HtmlMeta myMeta1 = new HtmlMeta();
        myMeta1.Name = "Description";
        myMeta1.Content = "";
        this.Header.Controls.Add(myMeta1);



        HtmlMeta myMeta2 = new HtmlMeta();
        myMeta2.Name = "Author";
        myMeta2.Content = "校园淘网";
        this.Header.Controls.Add(myMeta2);


        BLL.fathercate my_f = new BLL.fathercate();
        DataSet ds_f = my_f.dataset();
        Repeater1.DataSource = ds_f.Tables[0];
        Repeater1.DataBind();

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
    protected void info()
    {
        try
        {
            int c = 1;
            string str = "select top 10 * from product where _ischeap=" + c + "";
            DataSet ds = DB.dataSet(str);
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            /*----------------- hot--------------*/

            string str2 = @"select * from product where _id
                      in (select top 10 _proid from orderdetail group by _proid order by sum(_count) )";
            DataSet ds2 = DB.dataSet(str2);
            DataList2.DataSource = ds2.Tables[0];
            DataList2.DataBind();
            /*----------------- time--------------*/
            string str3 = "select top 10 * from product order by _id desc";
            DataSet ds3 = DB.dataSet(str3);
            DataList3.DataSource = ds3.Tables[0];
            DataList3.DataBind();
            
        }
        catch
        { 
          
        }
    }
    protected string bd(string str)
    {

        string sql = " select  _imageurl from  proimage where _imageid= '" + str + "' ";
        
        DataTable sdr = Common.DbHelperSQL.Query(sql).Tables[0];

        if (sdr.Rows.Count > 0)
        {
            return sdr.Rows[0]["_imageurl"].ToString();
        }
        else {
            return "images\\11_03.jpg";        
        }
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
  

    public void loaddata()
    {
        XmlDataDocument xml = new XmlDataDocument();
        xml.Load(Server.MapPath("~/" + "ad.xml"));

        XmlNodeList nodes = xml.SelectSingleNode("ttt").ChildNodes;

        DataTable dt = new DataTable();

        dt.Columns.Add("index", typeof(string));
        dt.Columns.Add("src", typeof(string));
        dt.Columns.Add("href", typeof(string));
        dt.Columns.Add("target", typeof(string));

        foreach (XmlNode node in nodes)
        {
            DataRow row = dt.NewRow();

            row["href"] = node.Attributes["href"].Value;
            row["src"] = node.Attributes["src"].Value;
            dt.Rows.Add(row);
        }

       // DataList4.DataSource = dt;
       // DataList4.DataBind();
    }
    }

