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
public partial class admin_adminadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Request.Cookies["login"].Values["_role"])==1)
        {        
            admin admin1 = new admin();
            admin1.name = txt_name.Text;

            BLLadmin blladmin1 = new BLLadmin();
            SqlDataReader sdr = blladmin1.checkAdmin(admin1);
            if (sdr.Read())
            {
                Common.MessageAlert.Alert(Page, "该管理员已存在");
                txt_name.Text = "";
                txt_pwd.Text = "";
                sdr.Close();
            }
            else
            {
                admin admin2 = new admin();
                admin2.name = txt_name.Text;
                admin2.pwd =Common.DESEncrypt.Encrypt(txt_pwd.Text);
                admin2.role =Convert.ToInt32(dl_select.SelectedValue);

                BLLadmin blladmin2 = new BLLadmin();
                int result = blladmin2.insertAdmin(admin2);
                if (result > 0)
                {
                    Common.MessageAlert.AlertLocation(Page, "alert('添加管理员成功');location.href='adminList.aspx'");
                }
            }
        }
        else
        {
            Common.MessageAlert.Alert(Page,"对不起您不能执行此操作");
            txt_name.Text = "";
            txt_pwd.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_pwd.Text = "";
    }
}
