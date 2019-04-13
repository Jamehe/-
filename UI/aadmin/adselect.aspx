<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="adselect.aspx.cs" Inherits="admin_flashselect" Title="flash列表" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
   
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<div style="height:10px;"></div>

<div  style=" font-size:16px; font-weight:bold; text-align:center; "> 广告管理列表</div>
<div style="height:15px;"></div>

<div  style="float:right; padding-right:50px;"></div>


<div style="height:10px;"></div>
<div style="text-align:center;">

    <asp:GridView ID="GridView1" runat="server" 
        Width="100%" onrowdatabound="GridView1_RowDataBound" 
        onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <RowStyle BorderStyle="None" Height="30px" BackColor="#F7F6F3" 
            ForeColor="#333333" />
        <Columns>
            <asp:BoundField HeaderText="编号" />
            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="删除" CommandArgument='<%#Eval("index")%>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="更新" ShowHeader="False">
                <ItemTemplate>
                    <a href='adupdate.aspx?index=<%#Eval("index")%>'>更新</a>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="添加" ShowHeader="False">
                <ItemTemplate>
                    <a href='adadd.aspx?index=<%#Eval("index")%>'>添加</a>
                </ItemTemplate>
               
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle Height="30px" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>

</div>


</asp:Content>

