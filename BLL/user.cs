using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public  class user
    {
        public SqlDataReader  login(Model.user aa)
        {
            DAL.user dalus = new DAL.user();
            return dalus.userLogin(aa); 
        }
        public SqlDataReader lo(Model.user aa)
        {
            DAL.user da = new DAL.user();
            return da.lo(aa);
        }
        public int insert(Model.user aa)
        {
            DAL.user dalu = new DAL.user();
            return dalu.insert(aa);
        }
        public DataSet  checkEmail(Model.user aa)
        {
            DAL.user daluss = new DAL.user();
            return daluss.checkEmail(aa);
        }
        public SqlDataReader pp(Model.user aa)
        {
            DAL.user dal = new DAL.user();
            return dal.dd(aa);
        }
        public SqlDataReader drs(Model.user aa)
        {
            DAL.user dsd = new DAL.user();
            return dsd.drs(aa);
        }
        public int upus(Model.user aa)
        {
            DAL.user ds = new DAL.user();
            return ds.upUser(aa);
        }
        public int upPwd(Model.user aa)
        {
            DAL.user dalll = new DAL.user();
            return dalll.upPwd(aa);
        }
        public int upad(Model.address aa)
        {
            DAL.address dala = new DAL.address();
            return dala.insert(aa);
        }
        public SqlDataReader findByMail(Model.user aa)
        {
            DAL.user da = new DAL.user();
            return da.findByMail(aa);
        }
        public SqlDataReader checkPwd(Model.user aa)
        {
            DAL.user dals = new DAL.user();
            return dals.checkPwd(aa);
        }
        public int loginLastTime(Model.user aa)
        {
            DAL.user dalu = new DAL.user();
            return dalu.loginLastTime(aa);
        }
        public SqlDataReader checkById(Model.user aa)
        {
            DAL.user ds = new DAL.user();
            return ds.checkById(aa);
        }

    }
    public class oredr
    {
        public DataSet findOrders(int a,int b,Model.order aa)
        {
            DAL.order dalo = new DAL.order();
            return dalo.findOrders(a,b,aa);
        }
        public DataSet readPayOrder(Model.order aa)
        {
            DAL.order dal = new DAL.order();
            return dal.readPayOrder(aa);
        }

        public Model.order getuserOrder(int id)
        {
            DAL.order dal = new DAL.order();
            return dal.getUserOrder(id);
        }
       
        public int deleteUserOrder(Model.order aa)
        {
            DAL.order deo = new DAL.order();
            return deo.deleteUserOrder(aa);
        }
        public int count(Model.order aa)
        {
            DAL.order dalk = new DAL.order();
            return dalk.readCount(aa);
        }

    }
}
