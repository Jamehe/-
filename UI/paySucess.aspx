<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="paySucess.aspx.cs" Inherits="shoplist3" Title="恭喜，订单提交成功了！" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="shoplist">
<div><img src="images/pay_setp_03[1].gif" /></div>
<div class="s_5">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td  colspan="4" style=" padding:15px 0;">
<div style="  font-size:22px; color:#ec659f;">恭喜，付款成功了！</div><br />
您的订单号：<asp:Label ID="ordernum" runat="server" Text=""></asp:Label>   您的付款金额为：￥<asp:Label ID="wprice" runat="server" Text=""></asp:Label>元    支付方式：<asp:Label ID="waysgive" runat="server" Text=""></asp:Label> </td>
</tr>

</table>

</div>
 
</div>
</asp:Content>

