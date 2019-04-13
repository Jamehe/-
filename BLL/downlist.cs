using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
   public class downlist
    {
       public int downloadadd(Model.downlist md)
       {
           DAL.downlist dd = new DAL.downlist();
           return dd.downloadadd(md);
       }
       public int update(Model.downlist md)
       {
           DAL.downlist dd = new DAL.downlist();
           return dd.update(md);
       }
       public SqlDataReader datareader(Model.downlist md)
       {
           DAL.downlist dd=new DAL.downlist();
           return dd.datareader(md);
       }
       public int _delete(Model.downlist md)
       {
           DAL.downlist dd = new DAL.downlist();
           return dd._delete(md);

       }
       public int click(Model.downlist md)
       {
           DAL.downlist dd = new DAL.downlist();
           return dd.click(md);
       }
    }
}
