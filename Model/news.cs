using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
    /*************新闻系统*****************/
    /// <summary>
    /// _id 新闻的id
    /// _title 新闻的标题
    /// _from 新闻的来源
    /// _author 新闻的作者
    /// _top 新闻是否置顶
    /// _click 新闻点击率
    /// _content新闻内容
    /// _posttime新闻发布时间
    /// _cateid新闻分类id
    /// _ispic 新闻是否图文
    /// </summary>
    public class News
    {
        public int _id;
        private string _title;
        private string _from;
        private string _author;
        private int _top;
        private int _click;
        private string _content;
        private string _posttime;
        private int _cateid;
        private int _ispic;
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
        public string Title
        {
            set
            {
                _title = value;
            }
            get
            {
                return _title;
            }
        }
        public string From
        {
            set
            {
                _from = value;
            }
            get
            {
                return _from;
            }
        }
        public string Author
        {
            set
            {
                _author = value;
            }
            get
            {
                return _author;
            }
        }
        public int Top
        {
            set
            {
                _top = value;
            }
            get
            {
                return _top;
            }
        }
        public int Click
        {
            set
            {
                _click = value;
            }
            get
            {
                return _click;
            }
        }
        public string Content
        {
            set
            {
                _content = value;
            }
            get
            {
                return _content;
            }
        }
        public string Posttime
        {
            set
            {
                _posttime = value;
            }
            get
            {
                return _posttime;
            }
        }
        public int Cateid
        {
            set
            {
                _cateid = value;
            }
            get
            {
                return _cateid;
            }
        }
        public int Ispic
        {
            set
            {
                _ispic = value;
            }
            get 
            {
                return _ispic;
            }
        }
        /*************新闻系统*****************/
    }
}
