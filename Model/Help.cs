using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
    /*************帮助系统*****************/
    /// <summary>
    /// _id   帮助 id;
    /// _title 帮助的标题
    /// _content 帮助的内容
    /// cateid 帮助的分类id
    /// 
    /// </summary>
     public class Help
    {
         private int _id;
         private string _title;
         private string _content;
         private int _cateid;
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
        
    }
     /*************帮助系统*****************/
}
