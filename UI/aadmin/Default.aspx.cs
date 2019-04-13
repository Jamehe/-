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
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if ( Request.Cookies["login"]!=null)
        {
            Label1.Text = Request.Cookies["login"].Values["_name"];
            Label2.Text=Request.Cookies["login"].Values["_name"];
            
            if (Convert.ToInt32(Request.Cookies["login"].Values["_role"])==1)
            {
                   Label4.Text ="超级管理员";
            }
            else
            {
                Label4.Text = "普通管理员";
            }

        }
    }
}
