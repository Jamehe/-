using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;
namespace DAL
{
    public class DALmessage
    {
        public int post(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("insert into message(_title,_content,_ip) values(@title,@content,@ip)");

            SqlParameter[] pra = { 
                               new SqlParameter("@title",SqlDbType.VarChar,50),
                               new SqlParameter("@content",SqlDbType.VarChar,250),
                               new SqlParameter("@ip",SqlDbType.VarChar,50)
                               };
            pra[0].Value = mes.title;
            pra[1].Value = mes.content;
            pra[2].Value = mes.ip;


            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);
        }

        public DataSet select(int pageindex, int pagesize, string table)
        {
            //StringBuilder sql = new StringBuilder();
            //sql.Append("select * from message where _state=" + 1 + "");
            //return Common.DbHelperSQL.Query(sql.ToString());

            string sql = "select * from message where _state=" + 1 + "";
            DataSet ds = Common.DB.PagedataSet(sql, pageindex, pagesize, table);
            return ds;

        }

        public DataSet messelect(int pageindex, int pagesize, string table,string title)
        {
            string sql = "select * from message where _title like '%" + title + "%'";
            DataSet ds = Common.DB.PagedataSet(sql, pageindex, pagesize, table);
            return ds;
        
        }

        public int mes_select(string title)
        {

            string sqlstr = "select count(*) from message where _title like '%"+title+"%' ";
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


        public int message_state()
        {
            string sqlstr = "select count(*) from message where _state=" + 1 + " ";
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



        public DataSet h_select(int pageindex, int pagesize, string table)
        {
            string sql = "select * from message";
            DataSet ds = Common.DB.PagedataSet(sql, pageindex, pagesize, table);
            return ds;

        }

        public int messageCount()
        {
            string sqlstr = "select count(*) from message ";
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






        public int reply(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update message set _reply=@reply,_state=@state where _id=@id");

            SqlParameter[] pra = { 
                               new SqlParameter("@reply",SqlDbType.VarChar,200),
                               new SqlParameter("@state",SqlDbType.Int,4),
                               new SqlParameter("@id",SqlDbType.Int,4)
                               
                               };

            pra[0].Value = mes.reply;
            pra[1].Value = mes.state;
            pra[2].Value = mes.id;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);

        }

        public SqlDataReader readmessage(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("select * from message where _id=@id");

            SqlParameter[] pra = {                                 
                                 new SqlParameter("@id",SqlDbType.Int,4)                                 
                                 };
            pra[0].Value = mes.id;
            return Common.DbHelperSQL.ExecuteReader(sql.ToString(), pra);
        }


        public int delete(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("delete from message where _id=@id");

            SqlParameter[] pra = { 
                               new SqlParameter("@id",SqlDbType.Int,4)
                               };
            pra[0].Value = mes.id;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);

        }

        public int update(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update message set _title=@title,_content=@content,_ip=@ip where _id=@id");

            SqlParameter[] pra = { 
                               new SqlParameter("@title",SqlDbType.VarChar,50),
                               new SqlParameter("@content",SqlDbType.VarChar,250),
                               new SqlParameter("@ip",SqlDbType.VarChar,50),
                               new SqlParameter("@id",SqlDbType.Int,4)
                               
                               };
            pra[0].Value = mes.title;
            pra[1].Value = mes.content;
            pra[2].Value = mes.ip;
            pra[3].Value = mes.id;

            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);
        }

        public int p_update(message mes)
        {
            StringBuilder sql = new StringBuilder();
            sql.Append("update message set _state=@state where _id=@id");

            SqlParameter[] pra = { 
                                 
                                     new SqlParameter("@state",SqlDbType.Int,4),
                                     new SqlParameter("@id",SqlDbType.Int,4)
                                 };
            pra[0].Value = mes.state;
            pra[1].Value = mes.id;
            return Common.DbHelperSQL.ExecuteSql(sql.ToString(), pra);
        }




    }
}
