<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="flashadd.aspx.cs" Inherits="admin_flashadd" Title="flash添加" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:10px;"></div>

<div  style=" font-size:16px; font-weight:bold; text-align:center; "> flash添加</div>
<div style="height:15px;"></div>

<div  style="float:right; padding-right:50px;"></div>


<div style="height:10px;"></div>
<div 　 style =" padding-left :400px;">
    
    
        　　　　 <div>图片路径：<asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox></div>
    <div>　　　　　<asp:FileUpload ID="FileUpload1" runat="server" Width="189px" />
        　<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="上传" />
        </div>
    <div>　　　　　<asp:ImageButton ID="ImageButton1" runat="server" 
            Height="160px" Width="187px" /></div>
              <div>链接地址：<asp:TextBox ID="TextBox4" runat="server" Width="186px"></asp:TextBox></div>  
            <div>页面跳转：<asp:TextBox ID="TextBox3" runat="server" Width="186px"></asp:TextBox></div>
        
        <div><asp:Button ID="Button1" runat="server" Height="32px" 
                onclick="Button1_Click" Text="添加" Width="66px" />
        </div>
    </div>
</asp:Content>

