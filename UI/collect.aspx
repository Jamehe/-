<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true"  EnableEventValidation="false"  CodeFile="collect.aspx.cs" Inherits="collect" Title="收藏夹" %>


<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_right_body">
 <div class="tit"><span>我的订单</span></div>
        <div class="main">
          <table class="table center tab_x1">
            <tbody><tr class="tr_h">
              <td class="tab_l_width" style="width: 90px">商品图片</td>
              <td>商品名称</td>
              <td>商品价格</td>
              <td>删除</td>
            </tr>
              <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <tr class="tr_h">
              <td style="width: 106px; height:116px;"  >
                <a href="ProInfo.aspx?uid=<%#Eval("_proid") %> "  ><asp:Image ID="Image1" runat="server" 
                      ImageUrl='<%#Eval("_proimage")%>' Height="116px" Width="106px" /></a></td>
              <td><%#Eval("_proname")%></td>
              <td><%#Eval("_proprice")%></td>
             
                  <td style="width:100px;">
                      <asp:ImageButton ID="ImageButton1" runat="server"   
                          ImageUrl="~/images/delete.gif" onclick="ImageButton1_Click" 
                          CommandName="Delete" CommandArgument='<%#Eval("_id")%>' 
                          oncommand="ImageButton1_Command"  />
                </td>
            </tr>
        </ItemTemplate>
            </asp:Repeater>
               <div>  
                   
      </div>  
            </tbody></table>
         <div style="text-align:center;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
                LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" AlwaysShow="True" 
                 CssClass="paginator" CurrentPageButtonClass="cpb" 
                 onpagechanging="AspNetPager1_PageChanging">
            </webdiyer:AspNetPager>
         </div>
        </div>
      
</div>
   
</asp:Content>

