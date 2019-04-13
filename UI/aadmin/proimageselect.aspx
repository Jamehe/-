<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="proimageselect.aspx.cs" Inherits="admin_proimageupdate" Title="产品图片搜索" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            
             width:100%;           
            height:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
<div style="text-align:center; font-size:16px; font-weight:bold;">
图片修改



 
    <br />
    ImageID:<asp:Label ID="image_id" runat="server"></asp:Label>



</div>

<div style=" ">

 <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
        RepeatDirection="Horizontal">
    <ItemTemplate>
    
<div style="width:180px; margin:12px;background-color:#eee;">

    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td style="height:200px; text-align:center;">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="160px" ImageUrl='<%#"~/"+ Eval("_imageurl").ToString() %>'/></td>
        </tr>
        <tr>
            <td>
                &nbsp;
                颜色：<%#Eval("_color") %></td>
        </tr>
        <%--<tr>
            <td>
                &nbsp;
                尺码：<%# sb(Eval("_sizeid").ToString())%></td>
        </tr>--%>
        <tr>
            <td  style="text-align:center; height:20px; padding:2px; ">
                <asp:Button ID="gg" runat="server" Text="图片尺码更改"  CommandArgument='<%#Eval("_sizeid") %>'
                    oncommand="gg_Command"/>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td  style="text-align:center; height:20px; padding:2px; ">
                <asp:Button ID="sc" runat="server" Text="删除"  OnClientClick="return confirm('你确认要删除？')" CommandArgument='<%#Eval("_sizeid") %>'
                    oncommand="sc_Command" />
            </td>
        </tr>
    </table>




    <br />




</div>
</ItemTemplate>
</asp:DataList>
</div>
</div>
</asp:Content>

