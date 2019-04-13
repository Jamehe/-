using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public  class orderdetail
    {
       private int _id;
       public int id
       {
           get { return _id; }
           set { _id = value;}
       }
       private string _proimage;
       public string proimage
       {
           get { return _proimage; }
           set { _proimage = value; }
       }
       private string _cate;
       public string cate
       {
           get { return _cate; }
           set { _cate = value; }
       }
       private int _count;
       public int count
       {

           get { return _count; }
           set { _count = value; }
       }
       private string  _ordernum;
       public string  ordernum
       {

           get { return _ordernum; }
           set { _ordernum = value; }
       }
       private double  _sumprice;
       public double sumprice
       {

           get { return _sumprice; }
           set { _sumprice = value;}
       }
       private double _price;
       public double price
       {

           get { return _price; }
           set { _price = value; }
       }

       private string _sumweight;
       public string sumweight
       {
           get { return _sumweight;}
           set { _sumweight = value; }
       }
       private string _title;
       public string title
       {
           get { return _title; }
           set { _title = value; }
       }
       private string _weight;
       public string weight
       {
           get { return _weight; }
           set { _weight = value; }
       }

       private int _proid;
       public int proid
       {
           get { return _proid; }
           set { _proid = value; }
       }

       private int _procateid;
       public int procateid
       {
           get { return _procateid;}
           set { _procateid = value; }
       }
       private string _size;
       public string  size
       {
           get { return _size; }
           set { _size = value; }
       }
       private string  _color;
       public  string  color
       {
           get { return _color; }
           set { _color = value; }
       }
    }
}
