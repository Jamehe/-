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


public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        BLL.adminuser bll = new BLL.adminuser();
        int i = bll.count();
        AspNetPager1.RecordCount = i;
        AspNetPager1.PageSize = 10;
        pp();
        DataBind();
        Label2.Visible = false;
    }
    public void pp()
    {
        BLL.adminuser bllad = new  BLL.adminuser ();
        DataSet ds = bllad.dsus(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "user");
        GridView1.DataSource = ds.Tables["user"];
        GridView1.DataBind();
    }
    public void pp1()
    {

        BLL.adminuser bllad = new  BLL.adminuser ();
        DataSet ds = bllad.dsus(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "user");
        GridView1.DataSource = ds.Tables["user"];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "")
        {
            Label2.Visible = true;
            Label3.Visible = true;
            GridView1.Visible = false;
            AspNetPager1.Visible = false;
        }
        else
        {
            Label2.Visible = false;
            Label3.Visible = true;
            GridView1.Visible = true;
            AspNetPager1.Visible = true;

            Model.user mod = new Model.user();
            mod.username = TextBox3.Text;
            BLL.adminuser blls = new BLL.adminuser();
            int i = blls.coun(mod);
            AspNetPager1.RecordCount = i;
            AspNetPager1.PageSize = 5;
            
           
            Model.user mode = new Model.user();
            mode.username = TextBox3.Text;
            DataSet ds = blls.seu(AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "user",mod);
            GridView1.DataSource = ds.Tables["user"];
            GridView1.DataBind();
            if (i == 0)
            {
                AspNetPager1.Visible = false;
                Label2.Visible = true;
                Label3.Visible = false;

            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            int i = Convert.ToInt32(e.CommandArgument);
            Model.user mode = new Model.user();
            mode.userid = i;
            BLL.adminuser bll = new  BLL.adminuser();
            int result = bll.dele(mode);
            if (result > 0)
            {
                Response.Write("<script>alert('删除成功!');location.href='userselect.aspx'</script>");
            }
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        if (TextBox3.Text == "")
        {
            pp();
        }
        else
        {
            ss();
            pp1(); 
            
        }
     
    }
    public void ss()
    {
        Model.user mod = new Model.user();
        mod.username = TextBox3.Text;
        BLL.adminuser blls = new BLL.adminuser();
        int i = blls.coun(mod);
        AspNetPager1.RecordCount = i;
        AspNetPager1.PageSize = 5;
    }
    public string subStr(string sString, int nleng)
    {
        

        if (sString.Length <= nleng)
        {
            return sString;
        }
        else
        {
            string snewstr = sString.Substring(0, nleng);
            snewstr = snewstr + "...";
            return snewstr;
        }
    }
}
