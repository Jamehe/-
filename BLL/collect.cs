using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BLL
{
   public   class collect
    {
       public DataSet  drco(int a,int b, Model.collect aa)
       {
           DAL.collect dalc = new DAL.collect();
           return dalc.drco(a,b,aa);
       }
       public int insert(Model.collect aa)
       {
           DAL.collect dac = new DAL.collect();
           return dac.inser(aa);
       }
       public int insertc(Model.collect aa)
       {
           DAL.collect dalcd = new DAL.collect();
           return dalcd.inser(aa);
       }
       public int depo(Model.collect aa)
       {
           DAL.collect dalc = new DAL.collect();
           return dalc.deco(aa);
       }
       public int count(Model.collect aa)
       {
           DAL.collect dao = new DAL.collect();
           return dao.count(aa);
       }
       public int insertco(Model.collect aa)
       {
           DAL.collect dcd = new DAL.collect();
           return dcd.inserc(aa);
       }
       public SqlDataReader drsco(Model.collect aa)
       {
           DAL.collect das = new DAL.collect();
           return das.drcopr(aa);
       }
    }
   //public class product
   //{
   //    public DataSet drpo(Model.product aa)
   //    {
   //        DAL.product dalp = new DAL.product();
   //        return dalp.drpo(aa);
   //    }
   //    public SqlDataReader drpr(Model.product aa)
   //    {
   //        DAL.product dalps = new DAL.product();
   //        return dalps.drpr(aa);
   //    }
   //    public SqlDataReader drim(Model.product aa)
   //    {
   //        DAL.product dalpdd = new DAL.product();
   //        return dalpdd.drima(aa);
   //    }
       
   //}
   //public class proimage
   //{
   //    public SqlDataReader drim(Model.proimage aa)
   //    {
   //        DAL.proimage da = new DAL.proimage();
   //        return da.dsim(aa);
   //    }
   //}
}
