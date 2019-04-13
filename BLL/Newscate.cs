using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
    public class Newscate
    {
        public int insert(Model.Newscate mn)
        {
            DAL.Newscate dn = new DAL.Newscate();
            int result = dn.insert(mn);
            return result;
        }
        public SqlDataReader sqldatareader(Model.Newscate mn)
        {

            DAL.Newscate dn = new DAL.Newscate();
            SqlDataReader sdr = dn.sqldatareader(mn);
            return sdr;
        }
        public int update(Model.Newscate mn)
        {
            DAL.Newscate dn = new DAL.Newscate();
            int result = dn.update(mn);
            return result;
        }
        public int _delete(Model.Newscate mn)
        {
            DAL.Newscate dn = new DAL.Newscate();
            int result = dn._delete(mn);
            return result;
        }
    }
}
