using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
namespace BLL
{
    public class News
    {
        public int add(Model.News mn)
        {
            DAL.News dn = new DAL.News();
            int result = dn.add(mn);
            return result;
        }
        public int _delete(Model.News mn)
        { 
            DAL.News dn=new DAL.News();
            int result = dn._delete(mn);
            return result;
        }
        public SqlDataReader datareader(Model.News mn)
        {
            DAL.News dn = new DAL.News();
            SqlDataReader sdr = dn.datareader(mn);
            return sdr;
        }
        public int update(Model.News mn)
        {
            DAL.News dn = new DAL.News();
            int result = dn.update(mn);
            return result;
        }
    }  
}
