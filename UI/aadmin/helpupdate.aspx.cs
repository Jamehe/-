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
public partial class admin_helpupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Help help = new Help();
            help.ID = Convert.ToInt32(Request.QueryString["id"]);

            BLLhelp bllhelp = new BLLhelp();
            SqlDataReader sdr = bllhelp.readinfo(help);
            if (sdr.Read())
            {
                Label1.Text = sdr["_id"].ToString();
                TextBox1.Text = sdr["_title"].ToString();
                FCKeditor1.Value = sdr["_content"].ToString();
            }
            sdr.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Help help = new Help();
        int id = Convert.ToInt32(Label1.Text);
        help.ID = id;
        help.Title = TextBox1.Text;
        help.Content = FCKeditor1.Value;

        BLLhelp bllhelp = new BLLhelp();
        int result = bllhelp.update(help);
        if (result > 0)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('更新成功');location.href='helplist.aspx'");
        }
        else
        {
            Common.MessageAlert.Alert(Page, "更新失败");
        }
    }
}
