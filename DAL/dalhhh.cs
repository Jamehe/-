using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;


namespace DAL
{
   public  class dalhhh
    {
        public int hh(Model .admin ad)
        {
        
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into admin(_name,_pwd) values(@name,@pwd)");
            SqlParameter[] par ={new SqlParameter ("@name",SqlDbType .VarChar, 50),
                           new SqlParameter ("@pwd",SqlDbType .VarChar, 50)};
            par[0].Value = ad.name;
            par[1].Value = ad.pwd;
            int result = Common .DbHelperSQL.ExecuteSql(sql.ToString (),par);
            return result;
        }
    }
}
