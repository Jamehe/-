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

public partial class admin_proupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bing();
        }

    }

    public void bing()
    {
        BLL.product myb = new BLL.product();
        DataSet ds = myb.dataset();
        GridView1.DataSource  =ds.Tables[0];
        GridView1.DataBind();
    }

    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            Model.product mym = new Model.product();
            mym.id = Convert.ToInt32(e.CommandArgument);
            BLL.product myb = new BLL.product();



            string s_imageid = myb.select_imageid(mym);


            BLL.proimage b_image = new BLL.proimage();

            DataSet ds = b_image.select_sizeid(s_imageid);





            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string size_id = Convert.ToString(ds.Tables[0].Rows[i]["_sizeid"]);

               // BLL.size s_bll = new BLL.size();

              //  int result_s = s_bll.delete(size_id);
                

                string path1 = Convert.ToString(ds.Tables[0].Rows[i]["_imageurl"]);

                string path = "~/" + path1;

                if (File.Exists(Server.MapPath(path)))
                {


                    File.Delete(Server.MapPath(path));
                }





            }

                int r_image = b_image.delete(s_imageid);

                int result = myb.delete_id(mym);

                if (result > 0)
                {
                    msg("删除成功！！");
                    bing();
                }

            }

            if (e.CommandName == "Edit")
            {
                Response.Redirect("proupdate.aspx?id="+e.CommandArgument+"");
            }

        }
    

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void sous_Click(object sender, EventArgs e)
    {
        Model.product mym = new Model.product();
        mym.title = Text_title.Text;
        BLL.product myb = new BLL.product();
        DataSet ds = myb.select_title(mym);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void qb_Click(object sender, EventArgs e)
    {
        bing();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bing();
    }
}
