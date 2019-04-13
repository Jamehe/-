using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public  class adminuser
    {
        public DataSet dsus(int a, int b, string c)

        {
            DAL.adminuser dalad = new DAL.adminuser();
            return dalad.dsuser(a,b,c);
        }
        public int count()
        {
            DAL.adminuser dal = new DAL.adminuser();
            return dal.count();
        }
        public int dele(Model.user aa)
        {
            DAL.adminuser da = new DAL.adminuser();
            return da.dele(aa);
        }
        public int coun(Model.user aa)
        {
            DAL.adminuser das = new DAL.adminuser();
            return das.cou(aa);
        }
        public DataSet seu(int a, int b, string c, Model.user aa)
        {
            DAL.adminuser dad = new DAL.adminuser();
            return dad.dsu(a,b,c,aa);
        }
        public SqlDataReader drus(Model.user aa)
        {
            DAL.adminuser dal = new DAL.adminuser();
            return dal.drus(aa);
        }
    }
}
