using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
   public  class proimage
    {
       public int insert(Model.proimage myb)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.Insert(myb);
       }
       public int selectid(Model.proimage myb)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.selectid(myb);
       }
       public DataSet select_sizeid(string myb)
       {

           DAL.proimage dal = new DAL.proimage();
           return dal.select_sizeid(myb);
 
       }
       public int delete(string mym)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.delete(mym);
       }
       public int delete_1(string mym)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.delect_1(mym);
       }
       public SqlDataReader image_update(string size_id)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.image_update(size_id);

       }
       public int upimage(Model.proimage mym)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.upimage(mym);
       }
       public DataSet select_color(string mym)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.select_color(mym);
       }
       public SqlDataReader s_imageurl(string size_id)
       {
           DAL.proimage dal = new DAL.proimage();
           return dal.s_imageurl(size_id);
       }

       //

       public SqlDataReader drim(Model.proimage aa)
       {
           DAL.proimage da = new DAL.proimage();
           return da.dsim(aa);
       }
    }
}
