using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public   class  collect
    {
        public DataSet drco(int a,int b,Model.collect aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from collect  where _userid=@id");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.PageQuery(sql.ToString(),a,b,par);
        }
        public int count(Model.collect aa)
        {
            String sql = "select count(*) from collect where _userid='" + aa.userid + "'";
            int i=Convert.ToInt32(Common.DB.ExecuteScalar(sql));
            return i; 
        }

        public int inser(Model.collect aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into collect (_userid)values(@id)");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType .Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        public int inserc(Model.collect aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into collect (_userid,_proid,_proname,_proprice,_proimage)values(@userid,@id,@name,@price,@image)");
            SqlParameter[] par = {
                                     new SqlParameter("@userid",SqlDbType.Int,4),
                                     new SqlParameter("@id",SqlDbType.Int,4),
                                     new SqlParameter("@name",SqlDbType.VarChar,50),
                                     new SqlParameter("@price",SqlDbType.Money,16),
                                     new SqlParameter("@image",SqlDbType.VarChar,50)
                                 };
            par[0].Value = aa.userid;
            par[1].Value = aa.proid;
            par[2].Value = aa.proname;
            par[3].Value = aa.proprice;
            par[4].Value = aa.proimage;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        public int deco(Model.collect aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from collect where _id=@id");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.id;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        public SqlDataReader drcopr(Model.collect aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from collect where _proid=@id");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.proid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        
        
    }
    //public class product
    //{
    //    public DataSet drpo(Model.product aa)
    //    {
    //        StringBuilder sql = new StringBuilder();
    //        sql.Append("select  * from product where _id=@id");
    //        SqlParameter[] par = {
    //                                 new  SqlParameter ("@id",SqlDbType.Int,4)
    //                             };
    //        par[0].Value = aa.id;
    //        return Common.DbHelperSQL.Query(sql.ToString(),par);
    //    }
    //    public SqlDataReader drpr(Model.product aa)
    //    {
    //        StringBuilder sql = new StringBuilder();
    //        sql.Append("select  * from product  where _id=@id");
    //        SqlParameter[] par = {
    //                                 new SqlParameter("@id",SqlDbType.Int,4)
    //                             };
    //        par[0].Value = aa.id;
    //        return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
    //    }
    //    public SqlDataReader drima(Model.product aa)
    //    {
    //        StringBuilder sql = new StringBuilder();
    //        sql.Append("select _imageid from product where _id=@id");
    //        SqlParameter[] par = {
    //                                 new SqlParameter("@id",SqlDbType.Int,4)
    //                             };
    //        par[0].Value = aa.id;
    //        return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
    //    }
    //}
    //public class proimage
    //{
    //    public SqlDataReader dsim(Model.proimage aa)
    //    {
    //       StringBuilder sql=new StringBuilder ();
    //        sql.Append("select top 1 _imageurl from proimage where _imageid=@id");
    //        SqlParameter[] par = {
    //                                 new SqlParameter("@id",SqlDbType.VarChar,50)
    //                             };
    //        par[0].Value = aa.id;
    //        return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
    //    }
    //}

   
}
