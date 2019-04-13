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

using System.Text;


public partial class admin_procateadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLL.fathercate myb = new BLL.fathercate();
            DataSet ds = myb.dataset();
            fathername.DataSource = ds.Tables[0];
            fathername.DataBind();
        }

    }
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void tijiao_Click(object sender, EventArgs e)
    {
        if (procatename.Text != null)
        {
            Model.procate mym = new Model.procate();
            mym.catename = procatename.Text;
            mym.fathercateid = Convert.ToInt32(fathername.SelectedValue);
            
            BLL.procate myb = new BLL.procate();
            int result = myb.insert(mym);
            if (result > 0)
            {
                msg("添加成功！！");
                procatename.Text = "";
            }
            else
            {
                msg("添加失败！！");
            }

        }
    }
    protected void quxiao_Click(object sender, EventArgs e)
    {

    }
 
}
 