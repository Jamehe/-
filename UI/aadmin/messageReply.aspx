<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true"
    CodeFile="messageReply.aspx.cs" Inherits="admin_messageReply" Title="留言回复" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div>
<div style="text-align:center; font-size:16px; font-weight:bold;">管理员回复内容</div>
    <div style="width: 100%">
        <table style="width: 100%;">
            <tr>
                <td style="width: 15%; text-align: center;">
                    标题
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    留言内容
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="95px" 
                        Width="206px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    留言时间
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    回复内容</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="83px" 
                        Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="回复" onclick="Button1_Click" />　<asp:Button ID="Button3" 
                    runat="server" Text="重置" />
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>
