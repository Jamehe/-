using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;
namespace DAL
{
   public  class DALhelp
    {
       public int inserthelp(Help help)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("insert into help values(@title,@content,@cateid)");

           SqlParameter[] pra = {
                                new SqlParameter("@title",SqlDbType.VarChar,50),
                                new SqlParameter("@content",SqlDbType.VarChar,0),
                                new SqlParameter("@cateid",SqlDbType.Int,4)
                               };
           pra[0].Value = help.Title;
           pra[1].Value =help.Content;
           pra[2].Value = help.Cateid;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);
       
       }

       public DataSet select(int pageindex, int pagesize, string table)
       {
           string sqlstr = "select * from help order by _cateid asc";

           DataSet ds = Common.DB.PagedataSet(sqlstr, pageindex, pagesize, table);
           return ds;
       
       }

       public int delete(Help help)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("delete from help where _id=@id");

           SqlParameter[] pra = {
                                new SqlParameter("@id",SqlDbType.Int,4)
                                
                                };

           pra[0].Value = help.ID;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(),pra);
       
       }

       public int update(Help help)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("update help set _title=@title,_content=@content where _id=@id");

           SqlParameter[] pra = { 
                                new SqlParameter("@title",SqlDbType.VarChar,50),
                                new SqlParameter("@content",SqlDbType.VarChar,0),
                                new SqlParameter("id",SqlDbType.Int,4)
                                };
           pra[0].Value = help.Title;
           pra[1].Value = help.Content;
           pra[2].Value = help.ID;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(),pra);
       
       }

       public SqlDataReader readinfo(Help help)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select * from help where _id=@id");

           SqlParameter[] pra = { 
                                new  SqlParameter("@id",SqlDbType.Int,4)
                                
                                };

           pra[0].Value = help.ID;
           return Common.DbHelperSQL.ExecuteReader(sql.ToString(), pra);
       
       }

       public int resultCount()
       {

           string sqlstr = "select count(*) from help ";
           int result;
           if (Common.DB.ExecuteScalar(sqlstr) == null)
           {
               result = 0;

           }
           else
           {
               result = (int)Common.DB.ExecuteScalar(sqlstr);
           }
           return result;
       }



       public int searchResult(Help help)
       {
           string sqlstr = "select count(*) from help where _cateid="+help.Cateid+"";
           int result;
           if (Common.DB.ExecuteScalar(sqlstr) == null)
           {
               result = 0;

           }
           else
           {
               result = (int)Common.DB.ExecuteScalar(sqlstr);
           }
           return result;
       }


       public DataSet ds_search(int pageindex, int pagesize, string table, int cateid)
       {

           string sqlstr = "select * from help where _cateid="+cateid+" ";

           DataSet ds = Common.DB.PagedataSet(sqlstr, pageindex, pagesize, table);
           return ds;

       }

       public DataSet selectAll()
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select * from help where _cateid="+1+"");

           return Common.DbHelperSQL.Query(sql.ToString());
       }


       public DataSet _selectAll(int cateid)
       {

           StringBuilder sql = new StringBuilder();
           sql.Append("select top 3 * from help where _cateid="+cateid+" order by _id desc");

           return Common.DbHelperSQL.Query(sql.ToString());
       
       }

       public DataSet cj_ds(int cateid)
       {

           StringBuilder sql = new StringBuilder();
           sql.Append("select top 7 * from help where _cateid=" + cateid + " order by _id desc");

           return Common.DbHelperSQL.Query(sql.ToString());
       }

       public DataSet selectAll(int cateid)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select top 8 * from help where _cateid="+cateid+" order by _id desc");

           return Common.DbHelperSQL.Query(sql.ToString());
       
       }
    }
}
