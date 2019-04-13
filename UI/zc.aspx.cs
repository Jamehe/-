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
using BLL;
using Model;
public partial class zc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLLHelpcate bllhelpcate = new BLLHelpcate();
        DataSet ds = bllhelpcate.select();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

        Page.Title = Label1.Text;
       

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PersonalInfo.aspx");
       
    }
}
