using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
      public    class DALshoplist
    {
        public SqlDataReader readpro(Model.product myorder)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from product where _id=@id");
            SqlParameter[] par = { new SqlParameter("@id", SqlDbType.Int, 4) };
            par[0].Value = myorder.id;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par); 


        }
    }
}
