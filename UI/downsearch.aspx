<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true" CodeFile="downsearch.aspx.cs" Inherits="downsearch" Title="资源下载" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<link href="css/xstlye.css" rel="stylesheet" type="text/css" />
<div  class="x_right">
<div class="x_left_t2">
<div style=" margin-top:25px; text-align:center; font-size:16px; font-weight:bold;  ">
    资源下载</div>
<div style="margin-right:37px; text-align:right;"> 
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        　<a href='newshow.aspx?uid=<%#Eval("_id")%>'><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
         </a>
         <asp:TextBox ID="search" runat="server"></asp:TextBox> 
         <asp:Button ID="Button1" runat="server" Text="搜索" onclick="Button1_Click1" /></div>
     <div style=" margin-top:7px;"> 
        <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
           
               <table style="width: 100%">
                   <tr>
                       <td style=" padding-left:92px; width:200px;" >
                       <%-- <a href='newshow.aspx?uid=<%#Eval("_id")%>'>--%> 标题： <%#Common.DB.substr( Eval("_title").ToString(),13)%> <%--</a>--%>
                         </td>
                       <td style=" text-align:right;  width:120px;">
                          下载次数：<%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%> <%#Eval("_click")%>
                        </td>
                       <td style="padding-left:22px;  width:180px;">
                          上传时间： <%#Eval("_posttime")%>
                          </td>
                       <td style="text-align:left;width:50px;">
                          <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                               CommandArgument='<%#Eval("_id") %>' oncommand="LinkButton1_Command">下载</asp:LinkButton> 
                          </td>
                   </tr>
               </table>
           
            </ItemTemplate>
          </asp:Repeater>
      </div>
       
      <div style="clear:both;">  </div>
       <div>
           <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
               HorizontalAlign="Center" LastPageText="尾页" NextPageText="下一页" 
               PrevPageText="上一页" onpagechanging="AspNetPager1_PageChanging1">
           </webdiyer:AspNetPager>
       </div> 
<div class="line_x"></div>
</div>
<div class="x_left_t2">



</div>
</div>
<div class="clear"></div>

</asp:Content>



