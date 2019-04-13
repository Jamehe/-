using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public  class admin
    {
       private int _id;
       public int id
       {
           get { return _id; }
           set { _id = value; } 
       }

       private string _name;
       public string name
       {
           get { return _name; }
           set { _name = value;} 
       }
       private string _pwd;
       public string pwd
       {
           get { return _pwd; }
           set { _pwd = value; } 
       }
       private int _role;
       public int role
       {
           get { return _role;}
           set { _role = value; } 
       }

    }
}
