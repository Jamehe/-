using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BLL
{
   public class BLLHelpcate
    {
       public int insert(Model.Helpcate mh)
       {
           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           int result = dh.insert(mh);
           return result;
       }
       public SqlDataReader sqldatareader(Model.Helpcate mh)
       {
           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           SqlDataReader sdr = dh.sqldatareader(mh);
           return sdr;
       }
       public int _delete(Model.Helpcate mh)
       {
           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           int result = dh._delete(mh);
           return result;
       }
       public int update(Model.Helpcate mh)
       {
           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           int result = dh.update(mh);
           return result;
      }

       public DataSet select()
       {

           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           return dh.select();
       }

       public DataSet select(int cateid)
       {
           DAL.DALHelpcate dh = new DAL.DALHelpcate();
           return dh.select(cateid);
       }
    }
    
}
