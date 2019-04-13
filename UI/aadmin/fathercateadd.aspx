<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="fathercateadd.aspx.cs" Inherits="admin_procateadd" Title="父类添加" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height:200px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<div style="margin:100px auto; height:200px; width:300px;">


    <table class="style1">
        <tr>
            <td style="text-align:center; font-size:16px; font-weight:bold; ">
                商品父类添加</td>
        </tr>
        <tr>
            <td> 商品父类名：                            <asp:TextBox ID="fathercatename" 
                    runat="server" Height="22px" Width="127px"></asp:TextBox>

                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Button ID="tijiao" runat="server" Text="提交" onclick="tijiao_Click" />
                　　<asp:Button ID="quxiao" runat="server" Text="取消" onclick="quxiao_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                &nbsp;</td>
        </tr>
    </table>


</div>

</div>
</asp:Content>

