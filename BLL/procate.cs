using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class procate
    {
        public int insert(Model.procate model1)
        {
            DAL.procate dal = new DAL.procate();
            int result = dal.Insert(model1);
            return result;
        }
        public DataSet dataset()
        {
            DAL.procate dal = new DAL.procate();
            return dal.findProcates();
        }
        public DataSet data_set()
        {
            DAL.procate dal = new DAL.procate();
            return dal.findProcateAndFathercate();
        }
        public string select_name(int cate_id)
        {
            DAL.procate dal = new DAL.procate();
            return dal.select_name(cate_id);
        }
        public int num(int f_id)
        {
            DAL.procate dal = new DAL.procate();
            return dal.num(f_id);

        }
        public int update(Model.procate mym)
        {
            DAL.procate dal = new DAL.procate();
            return dal.update(mym);
        }
        public int dalete(int cate_id)
        {
            DAL.procate dal = new DAL.procate();
            return dal.delete(cate_id);
        }
        public DataSet data_f(int f_cateid)
        {
            DAL.procate dal = new DAL.procate();
            return dal.data_f(f_cateid);
        }

        //通过产品类别id获取产品类别
        public Model.procate findProcateById(int _cateid)
        {
            DAL.procate dal = new DAL.procate();
            Model.procate pcate=new Model.procate();
            DataTable da= dal.findCateById(_cateid);
            if (da.Rows.Count > 0)
            {
                LoadEntity(da.Rows[0], pcate);
            }
            return pcate;
        }

        //LoadEntity
        private void LoadEntity(DataRow row, Model.procate cate)
        {
            cate.cateid= Convert.ToInt16(row["_cateid"]);
            cate.catename = row["_catename"].ToString();
            cate.fathercateid = Convert.ToInt16(row["_fathercateid"]);
        }
    }
     
}
