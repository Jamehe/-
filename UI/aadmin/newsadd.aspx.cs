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
using Common;
public partial class admin_newsadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            _source.Text = "校园淘网";
            datablind();

        }
    }
    protected void datablind()
    {
        string str = "  select * from newscate ";
        DataSet ds = DB.dataSet(str);
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        _title.Text = "";
        author.Text = "";
        DropDownList1.SelectedValue = "0";
        DropDownList2.SelectedValue = "0";
        FCKeditor1.Value = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.News mn = new Model.News();
        BLL.News bn = new BLL.News();
        mn.Title = _title.Text;
        mn.From = _source.Text;
        mn.Author = author.Text;
        mn.Content = FCKeditor1.Value;
        mn.Top = Convert.ToInt32( DropDownList1.SelectedValue);
        mn.Ispic = Convert.ToInt32(DropDownList2.SelectedValue);
        mn.Cateid = Convert.ToInt32(DropDownList3.SelectedValue);
        int result = bn.add(mn);
        //Response.Write(_title.Text);
        //Response.Write(author.Text);
        if (result > 0)
        {
            Response.Write("<script>alert('添加成功'),location.href='newsadd.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败'),location.href='newsadd.aspx'</script>");
        }
    }
}
