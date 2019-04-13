using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Model;
namespace DAL
{
    public class DALadmin
    {
        public SqlDataReader checkAdmin(admin admim)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from admin where _name=@name");

            SqlParameter[] par = {
                              new SqlParameter("@name",SqlDbType.VarChar,50)                  
                             
                             };
            par[0].Value = admim.name;


            return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);
        }

        public int insertAdmin(admin admin)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into admin values(@name,@pwd,@role)");




            SqlParameter[] par ={
                               new SqlParameter("@name",SqlDbType.VarChar,50),
                               new SqlParameter ("@pwd",SqlDbType.VarChar,50),
                               new SqlParameter ("@role",SqlDbType.Int)
                               };
            par[0].Value = admin.name;
            par[1].Value = admin.pwd;
            par[2].Value = admin.role;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);

        }

        public int deleteAdmin(admin admin)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from admin where _id=@id");

            SqlParameter[] par = { 
                                 new SqlParameter("@id",SqlDbType.Int,4)
                                 
                                 };

            par[0].Value = admin.id;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }

        public DataSet selectAdmin()
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from admin where _role=" + 0 + "");

            return Common.DbHelperSQL.Query(sql.ToString());
        }

        public int updateAdmin(admin admin)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update admin set _name=@name,_pwd=@pwd where _id=@id");

            SqlParameter[] par = {
                                 new SqlParameter("@name",SqlDbType.VarChar,50),
                                 new SqlParameter("@pwd",SqlDbType.VarChar,50),
                                 new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = admin.name;
            par[1].Value = admin.pwd;
            par[2].Value = admin.id;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }

        public SqlDataReader readAdmin(admin admin)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from admin ");
            sql.Append("where _id=@id");

            SqlParameter[] par = {
                                 new SqlParameter("@id",SqlDbType.Int,4)
                                 
                                 };

            par[0].Value = admin.id;

            return Common.DbHelperSQL.ExecuteReader(sql.ToString(), par);

        }

        public SqlDataReader _login(admin admin)
        {

            StringBuilder sql = new StringBuilder();
            sql.Append("select * from admin where _name=@name and _pwd=@pwd and _role=@role");

            SqlParameter[] pra = { 
                                 new SqlParameter("@name",SqlDbType.VarChar,50),
                                 new SqlParameter("@pwd",SqlDbType.VarChar,50),
                                 new SqlParameter("@role",SqlDbType.Int,4)
                                 };
            pra[0].Value = admin.name;
            pra[1].Value = Common.DESEncrypt.Encrypt(admin.pwd);
            pra[2].Value = admin.role;

            return Common.DbHelperSQL.ExecuteReader(sql.ToString(), pra);
        }

           


        public DataSet adminlist(int pageindex, int pagesize, string table)
        {
            string sqlstr = "select * from admin where _role="+0+"";

            DataSet ds =Common.DB.PagedataSet(sqlstr, pageindex, pagesize, table);
            return ds;
        }

        public int admin()
        {
            string sqlstr = "select count(*) from admin where _role="+0+"";
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

        public int s_admin(string name)
        {
            string sqlstr = "select count(*) from admin where _name like '%"+name+"%' and _role="+0+"";
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

        public DataSet S_admin(int pageindex, int pagesize, string table,string name)
        {

            string sqlstr = "select * from admin where _name like '%"+ name +"%' and _role="+0+"";

            DataSet ds = Common.DB.PagedataSet(sqlstr, pageindex, pagesize, table);
            return ds;
        
        }
    }
}