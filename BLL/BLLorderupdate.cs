using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
  public   class BLLorderupdate
    {
        public SqlDataReader readorder(Model.order myorder)
        {
            DAL.DALorderupdate dall = new DAL.DALorderupdate();
            return dall.readorder(myorder);
        }
        public int update(Model.order myorder)
        {
            DAL.DALorderupdate dall = new DAL.DALorderupdate();
            return dall.update(myorder);
        }
        public DataSet bindgr(Model .orderdetail myorderdetail)
        {
            DAL.DALorderupdate dall = new DAL.DALorderupdate();
            return dall.bindgr(myorderdetail );
        }
    }
}
