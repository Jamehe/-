using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          Regex r = new Regex("^\\s*([A-Za-z0-9_-]+(\\.\\w+)*@(\\w+\\.)+\\w{2,5})\\s*$");  
          
            if (Request["email"] != null && Request["email"].Trim().Length > 0)
            {   string email=Request["email"].ToString();

             //判断邮箱格式是否正确
            if (r.IsMatch(email))
            {
               Model.user mod = new Model.user();
               mod.email = email;
               BLL.user bk = new BLL.user();

               SqlDataReader dr = bk.pp(mod);

                if (dr.Read())
                {
                    Response.Write("0");
                    Response.End();
                }
                else
                {
                    Response.Write("1");
                    Response.End();
                }
            }
            else {

                Response.Write("2");
                Response.End();
            
            }
                
            }
            else {
                Response.Write("3");
                Response.End();
            }
        }
    
}