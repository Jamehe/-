<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="usershow.aspx.cs" Inherits="usershow" Title="会员详细信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div style ="height :10px;">　　　　　　　　　　　　　　　　</div>
<div  style=" font-size:16px; font-weight:bold; text-align:center; "> 会员详细信息</div>
<div style="height:15px;"></div>
<div>

<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　会员号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　&nbsp;　　 用户昵称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>   　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
<div> 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　密　　码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　邮　　箱：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　&nbsp;&nbsp;&nbsp; 　　QQ：　<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　&nbsp; 　　微信：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　注册时间：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　安全问题：<asp:TextBox ID="TextBox8" runat="server" 
        Width="230px"></asp:TextBox></div>
<div style="height:5px;"></div>
<div>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　安全密码：<asp:TextBox ID="TextBox9" runat="server" 
        Width="230px"></asp:TextBox></div>


</div>
</asp:Content>

