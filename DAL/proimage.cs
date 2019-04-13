using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public  class proimage
    {
       public int Insert(Model.proimage model)
       {

           StringBuilder sql = new StringBuilder();

           sql.Append(" insert into proimage ");

           sql.Append(" values (");

           sql.Append("@imageid,@imageurl,@color,@sizeid");

           sql.Append(")");

           SqlParameter[] par = {
                              new SqlParameter("@imageid",SqlDbType.VarChar,50),
                              new SqlParameter("@imageurl",SqlDbType.VarChar,100),
                              new SqlParameter("@color",SqlDbType.VarChar,50),
                              new SqlParameter("@sizeid",SqlDbType.VarChar,50),                        
                             };


           par[0].Value = model.imageid;
           par[1].Value = model.imageurl;
           par[2].Value = model.color;
           par[3].Value = model.sizeid;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);

       }
       public int selectid(Model.proimage mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" select _id  from proimage ");
           sql.Append(" where _sizeid=@sizeid ");

           SqlParameter[] par = {
                              new SqlParameter("@sizeid",SqlDbType.VarChar,50)
                                 };
           par[0].Value = mym.sizeid;

           return (int)Common.DbHelperSQL.GetSingle(sql.ToString(), par);
                         
 
       }
       public DataSet select_sizeid(string  mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" select * from proimage ");
           sql.Append(" where _imageid=@imageid ");

           SqlParameter[] par = {
                              new SqlParameter("@imageid",SqlDbType.VarChar,50)
                                 };
           par[0].Value = mym;
           return Common.DbHelperSQL.Query(sql.ToString(), par);
 
       }
       public DataSet select_color(string mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" select * from proimage ");
           sql.Append(" where _sizeid=@sizeid ");

           SqlParameter[] par = {
                              new SqlParameter("@sizeid",SqlDbType.VarChar,50)
                                 };
           par[0].Value = mym;
           return Common.DbHelperSQL.Query(sql.ToString(), par);

       }

       public int delete(string mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" delete from proimage ");
           sql.Append(" where _imageid=@imageid ");

           SqlParameter[] par = {
                              new SqlParameter("@imageid",SqlDbType.VarChar,50)
                                 };
           par[0].Value = mym;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);


 
       }
       public int delect_1(string size_id)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" delete from proimage ");
           sql.Append(" where _sizeid=@sizeid");

           SqlParameter[] par = {
                              new SqlParameter("@sizeid",SqlDbType.VarChar,50)
                                 };
           par[0].Value = size_id;

           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
 
       }
       public SqlDataReader image_update(string size_id)
       {

           string sql = "select * from proimage where _sizeid='" + size_id + "'";
           return Common.DB.dataReader(sql);        
 
       }
       public int upimage(Model.proimage mym)
       {
           string sql = "update proimage set _imageurl='" +mym.imageurl+ "' where _sizeid='"+mym.sizeid+"'";
           return Common.DB.ExecuteSql(sql);
       }
       public SqlDataReader  s_imageurl(string size_id)
       {

           string sql = "select * from proimage where _sizeid='" + size_id + "'";
           return Common.DB.dataReader(sql);

       }


       //
       public SqlDataReader dsim(Model.proimage aa)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select top 1 _imageurl from proimage where _imageid=@id");
           SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.VarChar,50)
                                 };
           par[0].Value = aa.id;
           return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);
       }


    
    }
}
