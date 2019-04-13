<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="orderdetail.aspx.cs" Inherits="admin_orderdetail" Title="订单详细信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div style ="font-size :16px; text-align:center ;">订单详细信息</div>
<br />
<table  width ="100%" style ="text-align :center;">
<tr>
<td><div>产品ID：<asp:Label ID="proid" runat="server" Text="Label"></asp:Label></div></td>
<td><div>支付方式：<asp:Label ID="waysgive" runat="server" Text="Label"></asp:Label></div></td>
<td><div>需要发票：<asp:Label ID="needbill" runat="server" Text="Label"></asp:Label></div></td>
</tr>
<tr>
<td><div>订单号：<asp:Label ID="pronum" runat="server" Text="Label"></asp:Label></div></td>
<td><div>商品总项数：<asp:Label ID="count" runat="server" Text="Label"></asp:Label></div></td>
<td><div>订单时间：<asp:Label ID="ordertime" runat="server" Text="Label"></asp:Label></div></td>
</tr>
<tr>
<td><div>商品总价：<asp:Label ID="sumpric" runat="server" Text="Label"></asp:Label></div></td>
<td><div>收货人地址：<asp:Label ID="address" runat="server" Text="Label"></asp:Label></div></td>
<td><div>收货人手机号码：<asp:Label ID="mobile" runat="server" Text="Label"></asp:Label></div></td>
</tr>
<tr>
<td><div>收货人电话号码：<asp:Label ID="tel" runat="server" Text="Label"></asp:Label></div></td>
<td><div>收货人邮编：<asp:Label ID="mail" runat="server" Text="Label"></asp:Label></div></td>
<td><div>收货人姓名：<asp:Label ID="name" runat="server" Text="Label"></asp:Label></div></td>
</tr>
<tr>
<td><div>买家留言：<asp:Label ID="buyremarks" runat="server" Text="Label"></asp:Label></div>
</td>
<td><div>卖家留言：<asp:Label ID="sellremarks" runat="server" Text="Label"></asp:Label></div>

</td>
<td></td>
</tr>
</table>
<br />


    <div style ="text-align : center ;">
        <asp:GridView ID="GridView1" runat="server" Width="100%" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:TemplateField HeaderText="商品图片">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl ='/<%#Eval("_proimage") %>' Height ="40px" Width ="40px"/>
            </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="_title" HeaderText="商品名称" />
                <asp:BoundField DataField="_price" HeaderText="商品价格" />
                <asp:BoundField DataField="_weight" HeaderText="商品重量" />
                <asp:BoundField DataField="_count" HeaderText="商品数目" />
                <asp:BoundField DataField="_sumprice" HeaderText="商品总价" />
                <asp:BoundField DataField="_sumweight" HeaderText="商品总重" />
                <asp:BoundField DataField="_size" HeaderText="商品尺寸" />
                <asp:BoundField DataField="_color" HeaderText="商品颜色" />
                <asp:BoundField DataField="_cate" HeaderText="商品类别" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </div>
    <br />
  <div style ="text-align :center ;"><asp:Button ID="Button1" runat="server" Text="返回订单列表" 
          onclick="Button1_Click" />
          
    </div>
</asp:Content>

