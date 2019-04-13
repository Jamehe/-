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
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        admin admin1 = new admin();
        admin1.name = txt_name.Text;
        admin1.pwd = txt_pwd.Text;
        admin1.role = Convert.ToInt32(DropDownList1.SelectedValue);
        BLLadmin blladmin = new BLLadmin();
        SqlDataReader sdr = blladmin._login(admin1);
        if (sdr.Read())
        {
            HttpCookie mycookie = new HttpCookie("login");
            mycookie.Values.Add("_name", txt_name.Text);
            mycookie.Values.Add("_role", DropDownList1.SelectedValue);

            TimeSpan ts = new TimeSpan(3, 0, 30, 0);

            DateTime dt = DateTime.Now;

           mycookie.Expires = dt.Add(ts);

            Response.AppendCookie(mycookie);
            sdr.Close();

            Response.Redirect("Default.aspx");


        }
        else
        {

            Common.MessageAlert.Alert(Page, "用户名或密码有误");
        }

    }
}
