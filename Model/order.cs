using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class order
    {
        private string _address;
        public string address
        {
            get { return _address; }
            set { _address = value; }
        }
       private int _id;
       public int id
       {
           get { return _id;}
           set { _id = value;}
       }

       private string _ordernum;
       public string ordernum
       {
           get { return _ordernum; }
           set { _ordernum = value; }
       }

       private int _paystate;
       public int paystate
       {
           get { return _paystate;}
           set { _paystate = value; }

       }
       private int _prostate;
       public int prostate
       {
           get { return _prostate; }
           set { _prostate = value;}
       }

       private int _userid;
       public int userid
       {
           get { return _userid; }
           set { _userid = value;}
       }
       private DateTime _ordertime;
       public DateTime ordertime
       {
           get { return _ordertime;}
           set { _ordertime = value;}
       }

       private string _sellremarks;
       public string sellremarks
       {
           get { return _sellremarks;}
           set { _sellremarks = value;}
       }

       private string _buyremarks;
       public string buyremarks
       {
           get { return _buyremarks;}
           set { _buyremarks = value;}
       }
       private int _count;
       public int count
       {
           get { return _count; }
           set { _count = value;}
       }
       
       private double _sumprice;
       public double sumprice
       {
         
           get{ return _sumprice;}
           set { _sumprice = value; }
       }
       private string  _tel;
       public string  tel
       {
           get { return _tel; }
           set { _tel = value; }
       }
       private string  _mobile;
       public string  mobile
       {
           get { return _mobile; }
           set { _mobile = value; }
       }
       private string  _name;
       public  string  name
       {
           get { return _name; }
           set { _name = value; }
       }
       private  string  _mail;
       public string  mail
       {
           get { return _mail; }
           set { _mail = value; }
       }
       private int _proid;
       public int proid
       {
           get { return _proid; }
           set { _proid = value; }
       }

       private int _needbill;
       public int needbill
       {
           get { return _needbill; }
           set { _needbill = value; }
       }
       private string _waysgive;
       public string  waysgive
       {
           get { return _waysgive; }
           set { _waysgive = value; }
       }

    }
}
