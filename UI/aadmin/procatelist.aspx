<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="procatelist.aspx.cs" Inherits="admin_procatelist" Title="子类列表" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
           height:120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<div  style="width:300px; margin:0 auto; background-color:#eee;">
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        GridLines="None" onrowcommand="GridView1_RowCommand" 
        onrowdeleting="GridView1_RowDeleting" Width="100%" 
        onrowediting="GridView1_RowEditing" 
        onpageindexchanging="GridView1_PageIndexChanging" ForeColor="#333333">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="_cateid" HeaderText="子类ID">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_catename" HeaderText="子类名">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_fathername" HeaderText="父类名">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="更新" ShowHeader="False">
            
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="编辑" CommandArgument='<%#Eval("_cateid") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('你确认要删除？')"
                        CommandName="Delete" Text="删除" CommandArgument='<%#Eval("_cateid") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
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
                你所选择子类的ID:<asp:Label ID="z_id" runat="server" ForeColor="Red" Text="未选择"></asp:Label></td>
        </tr>
        <tr>
            <td>
                新的子类名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                &nbsp;　选择父类：<asp:DropDownList ID="Drop_f" runat="server" DataTextField="_fathername" DataValueField="_fathercateid">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style=" text-align:center;">
                <asp:Button ID="qued" runat="server" Text="确定" onclick="qued_Click" />
                　<asp:Button ID="qux" runat="server" Text="取消" />
            </td>
        </tr>
    </table>
    </div>


</div>



</div>
</asp:Content>

