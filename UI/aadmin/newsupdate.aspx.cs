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

using Common;
using System.Data.SqlClient;
public partial class admin_newsupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            _source.Text = "秋哈网";
            datablind();
            Model.News mn = new Model.News();
            mn.ID = Convert.ToInt32(Request.QueryString["uid"]);
            BLL.News bn = new BLL.News();
            SqlDataReader sdr = bn.datareader(mn);
            if (sdr.Read())
            {
                _title.Text = sdr["_title"].ToString();
                _source.Text=sdr["_from"].ToString();
                author.Text = sdr["_author"].ToString();
                DropDownList1.SelectedValue = sdr["_top"].ToString();
                DropDownList2.SelectedValue = sdr["_cateid"].ToString();
                DropDownList3.SelectedValue = sdr["_ispic"].ToString();
                FCKeditor1.Value = sdr["_content"].ToString();
            }
            sdr.Close();
        }
    }
    protected void datablind()
    {
        string str = "  select * from newscate ";
        DataSet ds = DB.dataSet(str);
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.News mn = new Model.News();
        mn.ID = Convert.ToInt32(Request.QueryString["uid"]);

        mn.Title = _title.Text;
        mn.From = _source.Text;
        mn.Author = author.Text;
        mn.Content = FCKeditor1.Value;
        mn.Top = Convert.ToInt32(DropDownList1.SelectedValue);
        mn.Ispic = Convert.ToInt32(DropDownList2.SelectedValue);
        mn.Cateid = Convert.ToInt32(DropDownList3.SelectedValue);
        BLL.News bn = new BLL.News();
        int result = bn.update(mn);
        if (result > 0)
        {
            Response.Write("<script>alert('添加成功'),location.href='newslist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败'),location.href=''newslist.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        _title.Text = "";
        author.Text = "";
        DropDownList1.SelectedValue = "0";
        DropDownList2.SelectedValue = "0";
        FCKeditor1.Value = "";
    }
}
