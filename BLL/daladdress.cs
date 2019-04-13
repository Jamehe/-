using System;
using System.Collections.Generic;

using System.Text;
using System.Data ;
using System.Data.SqlClient;

namespace BLL
{
   public  class daladdress
    {
       public SqlDataReader drad(Model.address aa)
       {
           DAL.daladdress dll = new  DAL.daladdress ();
           return dll.drad(aa);
       }
       public int upad(Model.address aa)
       {
           DAL.daladdress ad = new  DAL.daladdress ();
           return ad.upad(aa);
           
       }
       public int upada(Model.address aa)
       {
           DAL.address dala = new DAL.address();
           return dala.insert(aa);
       }
       public int addre(Model.address aa)
       {
           DAL.daladdress dal = new  DAL.daladdress ();
           return dal.addre(aa);
       }
       public int inserid(Model.address aa)
       {
           DAL.daladdress daa = new DAL.daladdress();
           return daa.insert(aa);
       }
       public SqlDataReader dra(Model.address aa)
       {
           DAL.daladdress dsa = new DAL.daladdress();
           return dsa.adr(aa);
       }
    }
}
