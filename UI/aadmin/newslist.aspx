<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="newslist.aspx.cs" Inherits="admin_newslist" Title="新闻列表" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
   a
   {
   	 text-decoration:none;
   	 color:Gray;
   	}
   	a:hover
   	{
   	  color:Red;	 
   		}
 </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
   <div style="  text-align:center; font-size:16px; font-weight:bold; margin-top:13px;"> 新闻列表 </div>
   <div style=" text-align:right; padding-right:52px;">  
       <asp:TextBox ID="select" runat="server"></asp:TextBox> 
       <asp:Button ID="search" runat="server" Text="搜索" onclick="search_Click" />
    </div>
    <div style="margin-top:13px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="_id" Width="100%" CellPadding="4" ForeColor="#333333" 
            GridLines="None" >
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="_id" HeaderText="id" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="新闻标题">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("_title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("_title") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="_from" HeaderText="新闻来源" >
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_author" HeaderText="作者">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_top" HeaderText="置顶">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_click" HeaderText="点击数">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_posttime" HeaderText="新闻发布时间">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_catename" HeaderText="新闻类别">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="_ispic" HeaderText="内容类型">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="添加" ShowHeader="False">
                   
                    <ItemTemplate>
                       <a href='helpcateadd.aspx?uid=<%#Eval("_id")%>'>添加</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="更新" ShowHeader="False">      
                    <ItemTemplate>
                       <a href='newsupdate.aspx?uid=<%#Eval("_id")%>'>编辑</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="选择框">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
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
        　<asp:Button ID="Button1" runat="server" Text="全选" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="反选" onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="删除" 
            OnClientClick="return confirm('你确定要删除这些记录？')" onclick="Button3_Click"  />
        
    
        　<br />
        
    
    </div>
     <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
        HorizontalAlign="Center" LastPageText="尾页" NextPageText="下一页" 
        PrevPageText="上一页" onpagechanging="AspNetPager1_PageChanging1">
      </webdiyer:AspNetPager>

</div>
</asp:Content>

