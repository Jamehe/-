using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
   public  class DALorderupdate
    {
        public SqlDataReader  readorder(Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable where _id=@id");
            SqlParameter[] par = { new SqlParameter("@id", SqlDbType.Int, 4) };
            par[0].Value  = myorder.id;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString (),par);
            
 
        }
        public int update(Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update ordertable set _paystate=@paystate,_prostate=@prostate,_sellremarks=@sellremarks where _id=@id");
            SqlParameter[] par ={new  SqlParameter ("@id",SqlDbType .Int,4),
                                new  SqlParameter ("@paystate",SqlDbType .Int ,4),
                                new  SqlParameter ("@prostate",SqlDbType .Int ,4),
                                new SqlParameter ("@sellremarks", SqlDbType .VarChar ,350)
                                };
            par[0].Value = myorder.id;
            par[1].Value  = myorder.paystate;
            par[2] .Value = myorder.prostate;
            par[3].Value = myorder.sellremarks;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }
        public DataSet bindgr(Model.orderdetail myorderdetail)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from orderdetail where _ordernum=@ordernum");
            SqlParameter [] par={new SqlParameter ("@ordernum",SqlDbType.VarChar ,50)
                                };
            par[0].Value = myorderdetail.ordernum;
            return Common.DbHelperSQL.Query(sql.ToString(), par);
            
        }

    }
}
