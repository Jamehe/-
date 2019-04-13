using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public  class daladdress
    {
        //填写送货地址
        public int addre(Model.address aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into address (_tel,_mobile, _address ,_name, _mail) values(@tel,@mobile,@address,@name,@mail)");
            SqlParameter[] par ={
                                   
                                    new SqlParameter("@tel",SqlDbType.VarChar,50),
                                    new SqlParameter("@mobile",SqlDbType.VarChar,50),
                                    new SqlParameter("@address",SqlDbType.VarChar,150),
                                    new SqlParameter("@name",SqlDbType.VarChar,150),
                                    new SqlParameter("@mail",SqlDbType.VarChar,50)
                                };
            
            par[0].Value = aa.tel;
            par[0].Value = aa.mobile;
            par[0].Value = aa.Address;
            par[0].Value = aa.name;
            par[0].Value = aa.mail;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }
        //查看送货地址
        public SqlDataReader drad(Model.address aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append(" select * from address where _userid=@id ");
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType.Int ,4)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }

        //更新地址
        public int upad(Model.address aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update address set _mail=@mail,_name=@name,_mobile=@mobile,_tel=@tel,_address=@addr where _userid=@id");
            SqlParameter[] par ={
                                    new   SqlParameter("@mail",SqlDbType.VarChar,50),
                                    new   SqlParameter("@name",SqlDbType.VarChar,50),
                                    new   SqlParameter("@mobile",SqlDbType.VarChar,50),
                                    new   SqlParameter("@tel",SqlDbType.VarChar,50),
                                    new   SqlParameter("@addr",SqlDbType.VarChar,50),
                                    new   SqlParameter("@id",SqlDbType.Int,4)
                                    
                                };
            par[0].Value = aa.mail;
            par[1].Value = aa.name;
            par[2].Value = aa.mobile;
            par[3].Value = aa.tel;
            par[4].Value = aa.Address;
            par[5].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        //插入用户号于地址表
        public int insert(Model.address aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into address (_userid) values(@id)");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }
        public SqlDataReader adr(Model.address aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from address where _userid =@id");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
    }
}
