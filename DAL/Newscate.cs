using System;
using System.Collections.Generic;

using System.Data.SqlClient;
using System.Text;
using System.Data;
namespace DAL
{
   public class Newscate
    {
       public int insert(Model.Newscate mn)
       {
           
           StringBuilder sql = new StringBuilder();
           sql.Append("insert into newscate");
           sql.Append(" values (");
           sql.Append(" @username ");
           sql.Append(")");
           SqlParameter[] par = {
                                 new SqlParameter("@username",SqlDbType.VarChar,50)
                             };
           par[0].Value = mn.Catename;
           int result = Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
           return result;
       }
       public SqlDataReader sqldatareader(Model.Newscate mn)
       {

           StringBuilder sql = new StringBuilder();
           sql.Append("select * from newscate");
           sql.Append(" where _cateid = @id");
           SqlParameter[] par = { new SqlParameter("@id",SqlDbType.Int,4) };
           par[0].Value = mn.ID;
           SqlDataReader sdr = Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
           return sdr;
       }
       public int update(Model.Newscate mn)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append(" update newscate set ");
           sql.Append(" _catename=@name ");
           sql.Append(" where _cateid = @id ");
           SqlParameter[] par = { new SqlParameter("@name",SqlDbType.VarChar,50),
                                  new SqlParameter("@id",SqlDbType.Int,4) };
           par[0].Value = mn.Catename;
           par[1].Value = mn.ID;
           int result = Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
           return result;
       }
       public int _delete(Model.Newscate mn)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append(" delete from newscate ");
           sql.Append(" where _cateid=@id ");
           SqlParameter[] par = { new SqlParameter("@id", SqlDbType.Int, 4) };
           par[0].Value = mn.ID;
           int result = Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
           return result;
       }
    }
}
