<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="proupdate.aspx.cs" Inherits="admin_product" Title="产品更新" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
    	width:100%;
    	height:200px;
            margin-left: 0px;
        }
    .biao
    {
    	width:350px;
    	height:200px;
    	}
    .sty1
    {
    	 height:200px;
    	 
            margin-right: 0px;
        }		
      
        .style3
        {
            width: 80px;
            text-align: right;
        }
      
        .style9
        {
            width: 125px;
        }
      
        .style10
        {
            width: 136px;
        }
        .style11
        {
            width: 67px;
        }
       .si
       {
       	font-size:14px;
       	color:Red;
       	} 
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div style="height:50px; font-size:18px; font-weight:bold; text-align:center; padding-top:10px;">
    商品更新<br />
    <asp:Label ID="L_id" runat="server" Text="Label"></asp:Label>
                                        </div>

<div style=" margin:0 auto;">



    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td style="width:350px;">
                
                
                
                <table cellpadding="0" cellspacing="0" class="biao" >
                    <tr>
                        <td class="style3" >
                            商品名称：</td>
                        <td >
                            <asp:TextBox ID="_title" runat="server" Height="24px" Width="237px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            本站价格：</td>
                        <td>
                            <asp:TextBox ID="_localprice" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            商品库存：</td>
                        <td>
                            <asp:TextBox ID="_procount" runat="server"></asp:TextBox>
                                                                </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            图片id：</td>
                        <td>
                            &nbsp; 
                            <asp:Label ID="_imageid" runat="server"></asp:Label>
                                                                </td>
                    </tr>
                </table>
                
                
                
            </td>
            <td class="style10" > 
                <table class="sty1">
                                
                
                    <tr>
                        <td class="style9"  >
                            是否特价：<asp:DropDownList ID="_ischeap" runat="server">
                                <asp:ListItem Value="0">否</asp:ListItem>
                                <asp:ListItem Value="1">是</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      <tr>
                        <td class="style9"  >
                            是否推荐：<asp:DropDownList ID="_isrecomment" runat="server">
                                <asp:ListItem Value="0">否</asp:ListItem>
                                <asp:ListItem Value="1">是</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td class="style9" >
                            是否置顶：<asp:DropDownList ID="_top" runat="server">
                                <asp:ListItem Value="0">否</asp:ListItem>
                                <asp:ListItem Value="1">是</asp:ListItem>
                            </asp:DropDownList>
                                                                </td>
                        
                    </tr>
                    
                    <tr>
                        <td class="style9" >
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="商品图片更改" />
                        </td>
                     
                    </tr>
                  
                </table>
            </td>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style11">
                            市场价格：</td>
                        <td>
                            <asp:TextBox ID="_marketprice" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            商品重量：</td>
                        <td>
                            <asp:TextBox ID="_weight" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            商品类别：</td>
                        <td>
                            <asp:DropDownList ID="_cateid" runat="server" DataTextField="_catename" DataValueField="_cateid">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            发布时间：</td>
                        <td>
                            <asp:Label ID="_posttime" runat="server"></asp:Label>
                                                                </td>
                    </tr>
                </table>
                                                    </td>
        </tr>
    </table>



</div>


<div style="height:260px; background-color:#eee; border:solid 1px #b7b7c6; margin:10px 0;">
<div>



    <table class="style4">
        <tr>
            <td class="style5">
                　图片添加：</td>
                                                    <td class="style6">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                                        &nbsp;图片类别：<asp:DropDownList ID="colorselect" runat="server" 
                                                           AppendDataBoundItems="True">
                                                      <asp:ListItem>正面</asp:ListItem>
                                                       <asp:ListItem>侧面</asp:ListItem>
                                                       <asp:ListItem>全身照</asp:ListItem>
                                                       <asp:ListItem>其他</asp:ListItem>
                                                       </asp:DropDownList>
                                                                </td>
                                                   <td class="style8"><asp:Button ID="upimage" runat="server" Text="上传" 
                                                           onclick="upimage_Click" style="margin-left: 0px" />
            </td>
                                                    <td>
                            图片地址：<asp:Label ID="imageurl" runat="server"></asp:Label>
                                                                </td>
                                                </tr>
                                            </table>



</div>

<%--<div style="height:35px; line-height:25px; ">　商品所拥有的尺码：<asp:DropDownList 
           ID="Dropsize" runat="server" 
           >
       <asp:ListItem>XXS</asp:ListItem>
       <asp:ListItem>XS</asp:ListItem>
       <asp:ListItem>S</asp:ListItem>
       <asp:ListItem>M</asp:ListItem>
       <asp:ListItem>L</asp:ListItem>
       <asp:ListItem>XL</asp:ListItem>
       <asp:ListItem>XXL</asp:ListItem>
       <asp:ListItem>XXXL</asp:ListItem>
                                                        </asp:DropDownList>
                                                    &nbsp;
       <asp:Button ID="qued" runat="server" Text="确定" onclick="qued_Click" />
       &nbsp;（次商品可以有多个尺码，你选择的尺码有：<asp:Label ID="sizela" runat="server"  CssClass="si"></asp:Label>
       ）<asp:Label ID="proimage_id" runat="server" Visible="False"></asp:Label>
                                            &nbsp;<asp:Label ID="sizeidla" 
           runat="server" Visible="False"></asp:Label>
       &nbsp;
                                            </div>--%>
<div style="text-align:center; height:180px; border:solid 1px #b7b7c6; ">
    <asp:Label ID="imagela" runat="server" Height="180px" ></asp:Label>
    
    
    

    </div>
    
    
    
   
  </div>  
    
    
    
    <div> 　商品产品描述：</div>
    
  <div>
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="500px">
        </FCKeditorV2:FCKeditor>
</div>

<div style=" text-align:center; height:40px; margin:20px 0 0 0;"　>　


    <asp:Button ID="tijiao" runat="server" Text="更新" onclick="tijiao_Click" />
    　　　<asp:Button ID="quxiao" runat="server" Text="取消" onclick="quxiao_Click" />


</div>
</asp:Content>

