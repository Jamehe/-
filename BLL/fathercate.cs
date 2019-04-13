using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
   public class fathercate
    {
       public int insert(Model.fathercate mym)
       {
           DAL.fathercate dal = new DAL.fathercate();
           return dal.insert(mym);
       }
       public DataSet dataset()
       {
           DAL.fathercate dal = new DAL.fathercate();
           return dal.dataset();
       }
       public int update(Model.fathercate mym)
       {
           DAL.fathercate dal = new DAL.fathercate();
           return dal.update(mym);
       }
       public int delete(int f_id)
       {
           DAL.fathercate dal = new DAL.fathercate();
           return dal.delete(f_id);
       }
    }
    
}
