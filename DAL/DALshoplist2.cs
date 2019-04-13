using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
      public    class DALshoplist2
    {
          public  SqlDataReader  readaddress(Model .address myaddress)
          {
              StringBuilder sql = new StringBuilder();
              sql.Append("select * from address where _userid=@userid");
              SqlParameter[] par ={new SqlParameter ("@userid",SqlDbType .Int ,4)
                                 };
              par[0].Value = myaddress.userid;
              return Common.DbHelperSQL.ExecuteReader (sql.ToString(), par);
 
          }
        public int insertOrdertable(Model .order myorder)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into ordertable(_ordernum,_paystate,_userid,_buyremarks,_count,_address,_tel,_mobile,_mail,_sumprice,_name,_needbill,_waysgive) ");
            sql.Append("values(@ordernum,@paystate,@userid,@buyremarks,@count,@address,@tel,@mobile,@mail,@sumprice,@name,@needbill,@waysgive)");
            SqlParameter[] par ={
                                new  SqlParameter ("@ordernum",SqlDbType .VarChar ,50),
                                new  SqlParameter ("@paystate",SqlDbType .Int ,4),
                                new SqlParameter ("@userid",SqlDbType .Int ,4),
                                new SqlParameter ("@buyremarks",SqlDbType .VarChar ,350),
                                new SqlParameter ("@count",SqlDbType .Int ,4),
                                new SqlParameter ("@address",SqlDbType .VarChar ,150),
                                new SqlParameter ("@tel",SqlDbType .VarChar,50),
                                new SqlParameter ("@mobile",SqlDbType .VarChar ,50),
                                new SqlParameter ("@mail",SqlDbType .VarChar ,50),
                                new SqlParameter ("@sumprice",SqlDbType .Money ,8), 
                                new SqlParameter ("@name",SqlDbType .VarChar ,50),
                                new SqlParameter ("@needbill",SqlDbType .Int ,4),
                                new SqlParameter ("@waysgive",SqlDbType .VarChar  ,50)
                                
                                };
            par[0].Value = myorder.ordernum;
            par[1].Value = myorder.paystate;
            par[2].Value = myorder.userid;
            par[3].Value = myorder.buyremarks;
            par[4].Value = myorder.count;
            par[5].Value = myorder.address;
            par[6].Value = myorder.tel;
            par[7].Value = myorder.mobile;
            par[8].Value = myorder.mail;
            par[9].Value = myorder.sumprice;
            par[10].Value = myorder.name;
            par[11].Value = myorder.needbill;
            par[12].Value = myorder.waysgive;
            return Common.DbHelperSQL.ExecuteSql (sql.ToString(), par); 
        }

          //更新ordertable,根据用户ID
        public int updateOrdertable(Model.order myorder)
        {
            string sql = "update ordertable set _paystate=@paystate where _userid=@id ";
            SqlParameter[] pars = {
                                 
                                 new SqlParameter("@paystate",SqlDbType.Int,4),
                                 new SqlParameter("@id",SqlDbType.Int,4),
                                  
                                 };
            pars[0].Value = myorder.paystate;
            pars[1].Value = myorder.userid;
            return Common.DbHelperSQL.ExecuteSql(sql, pars); 
        }

          //更新orderTable（完成未支付订单支付） 根据订单号
        public int updatePaystateById(Model.order myorder)
        {
            string sql = "update ordertable set _paystate=@paystate where _id=@id ";
            SqlParameter[] pars = {
                                 
                                 new SqlParameter("@paystate",SqlDbType.Int,4),
                                 new SqlParameter("@id",SqlDbType.Int,4),
                                  
                                 };
            pars[0].Value = myorder.paystate;
            pars[1].Value = myorder.id;
            return Common.DbHelperSQL.ExecuteSql(sql, pars); 
        }
        public int insertdetail(Model .orderdetail myorderdetail)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into orderdetail(_count,_ordernum,_sumprice,_price,_weight,_sumweight,_title,_proid,_size,_color,_proimage,_cate) ");
            sql.Append("values(@count,@ordernum,@sumprice,@price,@weight,@sumweight,@title,@proid,@size,@color,@proimage,@cate)");
            SqlParameter[] par ={
                                   new SqlParameter ("@count",SqlDbType .Int ,4),
                                   new SqlParameter ("@ordernum",SqlDbType .VarChar ,50),
                                   new  SqlParameter ("@sumprice",SqlDbType .Money ,8),
                                   new SqlParameter ("@price",SqlDbType .Money ,8),
                                   new SqlParameter ("@weight",SqlDbType .VarChar ,50),
                                   new SqlParameter ("@sumweight",SqlDbType .VarChar ,50),
                                   new SqlParameter ("@title",SqlDbType .VarChar ,50),
                                   new SqlParameter ("@proid",SqlDbType .Int ,4),
                                   new SqlParameter ("@size",SqlDbType .VarChar ,50),
                                   new SqlParameter ("@color",SqlDbType .VarChar ,50),
                               new SqlParameter ("@proimage",SqlDbType .VarChar ,50),
                               new SqlParameter ("@cate",SqlDbType .VarChar ,50)
                               };
            
            par[0].Value = myorderdetail.count;
            par[1].Value = myorderdetail.ordernum;
            par[2].Value = myorderdetail.sumprice;
            par[3].Value = myorderdetail.price;
            par[4].Value = myorderdetail.weight;
            par[5].Value = myorderdetail.sumweight;
            par[6].Value = myorderdetail.title;
            par[7].Value = myorderdetail.proid;
            par[8].Value = myorderdetail.size;
            par[9].Value = myorderdetail.color;
            par[10].Value = myorderdetail.proimage;
            par[11].Value = myorderdetail.cate;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), par);
        }

    }
    

}
