using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class message
    {
       private int _id;
       public int id
       {
           get { return _id;}
           set { _id = value;}      
       }
       /*留言标题*/
       private string _title;
       public string title
       {
           get { return _title;}
           set { _title = value;}
       }
       /*留言内容*/
       private string _content;
       public string content
       {
           get { return _content;}
           set { _content = value;}
       }
       /*留言人ip*/
       private string _ip;
       public string ip
       {
           get { return _ip;}
           set { _ip = value;}
       }
       /*留言时间*/
       private DateTime _posttime;
       public DateTime posttime
       {
           get { return _posttime;}
           set { _posttime = value;}
       }
       /*留言回复*/
       private string _reply;
       public string reply
       {
           get { return _reply;}
           set { _reply = value;}
       }
       /*留言是否通过*/
       private int _state;
       public int state
       {
           get { return _state;}
           set { _state = value; }
       }
    }
}
