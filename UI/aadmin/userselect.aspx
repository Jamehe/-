<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="userselect.aspx.cs" Inherits="user" Title="会员列表" %>

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
<div style="height:10px;"></div>

<div  style=" font-size:16px; font-weight:bold; text-align:center; "> 会员管理列表</div>
<div style="height:15px;"></div>

<div  style="float:right; padding-right:50px;">

<div  >
    　　
    <asp:Label ID="Label3" runat="server" Text="请输入要搜索的会员名关键字"></asp:Label>　<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="搜索" onclick="Button1_Click"  />
    　　
</div>
</div>

<div style="clear:right;"></div>
<div style="text-align:center;"><asp:Label ID="Label2" runat="server" 
        ForeColor="Red" Text="/*对不起，没有您查询的记录*/"></asp:Label></div>
<div style="height:10px;"></div>
<div style="text-align:center;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        UseAccessibleHeader="False" Width="100%" 
        onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
        onpageindexchanging="GridView1_PageIndexChanging" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" 
            Height="30px" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="_userid" HeaderText="会员号" />
            <asp:BoundField DataField="_username" HeaderText="会员昵称" />
            <asp:BoundField DataField="_pwd" HeaderText="密码" />
            <asp:TemplateField HeaderText="邮箱">
                <ItemTemplate>
                    <%#Eval("_email")%>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:BoundField DataField="_qq" HeaderText="QQ" />
            <asp:TemplateField HeaderText="安全问题">
                <ItemTemplate>
                    <%#Eval("_safequestion") %>
                </ItemTemplate>
              
            </asp:TemplateField>
            <asp:TemplateField HeaderText="安全问题密码">
                <ItemTemplate>
                    <%#Eval("_safepwd")%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"  OnClientClick="return confirm('您确定要删除这条记录吗？')"
                        CommandName="Delete" Text="删除" CommandArgument='<%#Eval("_userid")%>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="查看详细信息">
            <ItemTemplate>
            <a href="usershow.aspx?id=<%#Eval("_userid")%> ">查看详细信息</a>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="White" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Height="30px" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>

</div>
<div style="text-align:center;">
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" 
        FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
        CssClass="paginator" CurrentPageButtonClass="cpb" TabIndex="-1">
    </webdiyer:AspNetPager>
</div>


</div>
</asp:Content>

