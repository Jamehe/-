using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
   public class product
    {
       /*商品ID*/
       private int _id;
       public int id
       {
           get { return _id; }
           set { _id = value;}
       }
       /*商品名称*/
       private string _title;
       public string title
       {
           get { return _title;}
           set { _title = value;}
       }
       /*商品类别*/
       private int _cateid;
       public int cateid
       {
           get { return _cateid; }
           set { _cateid = value;}
       }
       /*市场价格*/
       private double _marketprice;
       public double marketprice
       {
           get { return _marketprice;}
           set { _marketprice = value;}
       }
       /*本站价格*/
       private double _localprice;
       public double localprice
       {
           get { return _localprice;}
           set { _localprice = value;}
       }
       /*商品描述*/
       private string _content;
       public string content
       {
           get { return _content;}
           set { _content = value;}
       }
       /*发布时间*/
       private DateTime _posttime;
       public DateTime posttime
       {
           get { return _posttime;}
           set { _posttime = value;}
       }
       /*商品总量*/
       private string _weight;
       public string weight
       {
           get { return _weight;}
           set { _weight = value; }
       }
       /*商品是否特价*/
       private int _ischeap;
       public int ischeap
       {
           get { return _ischeap;}
           set { _ischeap = value;}
       }
       /*是否推荐*/
       private int _isrecomment;
       public int isrecomment
       {
           get { return _isrecomment; }
           set { _isrecomment = value;}
       }
       /*是否置顶*/
       private int _top;
       public int top
       {
           get { return _top;}
           set { _top = value;}
       }
       /*商品库存*/
       private int _procount;
       public int procount
       {
           get { return _procount; }
           set { _procount = value;}
       }
       /* 产品展示首页*/
      
      private string  _imageid;
      public string  imageid
       {
           get { return _imageid; }
           set { _imageid = value; }
       }
    }

}
