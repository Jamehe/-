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
using Model;
using BLL;
public partial class zcym : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        BLLHelpcate bllhelpcate = new BLLHelpcate();
        DataSet ds = bllhelpcate.select();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

        int _id = Convert.ToInt32(Request.QueryString["_id"]);
        Help help = new Help();
        help.ID = _id;

        BLLhelp bllhelp = new BLLhelp();
        SqlDataReader sdr = bllhelp.readinfo(help);
        if (sdr.Read())
        {
            Label1.Text = sdr["_title"].ToString();
            Label2.Text = sdr["_content"].ToString();
            Page.Title = Label1.Text;
        }

    }
}