<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="orderupdate.aspx.cs" Inherits="admin_orderupdate" Title="订单更新" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <div style =" font-size :16px;  text-align :center ;"><b>产品信息更改</b></div>
<br />
<div style =" padding-left:400px;">
<div>　　　　产品id：<asp:Label ID="proid" runat="server" Text=""></asp:Label></div>
<br />
<div>　　　　订单号：<asp:Label ID="ordernum" runat="server" Text=""></asp:Label></div>
<br />
<div>　　　是否发货：<asp:RadioButton ID="ispro" runat="server" GroupName="pro" Text="是" /> 
    <asp:RadioButton ID="notpro" runat="server" GroupName="pro" Text="否" /></div>
<br />
   
<div>　　　是否付款：<asp:RadioButton ID="ispay" runat="server" GroupName="pay" Text="是" />
    <asp:RadioButton ID="notpay"
    runat="server" GroupName="pay" Text="否" /></div>
    <br />
    <div>　　　卖家留言：<asp:TextBox ID="sellremarks" runat="server" TextMode ="MultiLine" 
            Height="137px" Width="210px"></asp:TextBox></div>
    <br />
    <div>
        　　　　　　<asp:Button ID="change" runat="server" Text="修改" onclick="change_Click" /></div>
        </div>
</asp:Content>

