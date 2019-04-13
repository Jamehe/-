using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public  class fathercate
    {
       public int insert(Model.fathercate mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append("insert into fathercate ");

           sql.Append(" values (");

           sql.Append("@fathername");

           sql.Append(")");

           SqlParameter[] par = {
                             
                              new SqlParameter("@fathername",SqlDbType.VarChar,50),
                             
                             };



           par[0].Value = mym.fathername;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
       }
       public DataSet dataset()
       {
           StringBuilder sql = new StringBuilder();

           sql.Append("select * from fathercate");

           return Common.DbHelperSQL.Query(sql.ToString());
       }
       public int update(Model.fathercate mym)
       {
           string sql = "update fathercate set _fathername='" + mym.fathername + "' where _fathercateid=" + mym.fathercateid + "";
           return Common.DB.ExecuteSql(sql);

 
       }
       public int delete(int f_id)
       {
           string sql = "delete from fathercate where _fathercateid=" + f_id + " ";
           return Common.DB.ExecuteSql(sql);
       }

    }
}
