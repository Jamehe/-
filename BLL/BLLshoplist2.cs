using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace BLL
{
   public  class BLLshoplist2
    {
        public int insertOrdertable(Model.order myorder)
        {
            DAL.DALshoplist2 dall = new DAL.DALshoplist2();
            return dall.insertOrdertable(myorder);
      
        }
       //更新ordertable
        public int updateOrdertable(Model.order myorder)
        {
            DAL.DALshoplist2 dall = new DAL.DALshoplist2();
            return dall.updateOrdertable(myorder);
        }
       //更新orderTable根据id更新
        public int updatePaystateById(Model.order myorder)
        {
            DAL.DALshoplist2 dall = new DAL.DALshoplist2();
            return dall.updatePaystateById(myorder);
        }
        public int insertdetail(Model.orderdetail  myorderdetail)
        {
            DAL.DALshoplist2 dall = new DAL.DALshoplist2();
            return dall.insertdetail(myorderdetail);

        }
        public  SqlDataReader  readaddress(Model.address myaddress)
        {
            DAL.DALshoplist2 dall = new DAL.DALshoplist2 ();
            return dall.readaddress(myaddress);

        }
    }
}
