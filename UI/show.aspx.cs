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
public partial class cjwt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        BLLHelpcate bllhelpcate = new BLLHelpcate();
        DataSet ds = bllhelpcate.select();
        Repeater1.DataSource = ds;
        Repeater1.DataBind();

        DataSet ds2 = bllhelpcate.select(id);
        Repeater3.DataSource = ds2;
        Repeater3.DataBind();


        BLLhelp bllhelp = new BLLhelp();
        DataSet ds1 = bllhelp.selectAll(id);
        Repeater2.DataSource = ds1;
        Repeater2.DataBind();

        
       Model.Helpcate helpcate=new Model.Helpcate();
        helpcate.ID=id;

        SqlDataReader sdr = bllhelpcate.sqldatareader(helpcate);
        if (sdr.Read())
        {
            Page.Title = sdr["_catename"].ToString();
            
        }
        else
        {
            sdr.Close();
            if (Label1.Text == "个人注册及信息管理")
            {
                Response.Write(Label1.Text);
                Page.Title = "个人注册及信息管理";

            }
        }
       

    }
}
