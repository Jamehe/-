using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class adminuser
    {
        public DataSet dsuser(int a, int b, string c)
        {
            String sql = "select * from [user]";
            return Common.DB.PagedataSet(sql, a, b, c);
        }

        public int count()
        {
           
           string   sql="select count(*) from [user] ";
           int result = Convert .ToInt32( Common.DB.ExecuteScalar(sql));
           return result;
        }
        public int dele(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from [user] where _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter ("@id",SqlDbType.Int,4)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }
        public int cou(Model.user aa)
        {
            string sql = "select count(* )from [user] where _username like '%" + aa.username + "%' ";
            int result= Convert.ToInt32(Common.DB.ExecuteScalar(sql));
            return result;
        }
        public DataSet dsu(int a, int b, string c, Model.user aa)
        {
            string sql = "select * from [user] where _username like '%" + aa.username + "%' ";
            DataSet ds = Common.DB.PagedataSet(sql, a, b, c);
            return  ds;
        }
        public SqlDataReader drus(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType.Int,4)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
    }
}
