using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
    public  class downlist
    {
        private int _id;
        public int id
        {
            get { return _id; }
            set { _id = value; } 
        }

        private string _title;
        public string title
        {
            get { return _title; }

            set { _title = value; } 
        
        }

        private string _size;
        public string size
        {
            get { return _size; }
            set { _size = value;} 
        }
        private int _click;
        public int click
        {
            get { return _click; }
            set { _click = value; } 
        }
        private DateTime _posttime;
        public DateTime posttime
        {
            get { return _posttime; }
            set { _posttime = value; } 
        }
        private string _uploadurl;
        public string uploadurl
        {
            get { return _uploadurl;}
            set { _uploadurl = value; } 
        }
    }
}
