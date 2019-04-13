using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{

   public class address
    {
       /*送货地址ID*/
       private int _id;
       public int id
       {
           get { return _id; }
           set { _id = value;}
       }
       /*会员ID*/
       private int _userid;
       public int userid
       {
           get { return _userid; }
           set { _userid = value; }
       }
       /*会员电话*/
       private string _tel;
       public string tel
       {
           get { return _tel;}
           set { _tel = value;}
       }
       /*会员手机*/
       private string _mobile;
       public string mobile
       {
           get { return _mobile;}
           set { _mobile = value;}
       }
       /*会员地址*/
       private string _address;
       public string Address
       {
           get { return _address;}
           set { _address = value;}
       }
       /*会员名字*/
       private string _name;
       public string name
       {
           get { return _name; }
           set { _name = value;}
       }
       /*会员邮编*/
       private string _mail;
       public string mail
       {
           get { return _mail;}
           set { _mail = value;}
       }

    }
}
