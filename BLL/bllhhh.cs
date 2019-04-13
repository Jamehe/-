using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;

namespace BLL
{
   public  class bllhhh
    {
        public int insert(Model .admin ad)
        {
            DAL.dalhhh dalhh = new DAL.dalhhh();
            return dalhh.hh (ad);
        }
    }
}
