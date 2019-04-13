<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="newsadd.aspx.cs" Inherits="admin_newsadd" Title="新闻添加" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
   <div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px; ">新闻添加</div>
  <div>
       　新闻标题：
    <asp:TextBox ID="_title" runat="server" Width="110px"></asp:TextBox>  　新闻来源：<asp:TextBox ID="_source" runat="server"></asp:TextBox> 
       　新闻作者：<asp:TextBox ID="author" runat="server" Width="110px"></asp:TextBox> 
       　是否置顶：<asp:DropDownList ID="DropDownList1" runat="server">
           <asp:ListItem Value="0">不置顶</asp:ListItem>
           <asp:ListItem Value="1">置顶</asp:ListItem>
       </asp:DropDownList>
       　类型：<asp:DropDownList ID="DropDownList2" runat="server">
           <asp:ListItem Value="0">文章</asp:ListItem>
           <asp:ListItem Value="1">图文</asp:ListItem>
       </asp:DropDownList>
       　新闻类型：<asp:DropDownList ID="DropDownList3" runat="server" DataTextField="_catename" DataValueField="_cateid">
       </asp:DropDownList>
  </div>
   <div style ="overflow:scroll">
      <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="480px">
       </FCKeditorV2:FCKeditor>
   </div>
   <div>　&nbsp&nbsp&nbsp <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" /> 
      &nbsp&nbsp <asp:Button ID="Button2" runat="server" Text="清空" onclick="Button2_Click" /> </div>
</div>
    
   
</asp:Content>


