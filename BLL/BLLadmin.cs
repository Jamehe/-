using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;
using DAL;
namespace BLL
{
    public class BLLadmin
    {
        public SqlDataReader checkAdmin(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.checkAdmin(admin);
        }

        public int insertAdmin(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.insertAdmin(admin);
        }
        public int deleteAdmin(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.deleteAdmin(admin);
        }

        public DataSet selectAdmin(int pageindex, int pagesize, string table)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.selectAdmin();
        }
        public int updateAdmin(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.updateAdmin(admin);
        }
        public SqlDataReader readAdmin(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.readAdmin(admin);

        }
        public SqlDataReader _login(admin admin)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin._login(admin);
        }
        //public DataSet searchAdmin(admin admin)
        //{
        //    DALadmin daladmin = new DALadmin();
        //    return daladmin.searchAdmin(admin);
        //}

        public DataSet adminlist(int pageindex, int pagesize, string table)
        {
            DALadmin daladmin = new DALadmin();
            DataSet ds = daladmin.adminlist(pageindex, pagesize, table);
            return ds;
        }

        public int admin()
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.admin();
        }

        public int s_admin(string name)
        {
            DALadmin daladmin = new DALadmin();
            return daladmin.s_admin(name);
        
        }

        public DataSet S_admin(int pageindex, int pagesize, string table, string name)
        {
            DALadmin daladmin = new DALadmin();
            DataSet ds = daladmin.S_admin(pageindex, pagesize, table,name);
            return ds;
        }


     

        
    }
}
