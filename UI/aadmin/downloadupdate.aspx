<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="downloadupdate.aspx.cs" Inherits="admin_downloadupdate" Title="资源编辑" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .addstyle
        {
          text-align:right;	
        }
        .style3
        {
            width: 273px;
        }
        .style4
        {
          padding-left:165px;	
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



 
    <table class="style2">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="addstyle">
                标题：</td>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="请填写标题"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="addstyle">
                                           大小：</td>
            <td>
                &nbsp;</td>
                                       <td class="style3">
                                           <asp:Label ID="size" runat="server" Text="" ></asp:Label>
                                       </td>
                                       <td>
                                           &nbsp;</td>
                                   </tr>
        <tr>
            <td class="addstyle">
                                           下载文件路径：</td>
            <td>
                &nbsp;</td>
                                       <td class="style3">
                                           <asp:Label ID="fileurl" runat="server" Text=""></asp:Label>
                                       </td>
                                       <td>
                                           &nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td class="addstyle">
                                           下载文件:</td>
            <td>
                &nbsp;</td>
                                       <td class="style3">
                                           <asp:FileUpload ID="FileUpload1" runat="server" /> 
                                           <asp:Button ID="Button1" runat="server" Text="上传" onclick="Button1_Click" />
                                           <asp:Label ID="result" runat="server" Text=""></asp:Label>
                                       </td>
                                       <td>
                                           <span style="color:red">(*请上传word、Excel、记事本格式的文件)</span></td>
                                   </tr>
                                   <tr>
                                       <td class="addstyle">
                                           &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3" rowspan="2">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="提交" />
                <asp:Button ID="Button4" runat="server" Text="清空" onclick="Button4_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                       </td>
                                       
            <td>
                &nbsp;</td>
        </tr>
                                   <tr>
                                       <td class="addstyle">
                                           &nbsp;</td>
            <td>
                &nbsp;</td>
                                       
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
 &nbsp;
</asp:Content>


