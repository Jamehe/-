<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="shoplist2.aspx.cs" Inherits="shoplist2" Title="核对信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/xstlye.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 104px;
        }

        .alk {
            background-color: #f5e6ec;
        }

        .blkk {
            border: 0;
        }

        .text_center {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="shoplist">
        <div>
            <img src="images/pay_setp_02[1].gif" />
        </div>
        <div class="s_3">
            <div class="s_all">


                <div class="s_1">
                    <div style="text-align: left;">
                        <img src="images/pay_ico_01[1].gif" />
                    </div>
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="left" class="style1">
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True"
                                    OnCheckedChanged="CheckBox1_CheckedChanged" Text="收货地址" />
                                &nbsp;</td>
                            <td align="left">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                <asp:Label ID="Label5" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </div>
                <asp:Panel ID="Panel1" runat="server">

                    <div class="s_2">
                        <div style="padding: 15px;">
                            <table cellpadding="5" cellspacing="5" width="90%">
                                <tr>
                                    <td>收货人姓名 
                                    </td>
                                    <td>
                                        <asp:TextBox ID="receivename" runat="server"
                                            OnTextChanged="receivename_TextChanged"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td>详细地址</td>
                                    <td>
                                        <asp:TextBox ID="address" runat="server"
                                            OnTextChanged="address_TextChanged"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td>手机</td>
                                    <td>
                                        <asp:TextBox ID="mobile" runat="server"
                                            OnTextChanged="mobile_TextChanged"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td>电话</td>
                                    <td>
                                        <asp:TextBox ID="tel" runat="server"
                                            OnTextChanged="tel_TextChanged"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td>邮政编码</td>
                                    <td>
                                        <asp:TextBox ID="mail" runat="server"
                                            OnTextChanged="mail_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>

                        </div>
                    </div>
                </asp:Panel>
                <p style="border-bottom: dashed 2px #bbb;"></p>

                <%-- <end>--%>
            </div>

            <div class="s_4">
                <div style="text-align: left;">
                    <img src="images/pay_ico_03[1].gif" />
                </div>
                <table cellpadding="5" cellspacing="5" width="90%">
                    <tr>
                        <td>支付方式：</td>
                        <td>
                            <asp:RadioButton ID="online" runat="server" Checked="True" GroupName="giveway"
                                Text="在线支付" />
                            <br />
                            <asp:RadioButton ID="home" runat="server" GroupName="giveway" Text="货到付款" />
                            &nbsp;（需额外支付10元配送手续费）<br />
                            1.支持送货到宿舍哦（限北部湾大学城内）<br />
                            2.请按照订单金额支付相应的货款，切勿随意或过多支付。（订单金额以网站订单支付页面显示的总金额为准）  </td>
                    </tr>

                    <tr>
                        <td>订单附言：</td>
                        <td>
                            <asp:TextBox ID="buyremarks" runat="server" TextMode="MultiLine" Height="110px"
                                Width="224px"></asp:TextBox>
                        </td>
                    </tr>

                    <%--<tr>
         <td>发票信息： </td>
         <td> 
             <asp:CheckBox ID="needbill" runat="server" Text="索要发票" />
             </td>
         </tr>--%>
                </table>


            </div>

            <p style="border-bottom: dashed 2px #bbb;"></p>


            <div class="s_4">
                <div>
                    <img src="images/pay_ico_05[1].gif" />
                    <a href="shoplist.aspx">[返回购物车修改]</a>
                </div>
                <br />
                <div style="text-align: center;">
                    <asp:GridView ID="GridView1" runat="server" Width="100%"
                        AutoGenerateColumns="False" HeaderStyle-CssClass="alk"
                        RowStyle-CssClass="blkk" OnRowCommand="GridView1_RowCommand" BorderStyle="None"
                        OnRowDeleting="GridView1_RowDeleting" BorderWidth="0px"
                        OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
                        <RowStyle CssClass="blkk"></RowStyle>
                        <Columns>
                            <asp:TemplateField HeaderText="商品图片">
                                <ItemTemplate>
                                    <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="40px" Width="40px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品名称">
                                <ItemTemplate>
                                    <a href='ProInfo.aspx?uid=<%#Eval("id") %>'>
                                        <asp:Label ID="title" runat="server" Text='<%#Eval("title")%>'></asp:Label></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品属性">
                                <ItemTemplate>
                                    类别：<asp:Label ID="cate" runat="server" Text='<%#Eval("cate")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="本店价">
                                <ItemTemplate>
                                    <asp:Label ID="localprice" runat="server" Text='<%#Eval("localprice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品重量">
                                <ItemTemplate>
                                    <asp:Label ID="weight" runat="server" Text='<%#Eval("weight") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品数量">
                                <ItemTemplate>
                                    <asp:Label ID="count" runat="server" Text='<%#Eval("buycount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品总重">
                                <ItemTemplate>
                                    <asp:Label ID="sumweight" runat="server" Text='<%#Eval("sumweight") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="商品总价">
                                <ItemTemplate>
                                    <asp:Label ID="sumprice" runat="server" Text='<%#Eval("sumprice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="proid" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <HeaderStyle CssClass="alk"></HeaderStyle>
                    </asp:GridView>

                </div>
                <br />
                <div style="float: right;">
                    购物金额小计 ￥<asp:Label ID="wprice" runat="server" Text="0"></asp:Label>元 

                </div>
                <div style="float: right; padding-right: 15px;">购物重量小计：<asp:Label ID="wweight" runat="server" Text="0"></asp:Label>克</div>
                <div style="float: right; padding-right: 15px;">商品总数：<asp:Label ID="wholeprocount" runat="server" Text="0"></asp:Label></div>
                <br />
                <div style="clear: both;"></div>
                <div>
                    <div style="text-align: right; padding-right: 25px; padding-top: 15px;">
                        <asp:ImageButton ID="ImageButton1" runat="server"
                            ImageUrl="images/but_submit[1].gif" OnClick="ImageButton1_Click" />
                    </div>
                </div>
            </div>


        </div>
</asp:Content>

