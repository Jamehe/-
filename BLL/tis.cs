using System;
using System.Collections.Generic;

using System.Text;


namespace BLL
{
   public  class tis
   {
       public void msg(System.Web.UI.Page page, string msg)
       {
           DAL.tis dal = new DAL.tis();
          dal.msg(page, msg);
       }
    }
}
