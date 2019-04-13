<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="helpsearch.aspx.cs" Inherits="admin_helpsearch" Title="帮助搜索" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

.paginator { font: 11px Arial, Helvetica, sans-serif;padding:10px 20px 10px 0; margin: 0px;}
.paginator a {padding: 1px 6px; border: solid 1px #ddd; background: #fff; text-decoration: none;margin-right:2px}
.paginator a:visited {padding: 1px 6px; border: solid 1px #ddd; background: #fff; text-decoration: none;}
.paginator .cpb {padding: 1px 6px;font-weight: bold; font-size: 13px;border:none}
.paginator a:hover {color: #fff; background: #ffa501;border-color:#ffa501;text-decoration: none;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>


<div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" DataKeyNames="_id" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        
        <Columns>        
        <asp:TemplateField>
        <HeaderTemplate>编号</HeaderTemplate>
        <HeaderStyle HorizontalAlign="Center" />
        <ItemTemplate><%#Eval("_id")%></ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        
         <asp:TemplateField>
        <HeaderTemplate>标题</HeaderTemplate>
        <HeaderStyle HorizontalAlign="Center" />
        <ItemTemplate><%#Eval("_title")%></ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        
        
         <asp:TemplateField>
        <HeaderTemplate>内容</HeaderTemplate>
        <HeaderStyle HorizontalAlign="Center" />
        <ItemTemplate><%#subStr(Eval("_content").ToString(),10)%></ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        
         <asp:TemplateField>
        <HeaderTemplate>分类ID</HeaderTemplate>
        <HeaderStyle HorizontalAlign="Center" />
        <ItemTemplate><%#Eval("_cateid") %></ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
            <asp:TemplateField HeaderText="删除">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="更新" ShowHeader="False">
                <ItemTemplate>
                
                    <a href='helpupdate.aspx?id=<%#Eval("_id")%>'>更新</a>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        
        
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        
        
    </asp:GridView>
</div>

<div style="margin-top:5px;">
    　<asp:Button ID="Button2" runat="server" Text="全选" onclick="Button2_Click" />　
    <asp:Button ID="Button3" runat="server" Text="全部反选" onclick="Button3_Click"  />
    　<asp:Button ID="Button4" runat="server" Text="批量删除" onclick="Button4_Click" 
        style="height: 26px"  /></div>
<div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    <div style="text-align:right; padding-right:10px;">
        <asp:Button ID="Button1" runat="server" Text="返回列表" onclick="Button1_Click" /></div>
<div style="text-align:center">
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="paginator" 
        CurrentPageButtonClass="cpb" AlwaysShow="True" 
        onpagechanging="AspNetPager1_PageChanging">
    </webdiyer:AspNetPager>
</div>

</div>
</asp:Content>

