<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true"
    CodeFile="adminupdate.aspx.cs" Inherits="admin_addupdate" Title="管理员编辑" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="text-align: center; margin-top: 5px; font-size: 14px;">
            管理员更新
        </div>
        <div style="text-align:center; padding-left:40%; margin-top:10px;">
            <table >
                <tr>
                <td>ID　号</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr><td>用户名</td><td>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td></tr>
                <tr><td>密　码</td><td>
                    <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox></td></tr>
            </table>
        </div>
        <div style="text-align:center; margin-top:5px;">
            <asp:Button ID="Button1" runat="server" Text="更新" onclick="Button1_Click" /></div>
    </div>
</asp:Content>
