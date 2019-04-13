using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
   public class product
    {
       public int insert(Model.product mym)
       {
           DAL.product dal = new DAL.product();
           return dal.Insert(mym);
       }
       public DataSet dataset()
       {
           DAL.product dal = new DAL.product();
           return dal.dataset();
       }
       public int delete_id(Model.product mym)
       {
           DAL.product dal = new DAL.product();
           return dal.delete_id(mym);
       }
       public DataSet select_title(Model.product mym)
       {
           DAL.product dal = new DAL.product();
           return dal.select_title(mym);

       
       }
       public string select_imageid(Model.product mym)
       {
           DAL.product dal = new DAL.product();
           return dal.select_imageid(mym);
       }
       public SqlDataReader selectupdate(int mym)
       {
           DAL.product dal = new DAL.product();
           return dal.selectupdate(mym);
       }
       public int update(Model.product mym)
       {
           DAL.product dal = new DAL.product();
           return dal.update(mym);
       }
       public int num(int cateid)
       {
           DAL.product dal = new DAL.product();
           return dal.num(cateid);
       }

       //

       public DataSet drpo(Model.product aa)
       {
           DAL.product dalp = new DAL.product();
           return dalp.drpo(aa);
       }
       public SqlDataReader drpr(Model.product aa)
       {
           DAL.product dalps = new DAL.product();
           return dalps.drpr(aa);
       }
       public SqlDataReader drim(Model.product aa)
       {
           DAL.product dalpdd = new DAL.product();
           return dalpdd.drima(aa);
       }
       //


       public int num_cateid(int cateid)
       {
           DAL.product dal = new DAL.product();
           return dal.num_cateid(cateid);
       }
       public DataSet p_dataset(int cateid, int pageindex, int pagesize, string table)
       {
           DAL.product dal = new DAL.product();
           return dal.p_dateset(cateid, pageindex, pagesize, table);
       }

    }

}
