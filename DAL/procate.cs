using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class procate
    {
       //插入产品类别
       public int Insert(Model.procate model)
       {

           StringBuilder sql = new StringBuilder();

           sql.Append("insert into procate ");

           sql.Append(" values (");

           sql.Append("@catename,@fathercateid");

           sql.Append(")");

           SqlParameter[] par = {
                              new SqlParameter("@catename",SqlDbType.VarChar,50),
                              new SqlParameter("@fathercateid",SqlDbType.Int,4),
                             
                             
                             };


           par[0].Value = model.catename;
           par[1].Value = model.fathercateid;
         





           return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);

       }
       //查询所有产品类别
       public DataSet findProcates()
       {
           StringBuilder sql = new StringBuilder();

           sql.Append("select * from procate");

           return Common.DbHelperSQL.Query(sql.ToString());
 
       }
       //多表查询产品类别
       public DataSet findProcateAndFathercate()
       {
           StringBuilder sql = new StringBuilder();

           sql.Append("select * from procate,fathercate where procate._fathercateid=fathercate._fathercateid");

           return Common.DbHelperSQL.Query(sql.ToString());
 
       }
       //通过id查询产品类别名
       public string select_name(int cate_id)
       {
           string sql = "select _catename from procate where _cateid="+cate_id+"";
           return Convert.ToString(Common.DB.ExecuteScalar(sql));

       }
       //查询产品类别数
       public int num(int f_id)
       {
           string sql = "select count(*) from procate where _fathercateid=" + f_id + "";
           return Convert.ToInt32(Common.DB.ExecuteScalar(sql));
       }
       //更新产品类别
       public int update(Model.procate mym)
       {
           string sql = "update procate set _catename='" + mym.catename + "', _fathercateid=" + mym.fathercateid + " where _cateid="+mym.cateid+"";
           return Convert.ToInt32(Common.DB.ExecuteSql(sql)); 
       }
       //删除类别
       public int delete(int cate_id)
       {
           string sql = "delete from procate where _cateid=" + cate_id + "";
           return Convert.ToInt32(Common.DB.ExecuteSql(sql)); 
       }
       //通过父类别id查询产品类别
       public DataSet data_f(int f_cateid)
       {
           string sql = "select *  from procate where _fathercateid=" + f_cateid + "";
           return Common.DB.dataSet(sql);
       }
       //通过产品类别id查询产品类别
       public DataTable findCateById(int cate_id)
       {
           string sql = "select *  from procate where _cateid=" + cate_id + "";
           return Common.DB.dataTable(sql);
       }
    }
}
