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

public partial class PersonalInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["_userid"] == null)
        {
            Common.MessageAlert.AlertLocation(Page, "alert('对不起，您没有登陆！');location.href='Login.aspx'");
        }
        else
        {
            if (!IsPostBack)
            {
                pp();
            }
        }
    }
    public void pp()
    {
        Model.user mod = new Model.user();
        mod.userid = Convert.ToInt32(Session["_userid"]);
        BLL.user bll = new BLL.user();
        SqlDataReader dr = bll.drs(mod);
        if(dr!=null)
        {
            if (dr.Read())
            {
                Label2.Text = dr["_email"].ToString();
                Label1.Text = dr["_username"].ToString();
                TextBox5.Text = dr["_msn"].ToString();
                TextBox6.Text = dr["_qq"].ToString();
                TextBox1.Text = dr["_safequestion"].ToString();
                TextBox2.Text = dr["_safepwd"].ToString();
            }
            dr.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.user mo = new Model.user();
        mo.userid = Convert.ToInt32(Session["_userid"]);
        mo.msn = Server.HtmlEncode(TextBox5.Text);
        mo.qq =Server.HtmlEncode(TextBox6.Text);
        mo.safequestion =Server.HtmlEncode(TextBox1.Text);
        mo.safepwd =Server.HtmlEncode(TextBox2.Text);
        BLL.user bllu = new BLL.user();
        int i = bllu.upus(mo);
        if (i > 0)
        {
            Common.MessageAlert.Alert(Page, "修改成功！");
        }
        else 
        {
            Common.MessageAlert.Alert(Page,"修改失败！");
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 6)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Model.user mos = new Model.user();
            mos.userid = Convert.ToInt32(Session["_userid"]);
            mos.pwd = TextBox7.Text;
            BLL.user blus = new BLL.user();
            SqlDataReader dr = blus.checkPwd(mos);
            if (dr.Read())
            {

                Model.user mod = new Model.user();
                mod.userid = Convert.ToInt32(Session["_userid"]);
                mod.pwd = Server.HtmlEncode(TextBox9.Text);
                BLL.user bllu = new BLL.user();
                int i = bllu.upPwd(mod);
                if (i > 0)
                {
                    Common.MessageAlert.Alert(Page, "密码修改成功！");
                }
                else
                {
                    Common.MessageAlert.Alert(Page, "密码修改不成功！");
                }
                dr.Close();

            }
            else
            {
                Common.MessageAlert.Alert(Page, "原密码错误！");
            }
        }
    }
   
}
