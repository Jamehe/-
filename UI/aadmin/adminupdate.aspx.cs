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
public partial class admin_addupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            admin admin1 = new admin();
            admin1.id = Convert.ToInt32(Request.QueryString["id"]);

            BLLadmin blladmin = new BLLadmin();
            SqlDataReader sdr = blladmin.readAdmin(admin1);
            if (sdr.Read())
            {
                int i = Convert.ToInt32(sdr["_id"].ToString());
                Label1.Text = i.ToString();
                txt_name.Text = sdr["_name"].ToString();
                txt_pwd.Text = Common.DESEncrypt.Decrypt(sdr["_pwd"].ToString());

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        admin admin2 = new admin();
        admin2.id = Convert.ToInt32(Label1.Text);
        admin2.name = txt_name.Text;
        admin2.pwd =Common.DESEncrypt.Encrypt(txt_pwd.Text);

        BLLadmin blladmin = new BLLadmin();
        int result = blladmin.updateAdmin(admin2);
        if (result > 0)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('更新成功');location.href='adminList.aspx'");
        }
        else
        {
            Common.MessageAlert.Alert(Page, "更新失败");
        }
    }
}
