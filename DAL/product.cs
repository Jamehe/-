using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class product
    {

       public int Insert(Model.product mym)
       {

           StringBuilder sql = new StringBuilder();

           sql.Append("insert into product");

           sql.Append(" values (");

           sql.Append("@title,@cateid,@marketprice,@localprice,@content,@posttime,@weight,@ischeap,@isrecommend,@top,@procount,@imageid");

           sql.Append(")");

           SqlParameter[] par = {
                              new SqlParameter("@title",SqlDbType.VarChar,50),
                              new SqlParameter("@cateid",SqlDbType.Int,4),
                              new SqlParameter("@marketprice",SqlDbType.Money,32),
                              new SqlParameter("@localprice",SqlDbType.Money,32),
                               new SqlParameter("@content",SqlDbType.VarChar,0),
                                new SqlParameter("@posttime",SqlDbType.VarChar,50),
                             new SqlParameter("@weight",SqlDbType.VarChar,50),  
                              new SqlParameter("@ischeap",SqlDbType.Int,4),
                              new SqlParameter("@isrecommend",SqlDbType.Int,4),
                              new SqlParameter("@top",SqlDbType.Int,4), 
                              new SqlParameter("@procount",SqlDbType.Int,5), 
                              new SqlParameter("@imageid",SqlDbType.VarChar,50),  
                             
                             };


           par[0].Value = mym.title;

           par[1].Value = mym.cateid;
           par[2].Value=mym.marketprice;
           par[3].Value=mym.localprice;
           par[4].Value=mym.content;
           par[5].Value=mym.posttime;
           par[6].Value=mym.weight;
           par[7].Value=mym.ischeap;
           par[8].Value=mym.isrecomment;
           par[9].Value=mym.top;
           par[10].Value=mym.procount;
           par[11].Value=mym.imageid;
          




           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);


       }

       public DataSet dataset()
       {

           StringBuilder sql = new StringBuilder();

           sql.Append("select * from product");

           return Common.DbHelperSQL.Query(sql.ToString());

 
       }
  
       public string select_imageid(Model.product mym)

       {

           StringBuilder sql = new StringBuilder();

           sql.Append(" select _imageid from product ");
           sql.Append(" where product._id=@id ");

           SqlParameter[] par = {
                              new SqlParameter("@id",SqlDbType.Int,4)
                                  };





           par[0].Value = mym.id;

           return (string)Common.DbHelperSQL.GetSingle(sql.ToString(), par);
 
       }

       public int delete_id(Model.product mym)
       {
           StringBuilder sql = new StringBuilder();

           sql.Append(" delete from product ");
           sql.Append(" where _id=@id ");

           SqlParameter[] par = {
                              new SqlParameter("@id",SqlDbType.Int,4)
                                  };


           


           par[0].Value = mym.id;


           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);

       }
       public DataSet select_title(Model.product mym)
       {
           string sql = "select * from product where _title like '%" + mym.title + "%'";

           return Common.DbHelperSQL.Query(sql);

 
       }

       public SqlDataReader selectupdate(int mym)
       {
           string sql = "select * from product where _id=" + mym + "";

           return Common.DbHelperSQL.ExecuteReader(sql);
               
       }

       public int update(Model.product mym)
       {
           string sql = "update product set _title='" + mym.title + "',_cateid=" + mym.cateid + ",_marketprice='" + mym.marketprice + "',_localprice='" + mym.localprice + "',_content='" + mym.content + "',_weight=" + mym.weight + ",_ischeap=" + mym.ischeap + ",_isrecommend=" + mym.isrecomment + ",_top=" + mym.top + ",_procount=" + mym.procount + " where _id ="+mym.id+" ";
           return Common.DbHelperSQL.ExecuteSql(sql);
       }
       public int num(int cateid)
       {
           string sql = "select count(*) from product where _cateid=" + cateid + "";
           return Convert.ToInt32(Common.DB.ExecuteScalar(sql));
       }

       //


       public DataSet drpo(Model.product aa)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select  * from product where _id=@id");
           SqlParameter[] par = {
                                     new  SqlParameter ("@id",SqlDbType.Int,4)
                                 };
           par[0].Value = aa.id;
           return Common.DbHelperSQL.Query(sql.ToString(), par);
       }
       public SqlDataReader drpr(Model.product aa)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select  * from product  where _id=@id");
           SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
           par[0].Value = aa.id;
           return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);
       }
       public SqlDataReader drima(Model.product aa)
       {
           StringBuilder sql = new StringBuilder();
           sql.Append("select _imageid from product where _id=@id");
           SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
           par[0].Value = aa.id;
           return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);
       }


       //前台

       public int num_cateid(int cateid)
       {
           string sql = "select count(*) from product where _cateid= " + cateid + "";
           return Convert.ToInt32(Common.DB.ExecuteScalar(sql));
       }

       public DataSet p_dateset(int cateid, int pageindex, int pagesize, string table)
       {
           string sql = "select * from product,procate where product._cateid=" + cateid + " and product._cateid=procate._cateid  ";
           return Common.DB.PagedataSet(sql, pageindex, pagesize, table);
       }

    }
}
