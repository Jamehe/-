<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="orderselect.aspx.cs" Inherits="admin_orderselect" Title="订单列表" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    /*网易风格*/
    .anpager .cpb {background:#1F3A87 none repeat scroll 0 0;border:1px solid #CCCCCC;color:#FFFFFF;font-weight:bold;margin:5px 4px 0 0;padding:4px 5px 0;}
    .anpager a {background:#FFFFFF none repeat scroll 0 0;border:1px solid #CCCCCC;color:#1F3A87;margin:5px 4px 0 0;padding:4px 5px 0;text-decoration:none}
    .anpager a:hover{background:#1F3A87 none repeat scroll 0 0;border:1px solid #1F3A87;color:#FFFFFF;}
    /*拍拍网风格*/
    .paginator { font: 11px Arial, Helvetica, sans-serif;padding:10px 20px 10px 0; margin: 0px;}
    .paginator a {padding: 1px 6px; border: solid 1px #ddd; background: #fff; text-decoration: none;margin-right:2px}
    .paginator a:visited {padding: 1px 6px; border: solid 1px #ddd; background: #fff; text-decoration: none;}
    .paginator .cpb {padding: 1px 6px;font-weight: bold; font-size: 13px;border:none}
    .paginator a:hover {color: #fff; background: #ffa501;border-color:#ffa501;text-decoration: none;}
    /*迅雷风格*/
    .pages { color: #999 }
    .pages a, .pages .cpb { text-decoration:none;float: left; padding: 0 5px; border: 1px solid #ddd;background: #ffff;margin:0 2px; font-size:11px; color:#000;}
    .pages a:hover { background-color: #E61636; color:#fff;border:1px solid #E61636; text-decoration:none;}
    .pages .cpb { font-weight: bold; color: #fff; background: #E61636; border:1px solid #E61636;}
    .code{font-weight:bold;color:blue}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style ="height :15px;"></div>
    <div style =" font-size :16px; text-align :center ; "><b>订单列表</b></div>
    <div style ="text-align :right  ; padding-right:15px;">请您输入订单号关键字：<asp:TextBox ID="ordernum" runat="server"></asp:TextBox><asp:Button 
            ID="Button3" runat="server" onclick="Button3_Click" Text="查询" />
    </div>
    <div style =" text-align :center ;">
        <asp:Label ID="Label1" runat="server" Text="对不起，没有与您输入的关键字相符合的订单" Visible ="false" ></asp:Label></div>
    <div style =" text-align:center ;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" 
            onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting1">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="_id" HeaderText="ID" />
                <asp:BoundField DataField="_ordernum" HeaderText="订单号" />
                <asp:BoundField DataField="_paystate" HeaderText="是否已付款" />
                <asp:BoundField DataField="_prostate" HeaderText="是否已发货" />
                <asp:TemplateField HeaderText="用户id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("_userid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("_userid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="_ordertime" HeaderText="订购时间" />
                <asp:TemplateField HeaderText="买家留言">
                    <ItemTemplate >
                    <%#Common.DB .substr (Eval ("_buyremarks").ToString (),10 ) %>
                    
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="卖家留言">
                 <ItemTemplate >
                    <%#Common.DB .substr (Eval ("_sellremarks").ToString (),10 ) %>
                    
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="详细信息">
                 <ItemTemplate >
                 <a href ='orderdetail.aspx?id=<%#Eval("_id") %>'>详细信息</a>
                 
                 </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                <ItemTemplate>
                    <a href ='orderupdate.aspx?id=<%#Eval("_id") %>'>编辑</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除" OnClientClick="return confirm('您确定要删除吗?')" CommandArgument='<%#Eval("_id") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </div>  
    <div style =" height :15px;"></div>
    <div>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
        HorizontalAlign="Center" LastPageText="尾页" NextPageText="下一页" 
        onpagechanged="AspNetPager1_PageChanged" 
        onpagechanging="AspNetPager1_PageChanging" PrevPageText="上一页" 
        CssClass="anpager" CurrentPageButtonClass="cpb">
    </webdiyer:AspNetPager>
    </div>  
</asp:Content>

