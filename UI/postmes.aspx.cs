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


public partial class postmes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["title"] != null && Request["content"] != null)
        {
            if (Request["title"].Trim().Length == 0 || Request["content"].Trim().Length == 0)
            {
                Response.Write("3");
                //return "0";
               
            }
            else
            {
                string title = Common.DB.CheckStr(Request["title"].ToString());
                string content = Common.DB.CheckStr(Request["content"].ToString());
            Response.Write(insert(title, content));
            }

        }
        else {
            Response.Write("2");
        }
    }


    public string insert(string title,string content)
    {

        Model.message mes = new Model.message();
        mes.title = title;
        mes.content = content;
        mes.ip = Request.UserHostAddress;

        BLL.BLLmessage bllmessage = new BLL.BLLmessage();
        
        int result = bllmessage.post(mes);
        
        if (result > 0)
        {

            return "1";

        }
        else
        {

            return "0";
        }
    }

}
