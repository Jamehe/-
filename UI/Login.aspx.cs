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

public partial class Login_aa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string email = Server.HtmlEncode(TextBox3.Text);
        string pwd = Server.HtmlEncode(TextBox4.Text);
        Model.user mod = new Model.user();
        mod.email = email;
        mod.pwd = pwd;

        BLL.user bll = new BLL.user();
        SqlDataReader  dr = bll.login(mod);
        
        if (CheckBox1.Checked)
        {
            SqlDataReader dr1 = bll.lo(mod);
            if (dr1.Read())
            {
                Session["_username"] = dr1["_username"].ToString();
                Session["_userid"]=dr1["_userid"].ToString();
               
                dr1.Close();
            }
            dr1.Close();
        }
        else
        {
            Session["_username"] = "";
        }

        if (Session["CheckCode"] != null)
        {
            
            if (TextBox1.Text.ToLower() == Session["CheckCode"].ToString().ToLower())
            {
                
                if (dr.Read())
                {
                    Response.Redirect("ACIndex.aspx");


                    
                    Model.user mol = new Model.user();
                    mol.userid = Convert.ToInt32(Session["_userid"]);
                   
                    BLL.user bllu = new BLL.user();
                    int r = bllu.loginLastTime(mol);
                    SqlDataReader dr2 = bll.lo(mod);
                    if (dr2.Read())
                    {
                        Session["_username"] = dr2["_username"].ToString();
                        Session["_userid"] = dr2["_userid"].ToString();
                        dr2.Close();
                    }
                    dr2.Close();
                }
                    
                else
                {
                    Common.MessageAlert.Alert(Page, "账号或密码错误，登入失败！");
                }

            }
            else
            {
                Common.MessageAlert.Alert(Page, "验证码错误！");
                
            }



        }
    }
}
