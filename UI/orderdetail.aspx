<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true" CodeFile="orderdetail.aspx.cs" Inherits="orderdetail" Title="订单详情" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div>订单号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    <div style ="text-align : center ;">
        <asp:GridView ID="GridView1" runat="server" Width="100%" 
            AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="商品图片">
            <ItemTemplate>
              <a href ='ProInfo.aspx?uid=<%#Eval("_proid") %> '>  <asp:Image ID="Image1" runat="server" ImageUrl ='<%#Eval("_proimage") %>' Height ="40px" Width ="40px"/></a>
            </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品名称">
                   <ItemTemplate >
                   <a href ='ProInfo.aspx?uid=<%#Eval("_proid") %> '><%#Eval ("_title") %></a>
                   </ItemTemplate>
                </asp:TemplateField>
                <%--<asp:BoundField DataField="_price" HeaderText="商品价格" />--%>
                <asp:TemplateField HeaderText="商品价格">
                   <ItemTemplate >
                       <asp:Label ID="_price" runat="server" Text='<%#Eval("_price","{0:N2}") %>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="_weight" HeaderText="商品重量" />
                <asp:BoundField DataField="_count" HeaderText="商品数目" />
                <asp:TemplateField HeaderText="商品总价">
                   <ItemTemplate >
                       <asp:Label ID="sumprice" runat="server" Text='<%#Eval("_sumprice","{0:N2}") %>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品总重">
                  <ItemTemplate >
                       <asp:Label ID="sumweight" runat="server" Text='<%#Eval("_sumweight") %>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
               
                <%--<asp:BoundField DataField="_color" HeaderText="商品颜色" />--%>
                <asp:BoundField DataField="_cate" HeaderText="商品类别" />
            </Columns>
        </asp:GridView>
    </div><div style ="float :right ;">


购物金额小计 ￥<asp:Label ID="wprice" runat="server" Text="0"></asp:Label>元 

</div>
<div  style ="float : right ; padding-right:15px ;">购物重量小计：<asp:Label ID="wweight" runat="server" Text="0"></asp:Label>克</div>
<div  style ="float : right ; padding-right:15px ;">商品总数：<asp:Label ID="wholeprocount" runat="server" Text="0"></asp:Label></div>
    <br />
      <div style ="text-align :center ;"><asp:Button ID="Button1" runat="server" Text="返回订单列表" 
          onclick="Button1_Click" />
          </div>
</div>
</asp:Content>

