using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;




/// <summary>
/// 弹出信息
/// </summary>
/// 

namespace Common
{
    public class MessageAlert
    {







        /// <summary>
        /// 传入信息弹出来
        /// </summary>
        /// <param name="page"></param>
        /// <param name="msg"></param>
        public static void Alert(System.Web.UI.Page page, string msg)
        {

            page.ClientScript.RegisterStartupScript(page.GetType(), "msg", "<script>alert('" + msg + "');</script>");
        }
        /// <summary>
        /// 自定义脚本信息
        /// </summary>
        /// <param name="page"></param>
        /// <param name="msg"></param>
        public static void AlertLocation(System.Web.UI.Page page, string msg)
        {

            page.ClientScript.RegisterStartupScript(page.GetType(), "msg", "<script>" + msg + "</script>");
        }

    }


    /// <summary>
    ///DB数据库操作
    /// </summary>
    public class DB
    {
        public static string substr(string str, int num)
        {
            string strs;
            if (str.Length > num)
            {
                strs = str.Substring(0, num) + "...";


            }
            else
            {
                strs = str;

            }
            return strs;
        }


        public static string substr1(string str, int num)
        {
            string strs;
            if (str.Length > num)
            {
                strs = str.Substring(0, num);


            }
            else
            {
                strs = str;

            }
            return strs;
        }





        public static string conStr = ConfigurationManager.ConnectionStrings["haqiuConnectionString"].ToString();

        public static SqlConnection con = new SqlConnection();
        public static SqlCommand cmd = new SqlCommand();


        public static void openConnection()//打开数据库
        {
            if (con.State == ConnectionState.Closed)
            {
                try
                {
                    con.ConnectionString = conStr;
                    cmd.Connection = con;
                    con.Open();
                }
                catch (Exception err)
                {

                    throw new Exception(err.Message);
                }

            }
        }
        public static void closeConnection()//关闭数据库
        {
            if (con.State == ConnectionState.Open)
            {
                try
                {

                    con.Close();
                    con.Dispose();
                    cmd.Dispose();
                }
                catch (Exception err)
                {

                    throw new Exception(err.Message);
                }

            }
        }

        /// <summary>
        /// 执行sql语句
        /// </summary>
        /// <param name="sqlstr">sql</param>
        public static int ExecuteSql(string sqlstr)
        {
            int result = 0;
            try
            {
                openConnection();

                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                result = cmd.ExecuteNonQuery();

                closeConnection();
                return result;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
        }


        #region 执行存储过程
        /// <summary>
        /// 执行存储过程
        /// </summary>
        /// <param name="procName">存储过程名</param>
        /// <param name="coll">SqlParameters 集合</param>
        public static void ExecutePorcedure(string procName, SqlParameter[] coll)
        {
            try
            {
                openConnection();
                for (int i = 0; i < coll.Length; i++)
                {
                    cmd.Parameters.Add(coll[i]);
                }
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = procName;
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                cmd.Parameters.Clear();
                closeConnection();
            }
        }
        #endregion
        #region 执行存储过程并返回数据集
        /// <summary>
        /// 执行存储过程并返回数据集
        /// </summary>
        /// <param name="procName">存储过程名称</param>
        /// <param name="coll">SqlParameter集合</param>
        /// <param name="ds">DataSet </param>
        public static void ExecutePorcedure(string procName, SqlParameter[] coll, ref DataSet ds)
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter();
                openConnection();
                for (int i = 0; i < coll.Length; i++)
                {
                    cmd.Parameters.Add(coll[i]);
                }
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = procName;
                da.SelectCommand = cmd;
                da.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                cmd.Parameters.Clear();
                closeConnection();
            }
        }
        #endregion

        #region 执行Sql查询语句并返回第一行的第一条记录,返回值为object 使用时需要拆箱操作 -> Unbox
        /// <summary>
        /// 执行Sql查询语句并返回第一行的第一条记录,返回值为object 使用时需要拆箱操作 -> Unbox
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <returns>object 返回值 </returns>
        public static object ExecuteScalar(string sqlstr)
        {
            object obj = new object();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                obj = cmd.ExecuteScalar();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return obj;
        }
        #endregion

        #region 执行Sql查询语句,同时进行事务处理
        /// <summary>
        /// 执行Sql查询语句,同时进行事务处理
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        public static void ExecuteSqlWithTransaction(string sqlstr)
        {
            SqlTransaction trans;
            trans = con.BeginTransaction();
            cmd.Transaction = trans;
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                cmd.ExecuteNonQuery();
                trans.Commit();
            }
            catch
            {
                trans.Rollback();
            }
            finally
            {
                closeConnection();
            }
        }
        #endregion

        #region 返回指定Sql语句的SqlDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接方法关闭数据库连接
        /// <summary>
        /// 返回指定Sql语句的SqlDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接
        /// 方法关闭数据库连接
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <returns>SqlDataReader对象</returns>
        public static SqlDataReader dataReader(string sqlstr)
        {
            SqlDataReader dr = null;
            try
            {
                openConnection();
                cmd.CommandText = sqlstr;
                cmd.CommandType = CommandType.Text;
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch
            {
                try
                {
                    dr.Close();
                    closeConnection();
                }
                catch
                {
                }
            }
            return dr;
        }
        #endregion

        #region (ref)返回指定Sql语句的SqlDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接方法关闭数据库连接
        /// <summary>
        /// 返回指定Sql语句的SqlDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接
        /// 方法关闭数据库连接
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <param name="dr">传入的ref DataReader 对象</param>
        public static void dataReader(string sqlstr, ref SqlDataReader dr)
        {
            try
            {
                openConnection();
                cmd.CommandText = sqlstr;
                cmd.CommandType = CommandType.Text;
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch
            {
                try
                {
                    if (dr != null && !dr.IsClosed)
                        dr.Close();
                }
                catch
                {
                }
                finally
                {
                    closeConnection();
                }
            }
        }
        #endregion
        #region 返回指定Sql语句的DataSet
        /// <summary>
        /// 返回指定Sql语句的DataSet
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <returns>DataSet</returns>
        public static DataSet dataSet(string sqlstr)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return ds;
        }




        //string table 为虚拟表 可以用 搜索的数据库表"name" 
        //DataSet ds1 = DB.PagedataSet(sqlstr1, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), 
        //    AspNetPager1.PageSize,"newlist");
        //    Repeater1.DataSource = ds1.Tables[0];
        public static DataSet PagedataSet(string sqlstr, int pageindex, int pagesize, string table)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(ds, pageindex, pagesize, table);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return ds;
        }

        #endregion
        #region (ref)返回指定Sql语句的DataSet
        /// <summary>
        /// 返回指定Sql语句的DataSet
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <param name="ds">传入的引用DataSet对象</param>
        public static void dataSet(string sqlstr, ref DataSet ds)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
        }
        #endregion
        #region 返回指定Sql语句的DataTable
        /// <summary>
        /// 返回指定Sql语句的DataTable
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <returns>DataTable</returns>
        public static DataTable dataTable(string sqlstr)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable datatable = new DataTable();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(datatable);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return datatable;
        }
        #endregion
        #region 执行指定Sql语句,同时给传入DataTable进行赋值
        /// <summary>
        /// 执行指定Sql语句,同时给传入DataTable进行赋值
        /// </summary>
        /// <param name="sqlstr">传入的Sql语句</param>
        /// <param name="dt">ref DataTable dt </param>
        public static void dataTable(string sqlstr, ref DataTable dt)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
        }
        #endregion
        #region 执行带参数存储过程并返回数据集合
        /// <summary>
        /// 执行带参数存储过程并返回数据集合
        /// </summary>
        /// <param name="procName">存储过程名称</param>
        /// <param name="parameters">SqlParameterCollection 输入参数</param>
        /// <returns></returns>
        public static DataTable dataTable(string procName, SqlParameterCollection parameters)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable datatable = new DataTable();
            try
            {
                openConnection();
                cmd.Parameters.Clear();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = procName;
                foreach (SqlParameter para in parameters)
                {
                    SqlParameter p = (SqlParameter)para;
                    cmd.Parameters.Add(p);
                }
                da.SelectCommand = cmd;
                da.Fill(datatable);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return datatable;
        }
        #endregion
        #region 返回指定sql语句的 DataView
        public static DataView dataView(string sqlstr)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataView dv = new DataView();
            DataSet ds = new DataSet();
            try
            {
                openConnection();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlstr;
                da.SelectCommand = cmd;
                da.Fill(ds);
                dv = ds.Tables[0].DefaultView;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                closeConnection();
            }
            return dv;
        }
        #endregion
         




    /// 过滤html,js,css代码
    /// <summary>
    /// 过滤html,js,css代码
    /// </summary>
    /// <param name="html">参数传入</param>
    /// <returns></returns>
    public static string CheckStr(string html)
    {
        System.Text.RegularExpressions.Regex regex1 = new System.Text.RegularExpressions.Regex(@"<script[\s\S]+</script. *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex2 = new System.Text.RegularExpressions.Regex(@" href *= *[\s\S]*script. *:", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex3 = new System.Text.RegularExpressions.Regex(@" no[\s\S]*=", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex4 = new System.Text.RegularExpressions.Regex(@"<iframe[\s\S]+</iframe. *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex5 = new System.Text.RegularExpressions.Regex(@"<frameset[\s\S]+</frameset *>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex6 = new System.Text.RegularExpressions.Regex(@"\<img[^\>]+\>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex7 = new System.Text.RegularExpressions.Regex(@"</p>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex8 = new System.Text.RegularExpressions.Regex(@"<p>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        System.Text.RegularExpressions.Regex regex9 = new System.Text.RegularExpressions.Regex(@"<[^>]*>", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
        html = regex1.Replace(html, ""); //过滤<script></script>标记
        html = regex2.Replace(html, ""); //过滤href=java script. (<A>) 属性
        html = regex3.Replace(html, " _disibledevent="); //过滤其它控件的on...事件
        html = regex4.Replace(html, ""); //过滤iframe
        html = regex5.Replace(html, ""); //过滤frameset
        html = regex6.Replace(html, ""); //过滤frameset
        html = regex7.Replace(html, ""); //过滤frameset
        html = regex8.Replace(html, ""); //过滤frameset
        html = regex9.Replace(html, "");
        html = html.Replace(" ", "");
        html = html.Replace("</strong>", "");
        html = html.Replace("<strong>", "");
        html = html.Replace("'", "＇");
        return html;
    }
    /// <summary>
    /// 传入用户输入判断是不是非法关键字
    /// </summary>
    /// <param name="sql_str">传入用户输入字符判断</param>
    /// <returns></returns>
    public static bool sql_immit(String sql_str)
    {//用#分割关键字
        string model_str = "'#and#exec#insert#select#delete#update#count#*#%#chr#mid#master#truncate#char#declare#;#or#-#+#,";

        string[] model_split_str = model_str.Split('#');

        for (int i = 0; i < model_split_str.Length; i++)
        {
            if (sql_str.IndexOf(model_split_str[i]) >= 0)
            {
                //>=0说明有关键字，否则说明没有关键字
                return true;

            }
        }
        return false;
    }
    }





}
