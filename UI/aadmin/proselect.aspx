<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="proselect.aspx.cs" Inherits="admin_proupdate" Title="产品图片搜索" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>


<div style=" font-size:16px; font-weight:bold;  text-align:center; height:35px; padding-top:10px;">

商品列表

</div>

<div style="height:30px; text-align:right;">
 搜索产品：   <asp:TextBox ID="Text_title" runat="server"></asp:TextBox>
    <asp:Button ID="sous"
     runat="server" Text="搜索" onclick="sous_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="qb" runat="server" onclick="qb_Click" Text="查看全部" />
</div>
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="_id" 
        onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
        Width="100%" ForeColor="#333333" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="_id" HeaderText="_id">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_title" HeaderText="标题">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_cateid" HeaderText="类别ID">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_posttime" HeaderText="上市时间">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_ischeap" HeaderText="是否特价">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_isrecommend" HeaderText="是否推荐">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_top" HeaderText="是否置顶">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="_procount" HeaderText="库存">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="编辑" CommandArgument='<%#Eval("_id") %>' ></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('你确认要删除？')"
                        CommandName="Delete" Text="删除"  CommandArgument='<%#Eval("_id") %>'></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
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
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
<div></div>


</div>
</asp:Content>

