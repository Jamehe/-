<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true" CodeFile="ACIndex.aspx.cs" Inherits="ACIndex" Title="会员中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_right_body">
   <div class="tit"><span>会员中心首页</span></div>
         <div class="main">
               <div class="welcome">
                  <div class="user_name">
                  <div><span></span> 欢迎您：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                  <div>莅临<asp:Image ID="Image1" runat="server" ImageUrl="~/images/dd.gif" /></div>
                  </div>
                  <div class="last_time">您的上一次登录时间: 
                      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </div>
                  
               </div>                
        </div>
</div>        
</asp:Content>

