<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="helpcateupdate.aspx.cs" Inherits="admin_aa" Title="帮助分类编辑" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
   <div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px; ">帮助分类标题编辑</div>
   <div style="text-align:center;">
    
        帮助分类id：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp; 新闻分类标题：<asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:Button ID="提交" runat="server" Text="添加" onclick="提交_Click" />
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="name" ErrorMessage="*请填写新闻分类标题"></asp:RequiredFieldValidator>
    
    </div>
</div>
</asp:Content>

