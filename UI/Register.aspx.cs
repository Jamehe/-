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

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { }

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

        if (args.Value.Length < 6)
        {
            args.IsValid = true; 
        }
        else
        {
            args.IsValid = false;
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Page.IsValid == true)
        {
            Model.user mod = new Model.user();
            mod.email = TextBox7.Text;
            BLL.user bk = new BLL.user();

            SqlDataReader dr = bk.pp(mod);

            if (dr != null)
            {
                if (dr.Read())
                {

                    Common.MessageAlert.Alert(Page, "该邮箱号已存在！");
                    TextBox7.Text=" ";
              
                   
                    dr.Close();
                }
                else
                {     

                    Model.user mo = new Model.user();
                    mo.email = Server.HtmlEncode(TextBox7.Text);
                    mo.pwd = Server.HtmlEncode(TextBox6.Text);
                    mo.username = Server.HtmlEncode(TextBox8.Text);
                    mo.qq = Server.HtmlEncode(TextBox2.Text);
                    mo.msn = Server.HtmlEncode(TextBox3.Text);
                    mo.safequestion = Server.HtmlEncode(TextBox4.Text);
                    mo.safepwd = Server.HtmlEncode(TextBox5.Text);

                    BLL.user bll = new BLL.user();
                    int i = bll.insert(mo);
                    if (i > 0)
                    {
                        Common.MessageAlert.AlertLocation(Page, "alert('注册成功');location.href='Login.aspx'");
                        Model.user mod1 = new Model.user();
                        mod1.email = TextBox7.Text;
                        BLL.user blluser = new BLL.user();
                        SqlDataReader dr1 = blluser.findByMail(mod1);
                        if (dr1.Read())
                        {
                            Session["_userid"] = dr1["_userid"].ToString();
                            dr1.Close();
                        }
                        dr1.Close();
                        Model.address moadd = new   Model.address  ();

                        moadd.userid = Convert.ToInt32(Session["_userid"]);
                        
                        BLL.daladdress  bld = new  BLL.daladdress  ();
                        int f = bld.upada(moadd);

                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        TextBox8.Text = "";
                        TextBox9.Text = "";

                    }
                    else
                    {
                        Common.MessageAlert.Alert(Page, "注册失败！");
                    }
                }
            }
        }
    }
}
