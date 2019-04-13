using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class procate
    {
       /*商品类别ID*/
       private int _cateid;
       public int cateid
       {
           get { return _cateid;}
           set { _cateid = value;}
       }
       /*商品类别名称*/
       private string _catename;
       public string catename
       {
           get { return _catename;}
           set { _catename = value;}
       }
      // private string _fathername;
      // public string fathername
      //{
      //    get { return _fathername; }
      //    set { _fathername = value; }
      // }
       private int _fathercateid;
       public int fathercateid
       {
           get { return _fathercateid; }
           set 
           {
               _fathercateid = value;
           }
       }

    }
}
