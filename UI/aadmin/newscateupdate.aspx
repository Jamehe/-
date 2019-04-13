<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="newscateupdate.aspx.cs" Inherits="admin_aa" Title="新闻分类更新" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>&nbsp;<div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px; ">新闻分类编辑</div>
    <div style=" text-align:center;">
            新闻分类号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp; 
            新闻分类名：<asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click"></asp:Button>
     </div>
 </div>
</asp:Content>

