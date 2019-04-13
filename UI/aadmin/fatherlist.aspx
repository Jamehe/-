<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="fatherlist.aspx.cs" Inherits="admin_fatherlist" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>


<div style="margin:20px auto; width:210px;">
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Height="103px" Width="206px" onrowcommand="GridView1_RowCommand" 
        AllowPaging="True" AllowSorting="True" HorizontalAlign="Center" 
        onrowediting="GridView1_RowEditing" onrowdeleting="GridView1_RowDeleting" 
        CellPadding="4" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging" ForeColor="#333333" >
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="_fathercateid" HeaderText="ID" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_fathername" HeaderText="父类名" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="修改" ShowHeader="False">
             
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="修改" CommandArgument='<%#Eval("_fathercateid") %>' ></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="删除" CommandArgument='<%#Eval("_fathercateid") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
</div>
<div>
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                你所选择修改的ID:<asp:Label ID="f_id" runat="server" Text="未选择" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td>
                新父类名称：<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="120px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Button ID="qued" runat="server" Text="确定" onclick="qued_Click" />
            &nbsp;<asp:Button ID="fanhui" runat="server" Text="返回" />
            </td>
        </tr>
    </table>
    </div>
    <div style="text-align:center;">
    </div>
</div>


</div>
</asp:Content>

