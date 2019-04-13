<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="adminselect.aspx.cs" Inherits="admin_adminselect" Title="管理员搜索" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">


.anpager .cpb {background:#1F3A87 none repeat scroll 0 0;border:1px solid #CCCCCC;color:#FFFFFF;font-weight:bold;margin:5px 4px 0 0;padding:4px 5px 0;}
.anpager a {background:#FFFFFF none repeat scroll 0 0;border:1px solid #CCCCCC;color:#1F3A87;margin:5px 4px 0 0;padding:4px 5px 0;text-decoration:none}
.anpager a:hover{background:#1F3A87 none repeat scroll 0 0;border:1px solid #1F3A87;color:#FFFFFF;}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
             <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            ID号
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_id")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            用户名
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_name")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            密码
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_pwd")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            角色
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_role")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                        <ItemTemplate>
                            <a href='adminupdate.aspx?id=<%#Eval("_id")%>'>更新</a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="删除" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                Text="删除" CommandArgument='<%#Eval("_id")%>' OnClientClick="return confirm('你确定要删除这条记录')"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <EditRowStyle BackColor="#999999" />
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
</div>
<div style="margin-top:5px; text-align:center;">
    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
        LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
        CssClass="anpager"  CurrentPageButtonClass="cpb" AlwaysShow="True" 
        onpagechanging="AspNetPager1_PageChanging">
    </webdiyer:AspNetPager>
</div>
<div style="text-align:right; padding-right:10px;">
    <asp:Button ID="Button1" runat="server" Text="返回列表" onclick="Button1_Click" /></div>
</asp:Content>

