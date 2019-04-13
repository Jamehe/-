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


public partial class admin_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mmmm = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            _imageid.Text = mmmm;

            BLL.procate myb = new BLL.procate();
            DataSet ds = myb.dataset();
            _cateid.DataSource = ds.Tables[0];
            _cateid.DataBind();
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

                

                string newfilename = "show_" + System.DateTime.Now.ToString("yyyyMMddhhmmssfff") + "." + fileEx;

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/show_imageurl/" + newfilename));

                string savepath = "show_imageurl/" + newfilename;

                imageurl.Text = savepath;

               string  imagett = "../" + savepath;
               
               imagela.Text += "<img src=" + imagett + " style='"+"height: 180px; width: 120px"+"' />";
                  
                
                string siz = DateTime.Now.ToString("yyyyMMddhhmmssfff");
                  
             

               Model.proimage mym = new Model.proimage();
               mym.imageid = _imageid.Text;
               mym.imageurl = savepath;
               mym.color = colorselect.SelectedItem.Text;
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
        mym.imageid = _imageid.Text;
        mym.ischeap = Convert.ToInt32(_ischeap.SelectedValue);
        mym.isrecomment = Convert.ToInt32(_isrecomment.SelectedValue);
        mym.localprice = Convert.ToDouble(_localprice.Text);
        mym.marketprice = Convert.ToDouble(_marketprice.Text);
        mym.posttime = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
        mym.procount = Convert.ToInt32(_procount.Text);
        mym.top = Convert.ToInt32(_top.SelectedValue);
        mym.weight = _weight.Text;
        mym.cateid = Convert.ToInt32(_cateid.SelectedValue);
        BLL.product bpro = new BLL.product();
        int result = bpro.insert(mym);
        if (result > 0)
        {
            msg("成功添加产品！！");

            string mmmm = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            _imageid.Text = mmmm;

            _title.Text = "";
            FCKeditor1.Value = "";         
            _procount.Text = "";
            _weight.Text = "";
            _localprice.Text = "";
            _marketprice.Text = "";
            imagela.Text = "";
 
        }


    }
   
   
}
