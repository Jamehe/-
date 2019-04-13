<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="proimageupdate.aspx.cs" Inherits="admin_proimageupdate" Title="产品图片更新" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height:313px;
        }
        .style2
        {
            width: 100%;
            height: 122px;
        }
        .style3
        {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<div style="width:300px; height:508px; margin:30px auto; background-color:#eee; ">
<div style="margin:10px; font-size:16px; font-weight:bold; text-align:center;">图片更新</div>
<div style="height: 313px">


    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td style="height:200px; text-align:center;">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="160px" />
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="image_url" runat="server" Visible="False"></asp:Label>
                <asp:Button ID="upimage" runat="server" Text="更新" onclick="upimage_Click" />
                &nbsp;
                <asp:Button ID="Button4" runat="server" Text="返回" onclick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="u_sizeid" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="image_id" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>


</div>

<%--<div style="height: 120px">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="120px" onrowcommand="GridView1_RowCommand" 
                    onrowdeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="_sizename" HeaderText="尺码">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="删除" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"  CommandArgument='<%#Eval("_id") %>'
                                    CommandName="Delete" Text="删除"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                <asp:DropDownList ID="Dropsize" runat="server">
                  <asp:ListItem>XXS</asp:ListItem>
       <asp:ListItem>XS</asp:ListItem>
       <asp:ListItem>S</asp:ListItem>
       <asp:ListItem>M</asp:ListItem>
       <asp:ListItem>L</asp:ListItem>
       <asp:ListItem>XL</asp:ListItem>
       <asp:ListItem>XXL</asp:ListItem>
       <asp:ListItem>XXXL</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="tain" runat="server" Text="添加" onclick="tain_Click" />
            </td>
        </tr>
    </table>
    </div>--%>
</div>

</div>
</asp:Content>

