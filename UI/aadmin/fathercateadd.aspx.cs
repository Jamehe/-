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

    }
    public void msg(string msg)
    {
        BLL.tis myb = new BLL.tis();
        myb.msg(Page, msg);
    }
    protected void tijiao_Click(object sender, EventArgs e)
    {
        if (fathercatename.Text != null)
        {
            Model.fathercate mym = new Model.fathercate();
            mym.fathername = fathercatename.Text;
           
            BLL.fathercate myb = new BLL.fathercate();
            int result = myb.insert(mym);
            if (result > 0)
            {
                msg("添加成功！！");
                fathercatename.Text = "";
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
 