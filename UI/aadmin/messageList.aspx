<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true"
    CodeFile="messageList.aspx.cs" Inherits="admin_messageList" Title="留言列表" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .paginator
        {
            font: 11px Arial, Helvetica, sans-serif;
            padding: 10px 20px 10px 0;
            margin: 0px;
        }
        .paginator a
        {
            padding: 1px 6px;
            border: solid 1px #ddd;
            background: #fff;
            text-decoration: none;
            margin-right: 2px;
        }
        .paginator a:visited
        {
            padding: 1px 6px;
            border: solid 1px #ddd;
            background: #fff;
            text-decoration: none;
        }
        .paginator .cpb
        {
            padding: 1px 6px;
            font-weight: bold;
            font-size: 13px;
            border: none;
        }
        .paginator a:hover
        {
            color: #fff;
            background: #ffa501;
            border-color: #ffa501;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
    <div style="text-align:right;">
        <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
        <asp:Button ID="Button7"
            runat="server" Text="搜索" onclick="Button7_Click" /></div>
        <div style="margin-bottom:5px;">
            <asp:GridView ID="GridView1" runat="server" Width="100%" 
                AutoGenerateColumns="False" DataKeyNames="_id">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            编号
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_id")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            标题
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_title")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            留言内容
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Common.DB.substr(Eval("_content").ToString(),10)%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            留言IP
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_ip")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            留言时间
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Common.DB.substr(Eval("_posttime").ToString(),10)%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            回复留言
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Common.DB.substr(Eval("_reply").ToString(),10)%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                  
                   <asp:TemplateField>
                        <HeaderTemplate>
                           审核状态
                        </HeaderTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("_state")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="回复" ShowHeader="False">
                        <ItemTemplate>
                            <a href='messageReply.aspx?_id=<%#Eval("_id")%>'>回复</a>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="审核">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="批量删除">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                  
                </Columns>
            </asp:GridView>
        </div>
        <div>
            　<asp:Button ID="Button1" runat="server" Text="审核全选" onclick="Button1_Click" />　<asp:Button ID="Button2"
                runat="server" Text="审核反选" onclick="Button2_Click" />　<asp:Button 
                ID="Button3" runat="server" Text="批量审核" onclick="Button3_Click" OnClientClick="return confirm('确定要批准这些内容吗')" />　　<asp:Button 
                ID="Button5" runat="server" Text="delete全选" onclick="Button5_Click" />
            　<asp:Button ID="Button6" runat="server" Text="delete反选" 
                onclick="Button6_Click" />
            　<asp:Button 
                ID="Button4" runat="server" Text="批量删除" onclick="Button4_Click" OnClientClick="return confirm('确定要删除这些内容吗')" />
        </div>
        <div style="text-align: center;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="paginator" 
                CurrentPageButtonClass="cpb" AlwaysShow="True" 
                onpagechanging="AspNetPager1_PageChanging">
            </webdiyer:AspNetPager>
        </div>
    </div>
</asp:Content>
