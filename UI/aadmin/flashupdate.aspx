<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="flashupdate.aspx.cs" Inherits="admin_flashupdate" Title="flash更新" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="height:10px;"></div>

<div  style=" font-size:16px; font-weight:bold; text-align:center; "> flash更新</div>
<div style="height:15px;"></div>

<div  style="float:right; padding-right:50px;"></div>


<div style="height:10px;"></div>
   　<div>



        　　　　　　　　　　　　<div>　　　　　　　　　　　　　　index：<asp:Label ID="Label2" runat="server" Height="16px" 
            Text="Label" Width="57px"></asp:Label>
            　</div>
        　　　　　　　　　　　　
        　　　　　　　　　　　　　<div>　　　　　　　　　　　　　图片路径：<asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox></div>
    <div>
        　　　　　　　　　　　　　　　　　　<asp:FileUpload ID="FileUpload1" runat="server" Width="189px" />
        　<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="上传" />
        </div>
    <div>
        　　　　　　　　　　　　　　　　　　<asp:ImageButton ID="ImageButton1" runat="server" 
            Height="160px" Width="187px" /></div>
                
        　　　　 
        <div>　　　　　　　　　　　　　链接地址：<asp:TextBox ID="TextBox4" runat="server" Width="186px"></asp:TextBox>
        </div>
                <div>　　　　　　　　　　　　　页面跳转：<asp:TextBox ID="TextBox5" runat="server" Width="183px"></asp:TextBox>
        </div>
        <div>　　　　　　　　　　　　　　　　　　　<asp:Button ID="Button1" runat="server" Height="32px" 
                onclick="Button1_Click" Text="更新" Width="66px" />
            　　<asp:Button ID="Button4" runat="server" Height="31px" onclick="Button4_Click" 
                Text="取消" Width="63px" />
        </div>



</div>
</asp:Content>

