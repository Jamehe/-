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
public partial class kfzx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {          
            //BLLhelp bllhelp = new BLLhelp();
            //DataSet ds1 = bllhelp.selectAll();
            //Repeater2.DataSource = ds1;
            //Repeater2.DataBind();

            BLLHelpcate bllhelpcate = new BLLHelpcate();
            DataSet ds = bllhelpcate.select();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

           
        }
        

    }
}
