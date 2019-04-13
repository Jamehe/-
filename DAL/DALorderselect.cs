using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient ;
using System.Data ;
namespace DAL
{
    public     class DALorderselect
    {
        /*****************订单***************/
        public int pageint()
        {
            StringBuilder sql = new StringBuilder();
            sql.Append ("select count(*) from ordertable");
            int result = Convert.ToInt32(Common.DB .ExecuteScalar (sql.ToString ()));
            return result;
        }
        public int pageint1(Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
           
            sql.Append("select count(*) from ordertable where _ordernum like '%"+myorder.ordernum+"%'");
            int result =Convert .ToInt32 ( Common.DB.ExecuteScalar(sql.ToString()));

          

            
            return result;
        }
        public DataSet pagebind(int a,int b)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable order by _id desc ");
            DataSet ds = Common.DbHelperSQL.pageQuery(sql.ToString(), a, b);
            return ds;
        }
        public DataSet pagebind1(int a, int b,Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
         //   sql.Append("select * from ordertable where _ordernum like '%@ordernum%' order by _id desc");
            sql.Append("select * from ordertable where _ordernum like '%"+myorder .ordernum +"%' order by _id desc");
           // SqlParameter[] par = { new SqlParameter("@ordernum", SqlDbType.VarChar, 50) };
            //par[0].Value = myorder.ordernum;
           // return Common.DbHelperSQL.PageQuery  (sql.ToString (),a,b, par);
            return Common.DB.PagedataSet(sql.ToString (), a, b,"info");
        }
        public int delete(Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from ordertable where _id=@id");
            SqlParameter[] par = { new SqlParameter("@id", SqlDbType.Int, 4) };
            par[0].Value  = myorder.id;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }

    }
}
