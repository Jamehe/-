<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true"
    CodeFile="adminadd.aspx.cs" Inherits="admin_adminadd" Title="管理员添加" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center;">
        <div style="height: 20px; margin-top: 10px; font-size: 14px; line-height: 20px; font-weight: bold;">
            <table style="margin-left: 25px;">
                <tr>
                    <td>
                        管理员添加
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-top: 10px;">
            <table style="margin-left:5px;">
                <tr>
                    <td>
                        用户名
                    </td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        密 　码
                    </td>
                    <td>
                        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        角 色
                    </td>
                    <td>
                        <asp:DropDownList ID="dl_select" runat="server" Width="154">
                            <asp:ListItem Value="0">管理员</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="添加" Width="70px" 
                            onclick="Button1_Click" />　
                        <asp:Button ID="Button2" runat="server" Text="重置"  Width="70px" 
                            onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
