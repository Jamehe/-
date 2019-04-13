<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="shoplist.aspx.cs" Inherits="shoplist" Title="购物车" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .alk
    {
     background-color:#f5e6ec;	}
     .blkk
     {
     
     	 border :0;
     	}
     	.text_center
     	{
     		 text-align:center ;
     		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div  class="shoplist">
<div><img src="images/pay_setp_01.gif" /></div>
<div  style ="  text-align : center ; color : #ff8888;  font-size :14px;">
    <asp:Label ID="Label1" runat="server" Text="您的购物车暂时还没有商品哦！" Visible="False"></asp:Label></div>
<div style ="text-align :center ;">
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False"  HeaderStyle-CssClass ="alk" 
        RowStyle-CssClass="blkk" onrowcommand="GridView1_RowCommand"   BorderStyle="None" 
        onrowdeleting="GridView1_RowDeleting" BorderWidth="0px" 
        onrowupdated="GridView1_RowUpdated" onrowupdating="GridView1_RowUpdating" 
        DataKeyNames="only">
<RowStyle CssClass="blkk"></RowStyle>
        <Columns>
            <asp:BoundField DataField="only" HeaderText="唯一" Visible="False" />
            <asp:TemplateField HeaderText="产品id" Visible="False">
         <ItemTemplate >
             <asp:Label ID="id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
         </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品图片">
            <ItemTemplate>
             <a href='ProInfo.aspx?uid=<%#Eval("id") %>'><img src ='<%#Eval("image") %>'  height ="40px" width ="40px"/></a>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品名称">
             <ItemTemplate>
             <a href='ProInfo.aspx?uid=<%#Eval("id") %>'><%#Eval("title")%></a>
             </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商品属性">
               <ItemTemplate>
                   类别：<%#Eval("cate")%>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="localprice" HeaderText="本店价" />
            <asp:BoundField DataField="weight" HeaderText="商品重量" />
            <asp:TemplateField HeaderText="商品数量">
               <ItemTemplate>
                   <asp:TextBox ID="buycount" CssClass="text_center" runat="server"   Width="30px"  Text='<%# Bind("buycount") %>' ></asp:TextBox>
               </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="sumweight" HeaderText="商品总重（克）" />
            <asp:BoundField DataField="sumprice" HeaderText="商品总价（元）" />
            <asp:TemplateField HeaderText="更新" ShowHeader="False">
              <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Update" Text="更新"  CommandArgument='<%#Eval("only") %>'></asp:LinkButton>
                
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除吗?')" CommandArgument='<%#Eval("only") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

<HeaderStyle CssClass="alk"></HeaderStyle>
    </asp:GridView>
     
</div>
<div style ="float :right ;">


购物金额小计 ￥<asp:Label ID="wprice" runat="server" Text="0"></asp:Label>元 

</div>
<div  style ="float : right ; padding-right:15px ;">购物重量小计：<asp:Label ID="wweight" runat="server" Text="0"></asp:Label>克</div>
<div  style ="float : right ; padding-right:15px ;">商品总数：<asp:Label ID="wholeprocount" runat="server" Text="0"></asp:Label></div>
<div>
    <asp:LinkButton ID="clearpro" runat="server" onclick="clearpro_Click">清除购物车</asp:LinkButton></div>
<div style=" text-align:right; padding:15px;">
    <asp:ImageButton ID="buy" runat="server"  ImageUrl="images/but_buy_con.gif" 
        onclick="buy_Click"/>
    <asp:ImageButton ID="pay" runat="server"  ImageUrl="images/but_pay_now.gif" 
        onclick="pay_Click"/>


</div>
</div>
<div  style ="clear :both ;"></div>
<br />
<br />
</asp:Content>

