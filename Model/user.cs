using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class user
    {
      /*会员ID*/
       private int _userid;
       public int userid
       {
           get { return _userid;}
           set { _userid = value;}
       }

       /*会员名*/
       private string _username;
       public string username
       {
           get { return _username;}
           set { _username = value;}
       }

       /*会员密码*/
       private string _pwd;
       public string pwd
       {
           get { return _pwd;}
           set { _pwd = value;}
       }

       /*会员邮箱*/
       private string _email;
       public string email
       {
           get { return _email;}
           set { _email = value;}
       }
       /*会员qq*/
       private string _qq;
       public string qq
       {
           get { return _qq; }
           set { _qq = value;}
       }
       /*会员msn*/
       private string _msn;
       public string msn
       {
           get { return _msn;}
           set { _msn = value;}
       }

       /*会员安全问题*/
       private string _safequestion;
       public string safequestion
       {
           get { return _safequestion;}
           set { _safequestion = value;}
       
       }
       /*会员安全密码*/
       private string _safepwd;
       public string safepwd
       {
           get { return _safepwd;}
           set { _safepwd = value;}     
       }
       /*会员登陆时间*/
       private DateTime _logintime;
       public DateTime time
       {
           get { return _logintime; }
           set { _logintime = value; }
       }
    }
}
