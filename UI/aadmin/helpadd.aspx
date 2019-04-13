<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="helpadd.aspx.cs" Inherits="admin_helpadd" Title="帮助信息添加" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div style="text-align:center; font-size:16px; font-weight:bold; margin-bottom:10px;">帮助导航添加</div>
<div style="margin-bottom:5px; padding-left:5px;">标题：<asp:TextBox ID="txt_title" runat="server" ></asp:TextBox></div>
<div style="padding-left:5px;">类别：<asp:DropDownList ID="dl_cate" runat="server" DataTextField="_catename" DataValueField="_cateid">
    </asp:DropDownList>
</div>
<div style="margin-bottom:5px; padding-left:5px;">内容：<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
    </FCKeditorV2:FCKeditor>
</div>
<div style="text-align:center;">
    <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" /> 　　<asp:Button ID="Button2" 
        runat="server" Text="重置" onclick="Button2_Click" /></div>　　　
   
</div>
</asp:Content>

