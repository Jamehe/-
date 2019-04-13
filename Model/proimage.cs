using System;
using System.Collections.Generic;

using System.Text;

namespace Model
{
  public class proimage
    {
      private int _id;
      public int id
      {
          get { return _id;}
          set { _id = value; }
      }
      private string  _imageid;
      public string  imageid
      {

          get { return _imageid;}
          set { _imageid = value; }
      }
      private string _imageurl;
      public string imageurl
      {

          get { return _imageurl;}
          set { _imageurl = value; }
      }
      private string _color;
      public string color
      {


          get { return _color; }
          set { _color = value; }
      }
      private string  _sizeid;
      public string  sizeid
      {
          get { return _sizeid; }
          set { _sizeid = value; }
      }

    }
}
