<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="kfzx.aspx.cs"
    Inherits="kfzx" Title="客服中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="x_all">
        <div class="x_left">
            <div>
                <img src="images/331.jpg" alt="" /></div>
            <div class="x_left_t2">
            <a href="xssl.aspx">
                <asp:Label ID="Label1" runat="server" Text=" 新手上路"></asp:Label></a>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href='show.aspx?id=<%#Eval("_cateid")%>'>
                                <%#Eval("_catename")%></a> </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <a href="zc.aspx">个人注册及信息管理</a>
            </div>
        </div>
        <div class="x_right">
              
            <div class="x_left_t">
               <%-- <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href=""><%#Eval("_title")%></a></li>
                            <li><%#Eval("_content")%></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>--%>
                  <img src="images/123.jpg" alt="" />
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
