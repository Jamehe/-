using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
    /*************新闻分类系统*****************/
    /// <summary>
    ///  _id 新闻分类id
    ///  _catename 新闻分类名称
    /// </summary>
    public class Newscate
    {
        private int _id;
        private string _catename;
        public int ID
        {
            set
            {
                _id = value;
            }
            get
            {
                return _id;
            }
        }
        public string Catename
        {
            set 
            {
                _catename = value; 
            }
            get
            {
                return _catename;
            }
        }
        /*************新闻分类系统*****************/
    }
}
