using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace BLL
{
     public  class BLLshoplist
    {
        public SqlDataReader readpro(Model.product  myorder)
        {
            DAL.DALshoplist dall = new DAL.DALshoplist();
            return dall.readpro(myorder);
        }
    }
}
