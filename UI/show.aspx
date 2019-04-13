<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="show.aspx.cs"
    Inherits="cjwt" Title="常见问题 " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="x_all">
        <div class="x_left">
            <div>
                <img src="images/331.jpg" alt="" /></div>
            <div class="x_left_t2">
            <a href="xssl.aspx">新手上路</a>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href='show.aspx?id=<%#Eval("_cateid")%>'>
                                <%#Eval("_catename")%></a></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <a href="zc.aspx">
                    <asp:Label ID="Label1" runat="server" Text="个人注册及信息管理"></asp:Label></a>
            </div>
        </div>
        <div class="x_right">
            <div class="x_left_t2" style="font-weight: bold; font-size: 16px; margin-bottom: 5px;">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%#Eval("_catename")%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="x_left_t2">
                <%-- <div>
                    <img src="images/88_03.jpg" alt="" /></div>
                    --%>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul>
                            <li><a href='showdetail.aspx?_id=<%#Eval("_id")%>'>
                                <%#Eval("_title")%></a></li>
                            <li>
                                <%#Common.DB.substr(Eval("_content").ToString(),12)%></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<div class="line_x">
                </div>--%>
            </div>
            <div class="x_left_t2">
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>
