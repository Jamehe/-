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
public partial class admin_helpadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLLHelpcate bllhelpcate = new BLLHelpcate();
            DataSet ds = bllhelpcate.select();
            dl_cate.DataSource = ds;
            dl_cate.DataBind();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_title.Text = "";
        FCKeditor1.Value = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Help help = new Help();
        help.Title = txt_title.Text;
        help.Content =FCKeditor1.Value;
        help.Cateid = Convert.ToInt32(dl_cate.SelectedValue);

        BLLhelp bllhelp = new BLLhelp();
        int result = bllhelp.insert(help);
        if (result>0)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('添加成功');location.href='helplist.aspx'");
        }
        else
        {
            Common.MessageAlert.Alert(Page,"添加失败");
        }

    }
}
