using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class shoplist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            Label1.Visible = false; 
            buy_count();
        } 
    }
  public void   buy_count()
    {
        DataTable dt = null;
        if (Session["dt"] != null)
        {
            dt = (DataTable)Session["dt"];
      
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i]["sumprice"] = Convert.ToInt32(dt.Rows[i]["localprice"]) * Convert.ToInt32(dt.Rows[i]["buycount"]);
                dt.Rows[i]["sumweight"] = Convert.ToInt32(dt.Rows[i]["weight"]) * Convert.ToInt32(dt.Rows[i]["buycount"]);
                Session["dt"] = dt; 
                aa();

            }
        }
        else
        {
            Label1.Visible = true;
        }
    }
    public void aa()
    {
        DataTable dt=null;
        if (Session["dt"] != null)
        {
            dt = (DataTable)Session["dt"];
            double  wholeprice=0;
            double wholeweight = 0;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                wholeprice += Convert.ToInt32(dt.Rows[j]["sumprice"]);
                wholeweight += Convert.ToInt32(dt.Rows[j]["sumweight"]);
            }
            wprice.Text = wholeprice.ToString();//总价格
            wweight.Text = wholeweight.ToString();//总重量
            Session["wholeprice"] = wholeprice;
            Session["wholeweight"] = wholeweight;
            wholeprocount.Text =Convert.ToString  ( dt.Rows.Count);//商品总项数
            Session["wholeprocount"] = wholeprocount.Text;
            if (dt.Rows.Count == 0)
            {
                Label1.Visible = true;
            }
                
            else
            {
            }
        }
        else
        {
            Label1.Visible = true;
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        
        
    }
    protected void buy_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void pay_Click(object sender, ImageClickEventArgs e)
    {
        if (Label1.Visible)
        {
            Common.MessageAlert.Alert(Page, "您还有购买商品，请至少选择一样商品！");
        }
        else
        {
            Response.Redirect("shoplist2.aspx");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Label size = new Label();
        Label color = new Label();
       
        
        if (e.CommandName == "Delete")
        {
          
            DataTable dt=(DataTable )Session ["dt"];
            for (int i=0;i<dt.Rows.Count ;i++)
            {
                if (Convert.ToString(dt.Rows[i]["only"]) == Convert.ToString(e.CommandArgument))
                {
                    dt.Rows.RemoveAt(i);
                }
            }
             
         
            Session["dt"] = dt;
            aa();     
        }
        if (e.CommandName == "Update")
        {
            DataTable dt = (DataTable)Session["dt"];
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                if (Convert.ToString(dt.Rows[j]["only"]) == Convert.ToString(e.CommandArgument))
                {
                   
                    TextBox buycount = new TextBox();
                    buycount = (TextBox)GridView1.Rows[j].FindControl("buycount");
                    try
                    {
                        if (Convert.ToInt32(buycount.Text) > 0 && Convert.ToInt32(buycount.Text) < 10000)
                        {
                            dt.Rows[j]["buycount"] = buycount.Text;
                        }
                        else
                        {

                        }
                    }
                    catch
                    {
                        Common.MessageAlert.Alert(Page, "请输入正确的格式!");
                        buycount.Text = dt.Rows[j]["buycount"].ToString();
                    }
                    dt.Rows[j]["sumprice"] = Convert.ToInt32(dt.Rows[j]["localprice"]) * Convert.ToInt32(dt.Rows[j]["buycount"]);
                    dt.Rows[j]["sumweight"] = Convert.ToInt32(dt.Rows[j]["weight"]) * Convert.ToInt32(dt.Rows[j]["buycount"]);
                    Session["dt"] = dt; 
                    aa();
                }
            }
        }
    }
    protected void buycount_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void clearpro_Click(object sender, EventArgs e)
    {
        Session["dt"] = null;
        wprice.Text = "0";
        aa();
    }
}
