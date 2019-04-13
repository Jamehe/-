<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true"
    CodeFile="adminList.aspx.cs" Inherits="admin_adminList" Title="管理员列表" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
.pages { color: #999; }
.pages a, .pages .cpb { text-decoration:none;float: left; padding: 0 5px; border: 1px solid #ddd;background: #ffff;margin:0 2px; font-size:11px; color:#000;}
.pages a:hover { background-color: #E61636; color:#fff;border:1px solid #E61636; text-decoration:none;}
.pages .cpb { font-weight: bold; color: #fff; background: #E61636; border:1px solid #E61636;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="text-align: right; padding-right: 20px; margin-top: 10px; margin-bottom: 5px;">
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
            <asp:Button ID="Button1"
                runat="server" Text="搜索" onclick="Button1_Click" /></div>
        <div>
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False"
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            </asp:GridView>
        </div>
        <div style="padding-left:450px; margin-top:20px;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" 
                CssClass="pages" CurrentPageButtonClass="cpb" FirstPageText="首页" 
                HorizontalAlign="Center" LastPageText="尾页" NextPageText="后页" 
                onpagechanging="AspNetPager1_PageChanging" PrevPageText="前页">
            </webdiyer:AspNetPager>
        </div>
    </div>
</asp:Content>

