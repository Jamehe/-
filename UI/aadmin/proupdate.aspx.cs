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

public partial class admin_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLL.procate myb = new BLL.procate();
            DataSet ds = myb.dataset();
            _cateid.DataSource = ds.Tables[0];
            _cateid.DataBind();
            L_id.Text = Request.QueryString["id"].ToString();
            int  u_id = Convert.ToInt32( L_id.Text);
            BLL.product prob = new BLL.product();
            SqlDataReader dr = prob.selectupdate(u_id);

            if (dr.Read())
            {
                _title.Text = dr["_title"].ToString();
                FCKeditor1.Value = dr["_content"].ToString();
                _posttime.Text = dr["_posttime"].ToString();
                _weight.Text = dr["_weight"].ToString();
                _imageid.Text = dr["_imageid"].ToString();
                _marketprice.Text = dr["_marketprice"].ToString();
                _localprice.Text = dr["_localprice"].ToString();
                _procount.Text = dr["_procount"].ToString();
                _ischeap.SelectedIndex = Convert.ToInt32(dr["_ischeap"].ToString());
                _isrecomment.SelectedIndex = Convert.ToInt32(dr["_isrecommend"].ToString());
                _top.SelectedIndex = Convert.ToInt32(dr["_top"].ToString());
                _cateid.SelectedIndex = Convert.ToInt32(dr["_cateid"].ToString()) + 1;
            }
            dr.Close();
        
        }


    }
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void upimage_Click(object sender, EventArgs e)
    {


        if (FileUpload1.HasFile == false)
        {
            msg("您还没有选择图片！");
            return;
        }
        else
        {



            string filepath = FileUpload1.PostedFile.FileName;

            string fileEx = filepath.Substring(filepath.LastIndexOf(".") + 1);

            if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif" || fileEx == "jpeg" || fileEx == "png")
            {

                //sizela.Text = "";

                string newfilename = "show_" + System.DateTime.Now.ToString("yyyyMMddhhmmssfff") + "." + fileEx;

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/show_imageurl/" + newfilename));

                string savepath = "show_imageurl/" + newfilename;

                imageurl.Text ="../"+ savepath;

                imagela.Text += "<img src=" + imageurl.Text + " style='" + "height: 180px; width: 120px" + "' />";


                string siz = DateTime.Now.ToString("yyyyMMddhhmmssfff");
                //sizeidla.Text = siz;


                Model.proimage mym = new Model.proimage();
                mym.imageid = _imageid.Text;
                mym.imageurl = savepath;
                mym.color = colorselect.SelectedItem.Text;
                //mym.sizeid = sizeidla.Text;
                BLL.proimage bimage = new BLL.proimage();
                int result = bimage.insert(mym);
                if (result > 0)
                {
                    //Model.proimage mmym = new Model.proimage();
                    //mmym.sizeid = sizeidla.Text;

                    //BLL.proimage bmy = new BLL.proimage();
                    //int select_id = bmy.selectid(mmym);

                    //proimage_id.Text = Convert.ToString(select_id);

                    msg("成功添加图片，接下来请选择所拥有图片");


                }



            }
            else
            {
                msg("你上传文件格式不正确！！！");
                return;

            }
        }


    }
    protected void tijiao_Click(object sender, EventArgs e)
    {
        Model.product mym = new Model.product();
        mym.title = _title.Text;
        mym.content = FCKeditor1.Value;
        mym.id = Convert.ToInt32(L_id.Text);
        mym.ischeap = Convert.ToInt32(_ischeap.SelectedValue);
        mym.isrecomment = Convert.ToInt32(_isrecomment.SelectedValue);
        mym.localprice = Convert.ToDouble(_localprice.Text);
        mym.marketprice = Convert.ToDouble(_marketprice.Text);
        
        mym.procount = Convert.ToInt32(_procount.Text);
        mym.top = Convert.ToInt32(_top.SelectedValue);
        mym.weight = _weight.Text;
        mym.cateid = Convert.ToInt32(_cateid.SelectedValue);
        BLL.product bpro = new BLL.product();
        int result = bpro.update(mym);
        if (result > 0)
        {
            msg("成功更新商品！！");
            Response.Redirect("proselect.aspx");

        
 
        }







    }
    //protected void qued_Click(object sender, EventArgs e)
    //{
    //    Model.size mym = new Model.size();
    //    mym.sizeid = sizeidla.Text;
    //    mym.sizename = Dropsize.SelectedValue;
    //    BLL.size myb = new BLL.size();
    //    int result = myb.insert(mym);
    //    if (result > 0)
    //    {
    //        sizela.Text += Dropsize.SelectedValue + ",";
    //    }
    //}

    protected void quxiao_Click(object sender, EventArgs e)
    {
        Response.Redirect("proselect.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("proimageselect.aspx?imageid="+_imageid.Text+"");
    }
}
