using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;
using DAL;
namespace BLL
{
   public  class BLLhelp
    {
       public int insert(Help help)
       {
           DALhelp dalhelp = new DALhelp();
          return  dalhelp.inserthelp(help);
       }

       public DataSet select(int pageindex, int pagesize, string table)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.select(pageindex, pagesize, table);
       }

       public int delete(Help help)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.delete(help);
       }

       public int update(Help help)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.update(help);
       
       }

       public SqlDataReader readinfo(Help help)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.readinfo(help);
       }
       public int resultCount()
       {
           DALhelp dalhelp = new DALhelp();
         return   dalhelp.resultCount();
       }

       public int searchResult(Help help)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.searchResult(help);
           
       }

       public DataSet ds_search(int pageindex, int pagesize, string table, int cateid)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.ds_search(pageindex, pagesize, table, cateid);
       
       }

       public DataSet _selectAll(int cateid)
       {

           DALhelp dalhelp = new DALhelp();
           return dalhelp._selectAll(cateid);
       }


       public DataSet cj_ds(int cateid)
       {
           DALhelp dal = new DALhelp();
           return dal.cj_ds(cateid);
       }

       public DataSet selectAll()
       {
           DALhelp dalhelp = new DALhelp();
         return  dalhelp.selectAll();
       }

       public DataSet selectAll(int id)
       {
           DALhelp dalhelp = new DALhelp();
           return dalhelp.selectAll(id);
       
       }
   }
}
