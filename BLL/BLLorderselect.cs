using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public   class BLLorderselect
    {
        public int pageint()
        {
            DAL.DALorderselect dall = new DAL.DALorderselect();
            return dall.pageint();
        }
        public int pageint1(Model .order myorder)
        {
            DAL.DALorderselect dall = new DAL.DALorderselect();
            return dall.pageint1(myorder );
        }
        public DataSet pagebind(int a, int b)
        {
            DAL.DALorderselect dall = new DAL.DALorderselect();
            return dall.pagebind(a, b);
        }
        public DataSet pagebind1(int a, int b,Model .order myorder)
        {
            DAL.DALorderselect dall = new DAL.DALorderselect();
            return dall.pagebind1(a, b,myorder );
        }
        public int delete(Model.order myorder)
        {
            DAL.DALorderselect dall = new DAL.DALorderselect();
            return dall.delete(myorder);
        }
  
    }
}
