using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
using Common;
namespace DAL
{
    public class News
    {
        public int add(Model.News mn)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append(" insert into news ");
            sql.Append(" (_title,_from,_author,_top,_click,_content,_cateid,_ispic) ");
            sql.Append(" values( @title,@from,@author,@top,@click,@content,@cateid,@ispic ) ");
            SqlParameter[] par = { new SqlParameter( "@title",SqlDbType.VarChar,50 ),
                                   new SqlParameter("@from",SqlDbType.VarChar,50),
                                   new SqlParameter("@author",SqlDbType.VarChar,50),
                                   new SqlParameter("@top",SqlDbType.VarChar,50),
                                   new SqlParameter("@click",SqlDbType.VarChar,50),
                                   new SqlParameter("@content",SqlDbType.VarChar,0),
                                   new SqlParameter("@cateid",SqlDbType.VarChar,50),
                                   new SqlParameter("@ispic",SqlDbType.VarChar,50)
                                 };
            par[0].Value = mn.Title;
            par[1].Value = mn.From;
            par[2].Value = mn.Author;
            par[3].Value = mn.Top;
            par[4].Value = mn.Click;
            par[5].Value = mn.Content;
            par[6].Value = mn.Cateid;
            par[7].Value = mn.Ispic;
            int result = DbHelperSQL.ExecuteSql(sql.ToString(),par);
            return result;
        }
        public int _delete(Model.News mn)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append(" delete from news where _id=@nid ");
            SqlParameter[] par = { new SqlParameter("@nid", SqlDbType.Int, 4) };
            par[0].Value = mn.ID;
            int result = DbHelperSQL.ExecuteSql(sql.ToString(),par);
            return result;
        }
        public SqlDataReader datareader (Model.News mn)
        {
            string str = " select * from news where _id="+mn.ID+" ";
            SqlDataReader dr = DbHelperSQL.ExecuteReader(str);
            return dr;
        }
        public int update(Model.News mn)
        { 
            StringBuilder sql= new StringBuilder();
            sql.Append(" update news set ");
            sql.Append(" _title=@name, _from=@source, _author=@author,_top=@hot,_click=@count,_content=@info,_cateid=@nid,_ispic=@pic ");
            sql.Append(" where _id=@id ");
            SqlParameter [] par={
                                 
                                  new SqlParameter( "@name",SqlDbType.VarChar,50)  ,
                                  new SqlParameter("@source",SqlDbType.VarChar,50),
                                  new SqlParameter("@author",SqlDbType.VarChar,50),
                                  new SqlParameter("@hot",SqlDbType.Int,4),
                                  new SqlParameter("@count",SqlDbType.Int,4),
                                  new SqlParameter("@info",SqlDbType.VarChar,0),
                                  new SqlParameter("@nid",SqlDbType.Int,4),
                                  new SqlParameter("@pic",SqlDbType.Int,4 ),
                                  new SqlParameter("@id", SqlDbType.Int,4)
                                };

            par[0].Value = mn.Title;
            par[1].Value = mn.From;
            par[2].Value = mn.Author;
            par[3].Value = mn.Top;
            par[4].Value = mn.Click;
            par[5].Value = mn.Content;
            par[6].Value = mn.Cateid;
            par[7].Value = mn.Ispic;
            par[8].Value = mn.ID;
            int result = DbHelperSQL.ExecuteSql(sql.ToString(),par);
            return result;
        }
    }
}
