using System;
using System.Collections.Generic;

using System.Text;

namespace DAL
{
   public  class tis
    {
       public void msg(System.Web.UI.Page page, string msg)
       {
          Common.MessageAlert.Alert(page, msg);
       }
    }
}
