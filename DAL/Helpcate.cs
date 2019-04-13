using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
using Common;
namespace DAL
{
    public class Helpcate
    {
        public int insert(Model.Helpcate mh)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into helpcate");
            sql.Append(" values ( ");
            sql.Append("@name");
            sql.Append(")");
            SqlParameter[] par = {
                                     new SqlParameter("@name",SqlDbType.VarChar,50) 
                                 };
            par[0].Value = mh.Catename;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        public SqlDataReader sqldatareader(Model.Helpcate mh)
        {

            StringBuilder sql = new StringBuilder();
            sql.Append("select * from helpcate");
            sql.Append(" where _cateid = @id");
            SqlParameter[] par = { new SqlParameter("@id", SqlDbType.Int, 4) };
            par[0].Value = mh.ID;
            SqlDataReader sdr = Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);
            return sdr;
        }
        public int _delete(Model.Helpcate mh)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append(" delete from helpcate  ");
            sql.Append(" where _cateid=@id  ");
            SqlParameter [] par={ new SqlParameter("@id",SqlDbType.Int,4)  };
            par[0].Value = mh.ID;
            int result= Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
            return result;
        }
        public int update(Model.Helpcate mh)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append(" update helpcate set ");
            sql.Append(" _catename=@name ");
            sql.Append(" where _cateid=@id ");
            SqlParameter[] par = { new SqlParameter("@name",SqlDbType.VarChar,50),
                                    new SqlParameter("@id",SqlDbType.Int,4 ) };
            par[0].Value = mh.Catename;
            par[1].Value = mh.ID;
            int result = DbHelperSQL.ExecuteSql(sql.ToString(),par);
            return result;
        }
      
    }
}
