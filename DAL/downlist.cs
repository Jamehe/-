using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using Common;
using System.Data;
using Common;
namespace DAL
{
   public class downlist
    {
       public  int  downloadadd(Model.downlist md)
       {
         StringBuilder sql=new StringBuilder();
         sql.Append(" insert into downlist   ");
         sql.Append(" (_title,_size,_click,_uploadurl)");
         sql.Append(" values (@name,@size,@click,@url)");
         SqlParameter[] par = { new SqlParameter("@name",SqlDbType.VarChar,150 ),
                                new SqlParameter("@size",SqlDbType.VarChar,50),
                                new SqlParameter("@click",SqlDbType.Int,4),
                                new SqlParameter("@url",SqlDbType.VarChar,200)
                              };
         par[0].Value = md.title;
         par[1].Value = md.size;
         par[2].Value = md.click;
         par[3].Value = md.uploadurl;
         return DbHelperSQL.ExecuteSql(sql.ToString(),par);
       }
       public int update(Model.downlist md)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append(" update downlist set ");
           sql.Append(" _title=@name,_size=@size,_click=@click,_uploadurl=@url  ");
           sql.Append(" where _id=@id  ");
           SqlParameter[] par ={ new SqlParameter("@name",SqlDbType.VarChar,150 ),
                                new SqlParameter("@size",SqlDbType.VarChar,50),
                                new SqlParameter("@click",SqlDbType.Int,4),
                                new SqlParameter("@url",SqlDbType.VarChar,200),
                                new SqlParameter("@id",SqlDbType.Int,4)
                               };
           par[0].Value = md.title;
           par[1].Value = md.size;
           par[2].Value = md.click;
           par[3].Value = md.uploadurl;
           par[4].Value = md.id;
           return DbHelperSQL.ExecuteSql(sql.ToString(), par);
       }
       public SqlDataReader datareader(Model.downlist md)
       { 
         string str="select * from downlist where _id="+md.id+"  ";
         SqlDataReader sdr = DbHelperSQL.ExecuteReader(str);
         return sdr;
       }
       public int _delete(Model.downlist md)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append(" delete from downlist ");
           sql.Append(" where _id=@id ");
           SqlParameter[] par ={ new SqlParameter ("@id",SqlDbType.Int,4) 
                               };
           par[0].Value = md.id;
           return DbHelperSQL.ExecuteSql(sql.ToString(),par);
       }
       public int click(Model.downlist md)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append(" update downlist set ");
           sql.Append(" _click=@click  ");
           sql.Append(" where _id=@id  ");
           SqlParameter[] par ={ 
                                new SqlParameter("@click",SqlDbType.Int,4),
                                new SqlParameter("@id",SqlDbType.Int,4)
                               };
           par[0].Value = md.click;
           par[1].Value = md.id;
           return DbHelperSQL.ExecuteSql(sql.ToString(), par);
       }
    }
}
