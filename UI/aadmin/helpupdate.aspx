<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="helpupdate.aspx.cs" Inherits="admin_helpupdate" Title="帮助更新" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div style="text-align:center; font-size:16px; font-weight:bold; margin-top:5px; ">帮助信息修改</div>
<div style="margin-top:5px;">编号　
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    <div>标题　
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
        <div>内容　
            <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350">
            </FCKeditorV2:FCKeditor>
        </div>
        <div style="text-align:center; margin-top:5px;">
            <asp:Button ID="Button1" runat="server" Text="更新" onclick="Button1_Click" /></div>
</div>
</asp:Content>

