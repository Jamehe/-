using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public  class  user
    {
        //注册会员
        public int insert(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into [user] ( _username,_pwd,_email,_qq,_msn,_safequestion,_safepwd ) values(@username,@pwd,@email,@qq,@msn,@safeque,@safepwd)");
            SqlParameter[] par ={
                                    new SqlParameter("@username",SqlDbType.VarChar,50),
                                    new SqlParameter ("@pwd",SqlDbType .VarChar,50),
                                    new SqlParameter ("@email",SqlDbType .VarChar,50),
                                    new SqlParameter ("@qq",SqlDbType .VarChar,50),
                                    new SqlParameter ("@msn",SqlDbType .VarChar,50),
                                    new SqlParameter ("@safeque",SqlDbType .VarChar,150),
                                    new SqlParameter ("@safepwd",SqlDbType .VarChar,150)
                                };
            par[0].Value = aa.username;
            par[1].Value = Common.DESEncrypt.Encrypt(aa.pwd);
            par[2].Value = aa.email;
            par[3].Value = aa.qq;
            par[4].Value = aa.msn;
            par[5].Value = aa.safequestion;
            par[6].Value = aa.safepwd;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        //判断该用户邮箱是否存在
        public DataSet  checkEmail(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select _userid from [user] where _email=@email");
            SqlParameter[] par ={
                                    new SqlParameter("@email",SqlDbType.VarChar,50)
                                };
            par[0].Value = u.email;
            return Common.DbHelperSQL.Query(sql.ToString(),par);
        }


        //判断该用户邮箱是否存在(重载)
        public bool isExitEmail(string email)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select _userid from [user] where _email=@email");
            SqlParameter[] par ={
                                    new SqlParameter("@email",SqlDbType.VarChar,50)
                                };
            par[0].Value =email;
            DataSet ds= Common.DbHelperSQL.Query(sql.ToString(), par);
            if (ds != null)
            {
                return true;
            }
            else {
                return false;
            }

        }

        public SqlDataReader dd(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select _userid from [user] where _email=@email");
            SqlParameter[] par ={
                                    new SqlParameter("@email",SqlDbType.VarChar,50)
                                };
            par[0].Value = u.email;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
    
        //读取会员信息
        public SqlDataReader findUserinfo(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where  _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType .Int,4)
                                };
            par[0].Value = u.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //更新会员信息
        public int upUserinfo(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update [user] set _username=@username,_pwd=@pwd,_email=@email,_qq=@qq,_msn=@msn,_safequestion=@safeque,_safepwd=@safepwd  where _userid=@id");
            SqlParameter[] par ={
                                    new  SqlParameter("@id",SqlDbType.Int,4),
                                    new  SqlParameter("@username",SqlDbType.VarChar,50),
                                    new  SqlParameter("@pwd",SqlDbType.VarChar,50),
                                    new  SqlParameter("@email",SqlDbType.VarChar,50),
                                    new  SqlParameter("@qq",SqlDbType.VarChar,50),
                                    new  SqlParameter("@msn",SqlDbType.VarChar,50),
                                    new  SqlParameter("@safeque",SqlDbType.VarChar ,150),
                                    new  SqlParameter("@safepwd",SqlDbType.VarChar ,150)
                                };
            par[0].Value = u.userid;
            par[1].Value = u.username;
            par[2].Value = Common.DESEncrypt.Encrypt(u.pwd);
            par[3].Value = u.email;
            par[4].Value = u.qq;
            par[5].Value = u.msn;
            par[6].Value = u.safequestion;
            par[7].Value = u.safepwd;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        //会员登入
        public SqlDataReader  userLogin(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select  _userid from [user] where _email=@email and _pwd=@pwd");
            SqlParameter[] par ={
                                    new SqlParameter("@email",SqlDbType.VarChar,50),
                                    new SqlParameter("@pwd",SqlDbType.VarChar,50)
                                };
            par[0].Value = u.email;
            par[1].Value = Common.DESEncrypt.Encrypt(u.pwd);
            
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //session
        public SqlDataReader lo(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where _email=@email and _pwd=@pwd");
            SqlParameter[] par ={
                                    new SqlParameter("@email",SqlDbType.VarChar,50),
                                    new SqlParameter("@pwd",SqlDbType.VarChar,50)
                                };
            par[0].Value = u.email;
            par[1].Value = Common.DESEncrypt.Encrypt(u.pwd);
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //个人资料
        public SqlDataReader drs(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where _userid=@userid");
            SqlParameter[] par ={
                                    new SqlParameter("@userid",SqlDbType.VarChar,50)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //修改个人资料
        public int upUser(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update [user] set _msn=@msn,_qq=@qq,_safequestion=@safe,_safepwd=@pwd where _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter("@msn",SqlDbType.VarChar,50),
                                    new SqlParameter("@qq",SqlDbType.VarChar,50),
                                    new SqlParameter("@safe",SqlDbType.VarChar,50),
                                    new SqlParameter("@pwd",SqlDbType.VarChar,50),
                                    new SqlParameter("@id",SqlDbType.VarChar,50)   
                                };
            par[0].Value = aa.msn;
            par[1].Value = aa.qq;
            par[2].Value = aa.safequestion;
            par[3].Value = aa.safepwd;
            par[4].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
            
        }
        //判断该密码是否正确
        public SqlDataReader  checkPwd(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user]  where _pwd=@pwd and _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter("@pwd",SqlDbType.VarChar,50),
                                    new SqlParameter("@id",SqlDbType.Int,4)
                                };
            par[0].Value = Common.DESEncrypt.Encrypt(aa.pwd);
            par[1].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //会员收藏夹
        public int userFavorites(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from collect where _userid=@id");
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType.Int ,4)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        //记住上次登入时间时间
        public int loginLastTime(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update  [user] set _logintime=@time  where _userid=@id");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4),
                                     new SqlParameter("@time",SqlDbType.DateTime,16)
                                 };
            par[0].Value = aa.userid;
            par[1].Value = aa.time;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        public SqlDataReader checkById(Model.user aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where _userid=@id");
            SqlParameter[] par = {
                                     new  SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        //更改密码
        public int upPwd(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update [user] set _pwd=@apwd  where _userid=@id " );
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType.Int,4),
                                    new SqlParameter("@apwd",SqlDbType.VarChar,50)
                                };
            par[0].Value = u.userid;
            par[1].Value = Common.DESEncrypt.Encrypt(u.pwd);
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
        //通过email查询
        public SqlDataReader findByMail(Model.user u)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from [user] where _email=@email");
            SqlParameter[] par = {
                                     new SqlParameter("@email",SqlDbType .VarChar,50)
                                 };
            par[0].Value = u.email;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(),par);
        }
        
     
    }
    //地址
    public class address
    {
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
    }
    //订单
    public class order
    {
        //查看订单(分页)
        public DataSet findOrders(int a, int b, Model.order aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable where _userid=@id  order by _ordertime ");
            SqlParameter[] par ={
                                    new SqlParameter("@id",SqlDbType.Int,4)
                                };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.PageQuery(sql.ToString(), a, b, par);
        }
        //返回订单支付状态
        //public List<string> findOrderstate(int a, int b,Model.order aa)
        //{
        //    StringBuilder sql = new StringBuilder();
        //    sql.Append("select * from ordertable where _userid=@id  order by _ordertime ");
        //    SqlParameter[] par ={
        //                            new SqlParameter("@id",SqlDbType.Int,4)
        //                        };
        //    par[0].Value = aa.userid;
        //    DataSet sets= Common.DbHelperSQL.PageQuery(sql.ToString(), a, b, par);
        //    foreach (DataTable ta in sets.Tables)
        //    {
 
        //    }
        //    return null;
        //}
        // 订单条数
        public int readCount(Model.order aa)
        {
            String sql = "select count(*)from ordertable where _userid='" + aa.userid + "'";
            int i = Convert.ToInt32(Common.DB.ExecuteScalar(sql));
            return i;
        }
        //查看某条订单
        public DataSet readOrderModel(Model.order aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable where _ordernum=@num");
            SqlParameter[] par = {
                                     new SqlParameter("@num",SqlDbType.VarChar,50)
                                 };
            par[0].Value = aa.ordernum;
            return Common.DbHelperSQL.Query(sql.ToString(),par);
        }
        //根据订单号返回一条订单
        public Model.order getUserOrder(int orderID)
        {
            Model.order myorder=new Model.order();
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable where _id=@id");
             SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value =orderID;
            DataTable table =Common.DbHelperSQL.GetTable(sql.ToString(),par);
            if (table.Rows.Count > 0)
            {
                LoadEntity(table.Rows[0], myorder);
            }
            return myorder;
        }

        //LoadEntity
        private void LoadEntity(DataRow row, Model.order myorder)
        {
            myorder.id = Convert.ToInt16(row["_id"]);
            myorder.ordernum = row["_ordernum"].ToString();
            myorder.paystate = Convert.ToInt32(row["_paystate"].ToString());
            myorder.prostate = Convert.ToInt32(row["_prostate"].ToString());
            myorder.userid = Convert.ToInt32(row["_userid"].ToString());
            myorder.ordertime = Convert.ToDateTime(row["_ordertime"].ToString());
            myorder.sellremarks =row["_sellremarks"].ToString();
            myorder.buyremarks = row["_buyremarks"].ToString();
            myorder.count = Convert.ToInt32(row["_count"].ToString());
            myorder.address = row["_address"].ToString();
            myorder.sumprice = Convert.ToDouble(row["_sumprice"].ToString());
            myorder.tel = row["_tel"].ToString();
            myorder.mobile = row["_mobile"].ToString();
            myorder.name = row["_name"].ToString();
            myorder.mail = row["_mail"].ToString();
            myorder.waysgive = row["_waysgive"].ToString();
        }
        //已支付订单
        public DataSet readPayOrder(Model.order aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from ordertable where _userid=@id and _paystate=1 order by _ordertime ");
            SqlParameter[] par = {
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            return Common.DbHelperSQL.Query(sql.ToString(),par);
        }
        //删除用户订单
        public int deleteUserOrder(Model.order aa)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from ordertable where _userid=@uid and _id=@id");
            SqlParameter[] par = {
                                     new  SqlParameter("@uid",SqlDbType.Int,4),
                                     new  SqlParameter("@id",SqlDbType.Int,4)
                                 };
            par[0].Value = aa.userid;
            par[1].Value = aa.id;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(),par);
        }
    
    }
    


}
