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

public partial class address : System.Web.UI.Page
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
                drad();

            }
        }

    }
    public void drad()
    {
        Model.address moa = new Model.address();
        moa.userid = Convert.ToInt32(Session["_userid"]);
        BLL.daladdress blla = new BLL.daladdress();
        SqlDataReader dr = blla.drad(moa);
        if (dr!= null)
        {
            if (dr.Read())
            {
               
                TextBox7.Text = dr["_mail"].ToString();
                TextBox8.Text = dr["_name"].ToString();
                TextBox5.Text = dr["_mobile"].ToString();
                TextBox6.Text = dr["_tel"].ToString();
                TextBox1.Text = dr["_address"].ToString();
                dr.Close();
            }
            dr.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Model.address mode = new Model.address();
        mode.userid = Convert.ToInt32(Session["_userid"]);

        BLL.daladdress blla = new BLL.daladdress();
        SqlDataReader dr = blla.dra(mode);
        if (dr.Read())
        {
            Model.address mod = new Model.address();
            mod.userid = Convert.ToInt32(Session["_userid"]);
            mod.mail = TextBox7.Text;
            mod.name = TextBox8.Text;
            mod.mobile = TextBox5.Text;
            mod.tel = TextBox6.Text;
            mod.Address = TextBox1.Text;
            BLL.daladdress blla1 = new BLL.daladdress();
            int i = blla1.upad(mod);
            //Response.Write(i);
            if (i > 0)
            {
                Common.MessageAlert.Alert(Page, "提交成功！");
            }
            else
            {
                Common.MessageAlert.Alert(Page, "提交失败！");
            }
        }
        else
        {
            Model.address modd = new Model.address();
            modd.userid = Convert.ToInt32(Session["_userid"]);

            BLL.daladdress bla = new BLL.daladdress();
            int f = bla.inserid(modd);


        Model.address mod = new Model.address();
        mod.userid =Convert.ToInt32(Session["_userid"]);
        mod.mail = TextBox7.Text;
        mod.name = TextBox8.Text;
        mod.mobile = TextBox5.Text;
        mod.tel = TextBox6.Text;
        mod.Address = TextBox1.Text;
        BLL.daladdress blla2 = new BLL.daladdress();
        int i = blla2.upad(mod);
        if (i > 0)
        {
            Common.MessageAlert.Alert(Page, "提交成功！");
        }
        else
        {
            Common.MessageAlert.Alert(Page, "提交失败！");
        }
        }
    } 
}
