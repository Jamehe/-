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
           string  u_imageid =Request.QueryString["imageid"].ToString();
           image_id.Text = u_imageid;
           bing();
            

        }

    }
    public void bing()
    {
        BLL.proimage myb = new BLL.proimage();
        DataSet ds = myb.select_sizeid(image_id.Text);
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
 
    }
    //public string  sb(string size_id)
    //{
    //    string str=null;
    //  //  BLL.size b_size = new BLL.size();
    //    DataSet ds = b_size.select_size(size_id);

    //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
    //    {
    //        str =str + Convert.ToString( ds.Tables[0].Rows[i]["_sizename"])+" ";

    //    }
    //    return str ;
 
    //}
   
    protected void gg_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("proimageupdate.aspx?sizeid="+e.CommandArgument+"");

    }   
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void sc_Command(object sender, CommandEventArgs e)
    {
        string size_id = Convert.ToString(e.CommandArgument);

       // BLL.size bsize = new BLL.size();
       // int result = bsize.delete(size_id); 
        BLL.proimage myb = new BLL.proimage();
        SqlDataReader dr = myb.s_imageurl(size_id);
        BLL.proimage isize = new BLL.proimage();
        int i_result = isize.delete_1(size_id);


        dr.Read();
                 
        string path = "~/" + dr["_imageurl"].ToString(); 
        dr.Close();

        if (File.Exists(Server.MapPath(path)))
        {


            File.Delete(Server.MapPath(path));
        }
        if (i_result > 0)
        {
            msg("删除成功！！");
            bing();
        }

    }
 
    protected void cm_Command(object sender, CommandEventArgs e)
    {

    }
    //public string i_url(string str)
    //{
    //    string tt= "~/"
    //}
}
