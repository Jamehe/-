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

public partial class ProInfo : System.Web.UI.Page
{
    public string im_url;
    //public string fcateid;
    //获取父类别的id
    //public string FatherCateid { get { 

    //return this.fcateid; 
    //} }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)

        {

            BLL.fathercate my_f = new BLL.fathercate();
            DataSet ds_f = my_f.dataset();
            Repeater1.DataSource = ds_f.Tables[0];
            Repeater1.DataBind();

            BLL.procate pb = new BLL.procate();
           
            uid.Text = Request.QueryString["uid"].ToString();
           
            int u_id = Convert.ToInt32(uid.Text);


            BLL.product prob = new BLL.product();
            SqlDataReader dr_pro = prob.selectupdate(u_id);
             dr_pro.Read();
             market.Text = Math.Round(Convert.ToDecimal(dr_pro["_marketprice"].ToString()), 2).ToString();
             local.Text = Math.Round(Convert.ToDecimal(dr_pro["_localprice"].ToString()), 2).ToString();
             image_id.Text = dr_pro["_imageid"].ToString();
             title_l.Text = dr_pro["_title"].ToString();
             content_s.Text = dr_pro["_content"].ToString();
             int cate_id = Convert.ToInt32(dr_pro["_cateid"].ToString());

            catename(cate_id);
            dr_pro.Close();

            BLL.proimage b_image = new BLL.proimage();
            DataSet ds_image = b_image.select_sizeid(image_id.Text);
           


            Image_1.ImageUrl = Convert.ToString( ds_image.Tables[0].Rows[0]["_imageurl"]);
            im_url = Image_1.ImageUrl;
            img_url.Text = im_url;
            
            if (ds_image.Tables[0].Rows[0]["_sizeid"] != null)
            {
                string size_id = Convert.ToString(ds_image.Tables[0].Rows[0]["_sizeid"]);
                sizeid.Text = size_id;
                
            }


            

        }
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

    protected void b_color_Command(object sender, CommandEventArgs e)
    {  
        
       
        BLL.proimage myb = new BLL.proimage();
        SqlDataReader dr_proimage = myb.image_update(Convert.ToString(e.CommandArgument));
         dr_proimage.Read();
         Image_1.ImageUrl = dr_proimage["_imageurl"].ToString();
         im_url = Image_1.ImageUrl;
         img_url.Text = im_url;
         
         dr_proimage.Close();
        
        

    }

    public void catename(int cateid)
    {
        BLL.procate myb = new BLL.procate();
        cate_name.Text = myb.select_name(cateid);

    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        if (Session["_userid"] == null)
        {
            Common.MessageAlert.Alert(Page, "alert('请先登陆，后收藏');location.href='Login.aspx'");
        }
        else
        {
            Model.collect modc = new Model.collect();
            modc.proid = Convert.ToInt32(uid.Text);
            BLL.collect blloc = new BLL.collect();
            SqlDataReader dr = blloc.drsco(modc);
            if (dr.Read())
            {
                Common.MessageAlert.Alert(Page, "该产品您已收藏了！");
            }
            else
            {


                Model.collect mocll = new Model.collect();
                mocll.userid = Convert.ToInt32(Session["_userid"]);

                mocll.proimage = Image_1.ImageUrl;
                mocll.proid = Convert.ToInt32(uid.Text);
                mocll.proname = title_l.Text;
                mocll.proprice = Convert.ToDouble(local.Text);

                BLL.collect bcll = new BLL.collect();
                int i = bcll.insertco(mocll);
                if (i > 0)
                {
                    Common.MessageAlert.Alert(Page, "收藏成功！");
                }
            }
           
        }

    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
       
    }
    //订单。。。。。。。
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["_username"] == null)
        {
            Common.MessageAlert.Alert(Page, "对不起，您还没有登入！！");
        }
        //引用shoplist
        else
        {
            Model.product mypro = new Model.product();
            mypro.id = Convert.ToInt32(Request.QueryString["uid"].ToString());
            BLL.BLLshoplist blll = new BLL.BLLshoplist();
            SqlDataReader dr = blll.readpro(mypro);
            DataTable dt;
            if (Session["dt"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("id", typeof(Int32));
                
                dt.Columns.Add("localprice", typeof(Double));
                dt.Columns.Add("posttime", typeof(String));
                dt.Columns.Add("buycount", typeof(Int32));
                dt.Columns.Add("sumprice", typeof(Int32));
                dt.Columns.Add("color", typeof(String));
                dt.Columns.Add("size", typeof(String));
                dt.Columns.Add("title", typeof(String));
                dt.Columns.Add("cate", typeof(String));
                dt.Columns.Add("image", typeof(String));
                dt.Columns.Add("only", typeof(String));
                dt.Columns.Add("weight", typeof(String));
                dt.Columns.Add("sumweight", typeof(String));

            }
            else
            {
                dt = (DataTable)Session["dt"];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (Convert.ToInt32(dt.Rows[i]["id"]) == mypro.id )
                    {
                        dt.Rows[i]["buycount"] = Convert.ToInt32(dt.Rows[i]["buycount"]) + 1;
                        Session["dt"] = dt;
                        Response.Redirect("shoplist.aspx");
                        return;
                    }
                }
            }
            DataRow row = dt.NewRow();
            if (dr.Read())
            {
                row["weight"] = dr["_weight"].ToString();
                row["sumweight"] = dr["_weight"].ToString();
                row["only"] = DateTime.Now.ToString("yyyyMMddhhmmssfff");
             
                row["image"] = Image_1.ImageUrl;
                row["cate"] = cate_name.Text;
                row["title"] = title_l.Text;
               
                row["id"] = Convert.ToInt32(dr["_id"].ToString());

                row["localprice"] = Convert.ToDouble(dr["_localprice"].ToString());
                row["posttime"] = Convert.ToString(dr["_posttime"].ToString());
                row["buycount"] = 1;
                row["sumprice"] = Convert.ToDouble(dr["_localprice"].ToString());

                dt.Rows.Add(row);
            }
            dr.Close();
            Session["dt"] = dt;
            Response.Redirect("shoplist.aspx");


        }
    } 
}
