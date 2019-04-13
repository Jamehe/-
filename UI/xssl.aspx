<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="xssl.aspx.cs" Inherits="xssl" Title="新手上路" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="x_all">
        <div class="x_left">
            <div>
                <img src="images/331.jpg" alt="" /></div>
            <div class="x_left_t2">
            <a href="#">新手上路</a>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href='show.aspx?id=<%#Eval("_cateid")%>'>
                                <%#Eval("_catename")%></a> </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <a href="zc.aspx">
                    <asp:Label ID="Label1" runat="server" Text="个人注册及信息管理"></asp:Label></a>
            </div>
        </div>
        <div class="x_right">
              
            <div class="x_left_t">
                
                <img src="images/123.jpg" alt="" />
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
