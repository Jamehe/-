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

public partial class ACIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_userid"] == null)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('对不起，您没有登陆！');location.href='Login.aspx'");
        }
        else
        {
            Label1.Text=Session["_username"].ToString();

            Model.user mol = new  Model.user ();
            mol.userid = Convert.ToInt32(Session["_userid"]);
            BLL.user bls = new BLL.user();
            SqlDataReader dr = bls.checkById(mol);
            if (dr.Read())
            {
                Label2.Text = dr["_logintime"].ToString();
            }
            DateTime dt = DateTime.Now;
            Model.user mod = new Model.user();
            mod.userid = Convert.ToInt32(Session["_userid"]);
            mod.time = dt;
            BLL.user blur = new BLL.user();
            int i = blur.loginLastTime(mod);
        }
        //下载于www.mycodes.net
    }
}
