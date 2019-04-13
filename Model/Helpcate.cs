using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
    /// <summary>
    ///  _id 帮助id
    ///  —catename帮助分类名称
    /// </summary>
    public class Helpcate
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
    }
}
