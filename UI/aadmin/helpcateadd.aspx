<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="helpcateadd.aspx.cs" Inherits="admin_aa" Title="帮助分类添加" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
     <div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px; ">帮助标题添加</div>
     <div style=" text-align:center;">
         帮助标题添加：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1"  runat="server" Text="添加" onclick="Button1_Click" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="TextBox1" ErrorMessage="*请添写标题"></asp:RequiredFieldValidator>
    </div>
</div>
</asp:Content>

