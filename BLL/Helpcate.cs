using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace BLL
{
   public class Helpcate
    {
       public int insert(Model.Helpcate mh)
       {
           DAL.Helpcate dh = new DAL.Helpcate();
           int result = dh.insert(mh);
           return result;
       }
       public SqlDataReader sqldatareader(Model.Helpcate mh)
       {
           DAL.Helpcate dh = new DAL.Helpcate();
           SqlDataReader sdr = dh.sqldatareader(mh);
           return sdr;
       }
       public int _delete(Model.Helpcate mh)
       {
           DAL.Helpcate dh = new DAL.Helpcate();
           int result = dh._delete(mh);
           return result;
       }
       public int update(Model.Helpcate mh)
       {
           DAL.Helpcate dh = new DAL.Helpcate();
           int result = dh.update(mh);
           return result;
      }
       //public void define()
       //{
       //    Model.Helpcate mh = new Model.Helpcate();
       //    mh.ID = Convert.ToInt32(Request.QueryString["uid"]);
           
       //}
    }
    
}
