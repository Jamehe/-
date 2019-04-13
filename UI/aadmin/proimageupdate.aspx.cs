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
using System.IO;


public partial class admin_proimageupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            u_sizeid.Text = Request.QueryString["sizeid"].ToString();

            BLL.proimage b_image = new BLL.proimage();
            SqlDataReader dr = b_image.image_update(u_sizeid.Text);
            dr.Read();
            image_url.Text = dr["_imageurl"].ToString();
            Image1.ImageUrl = "~/" + image_url.Text;
            image_id.Text = dr["_imageid"].ToString();
            dr.Close();
            //sbing();
            
        }

    }
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    //public void sbing()
    //{
    //    BLL.size bsize = new BLL.size();
    //    DataSet ds = bsize.select_size(u_sizeid.Text);
    //    GridView1.DataSource = ds.Tables[0];
    //    GridView1.DataBind();
        
    //}


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
                Image1.ImageUrl = "~/" + savepath;
                Model.proimage mym = new Model.proimage();
                mym.imageurl = savepath;
                mym.imageid = image_id.Text;
                mym.sizeid = u_sizeid.Text;
                BLL.proimage b_im = new BLL.proimage();
                int result = b_im.upimage(mym);
                if (result > 0)
                {
                    string path = "~/" + image_url.Text;

                    if (File.Exists(Server.MapPath(path)))
                    {


                        File.Delete(Server.MapPath(path));
                    }


                    msg("更新成功！！");
                    Response.Redirect("proimageselect.aspx?imageid="+image_id.Text+"");
                }

            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("proimageselect.aspx?imageid=" + image_id.Text + "");

    }
    protected void tain_Click(object sender, EventArgs e)
    {
        //Model.size mym = new Model.size();
        //mym.sizeid = u_sizeid.Text;
      //  mym.sizename = Dropsize.SelectedValue;
       // BLL.size myb = new BLL.size();
       // int result = myb.insert(mym);
        //sbing();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int u_id = Convert.ToInt32(e.CommandArgument);
      //  BLL.size b_ss = new BLL.size();
       // int result = b_ss.delete_1(u_id);
        //if (result > 0)
        //{
        //    msg("删除成功！！");
        //   // sbing();
        //}
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
