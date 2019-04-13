<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员登陆</title>
    <style type="text/css">
    body
    {
       margin:0;
       padding:0;
       background-image:url('images/管理中心登陆.gif');
       background-repeat: no-repeat;
       background-color:#002779;
       
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div> 
    <div  style="margin-top:300px; margin-left:500px;">
    <div >用户名：<asp:TextBox ID="txt_name" runat="server" Width="128px"></asp:TextBox></div>
    <div >密　码：<asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" 
            Width="128px"></asp:TextBox></div>
    <div >类　型：<asp:DropDownList ID="DropDownList1" runat="server" 
            Height="23px" Width="132px" >
        <asp:ListItem Value="0">普通管理员</asp:ListItem>
        <asp:ListItem Value="1">超级管理员</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div style="margin-top:5px;">
        　　<asp:Button ID="Button1" runat="server" Text="登入" Height="28px" 
            Width="56px" onclick="Button1_Click" />　　　<asp:Button ID="Button2"
            runat="server" Text="返回" Height="28px" Width="56px" /></div>
    </div>
    </div>
    </form>
</body>
</html>
