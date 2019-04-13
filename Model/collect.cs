using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class collect
    {
       /*收藏ID*/
       private int _id;
       public int id
       {
           get { return _id;}
           set { _id = value;}
       }

       /*会员ID*/
       private int _userid;
       public int userid
       {
           get { return _userid;}
           set { _userid = value;}
       }
       /*收藏时间*/
       private DateTime _collecttime;
       public DateTime collecttime
       {
           get { return _collecttime;}
           set { _collecttime = value;}
       }
       /*商品ID*/
       private int _proid;
       public int proid
       {
           get { return _proid;}
           set { _proid = value;}
       }

       /*商品名称*/
       private string _proname;
       public string proname
       {
           get { return _proname;}
           set { _proname = value;}
       }
       /*商品价格*/
       private double _proprice;
       public double proprice
       {
           get { return _proprice;}
           set { _proprice = value;}
       }

       /*商品图片*/
       private string _proimage;
       public string proimage
       {
           get { return _proimage;}
           set { _proimage = value;}
       }

    }
}
