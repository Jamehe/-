using System;
using System.Collections.Generic;

using System.Text;
using System.Data.SqlClient;
using System.Data;
using Model;
using DAL;
namespace BLL
{
    public class BLLmessage
    {
        public int post(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.post(mes);
        }

        public DataSet select(int pageindex, int pagesize, string table)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.select(pageindex ,pagesize,table);
        }

        public DataSet messelect(int pageindex, int pagesize, string table, string title)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.messelect(pageindex, pagesize, table,title);
        
        }


        public int mes_select(string title)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.mes_select(title);
        }


        public int message_state()
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.message_state();
        }





        public DataSet h_select(int pageindex, int pagesize, string table)
        {

            DALmessage dalmessage = new DALmessage();
            return dalmessage.h_select(pageindex, pagesize, table);

        }

        public int messageCount()
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.messageCount();
        }



        public int reply(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.reply(mes);
        }

        public SqlDataReader readmessage(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.readmessage(mes);
        }

        public int delete(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.delete(mes);
        }

        public int update(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.update(mes);

        }

        public int p_update(message mes)
        {
            DALmessage dalmessage = new DALmessage();
            return dalmessage.p_update(mes);
        
        }
    }
}
