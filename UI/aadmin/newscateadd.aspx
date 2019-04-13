<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="newscateadd.aspx.cs" Inherits="admin_add" Title="新闻分类添加" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
  <div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px; ">新闻列表添加</div>
    <div style=" text-align:center;">
         新闻分类：<asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:Button ID="Button1"  runat="server" Text="添加" onclick="Button1_Click" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="name" ErrorMessage="*请填写新闻分类"></asp:RequiredFieldValidator>
    </div>
</div>
</asp:Content>

