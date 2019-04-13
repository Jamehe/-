<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="ProInfo.aspx.cs" Inherits="ProInfo" Title="产品信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%--    <script>
        var fcateid = '<%=FatherCateid%>';
        $(function () {
            if (fcateid != null) {
                if (fcateid == '8') {

                    $('#other').css('display', 'none');
                    $('#fz').css('display', 'block');
                }
                else {

                    $('#other').css('display', 'block');
                    $('#fz').css('display', 'none');
                }
                
                 

            }
        })
       

    </script> --%>
    <script src="js/jquery-1.3.2.js" type="text/javascript"></script>
    <script src="js/cloud-zoom.1.0.2.min.js" type="text/javascript"></script>
    <link href="js/cloud-zoom.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        .colo {
            background-color: #eee;
        }


        .style1 {
            width: 83px;
        }

        .cctelist {
            text-align: center;
            line-height: 25px;
            background-color: #eee;
            margin: 3px 0 0 0;
        }

            .cctelist a {
                text-decoration: none;
                color: #333333;
                display: block;
            }

                .cctelist a:hover {
                    padding-left: 10px;
                    background-color: #bbbcc8;
                }

        .cc {
        }

            .cc li {
                height: 25px;
                text-align: center;
                line-height: 25px;
                background-color: #eee;
                margin: 3px 0;
            }

                .cc li a {
                    text-decoration: none;
                    color: #333333;
                    display: block;
                    line-height: 25px;
                }

                    .cc li a:hover {
                        padding-left: 10px;
                        background-color: #bbbcc8;
                    }
    </style>
    <script type="text/javascript" language="javascript">
        function expand(el) {
            childObj = document.getElementById(el);

            if (childObj.style.display == 'none') {
                childObj.style.display = 'block';
            }
            else {

            }
            return;
        }
        function expand1(el) {
            childObj = document.getElementById(el);

            if (childObj.style.display == 'block') {
                childObj.style.display = 'none';
            }
            else {

            }
            return;
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="in_t_l">
        <div class="in_t_l_s">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="in_t_l_sa" Height="16px"
                Width="50px"></asp:TextBox><a href="#"><img src="images/search_right1.gif" style="margin-bottom: -4px;" /></a>
        </div>
        <div class="pro_ys">
            <img src="images/1267550468552885369.gif" />
        </div>
        <div>


            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div onmouseout="expand1(<%#Eval("_fathercateid") %>)" onmouseover="expand(<%#Eval("_fathercateid")%>)">

                        <div style="width: 90px" class="cctelist">
                            <a href="#"><%#Eval("_fathername") %></a>
                        </div>

                        <div id="<%#Eval("_fathercateid")%>" style="margin: 0  0 0 10px; width: 85px; display: none;">
                            <ul class="cc">
                                <%# datas(Eval("_fathercateid").ToString()) %>
                            </ul>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


        </div>

    </div>
    <div class="pro_r">
        <div class="info_t_t"></div>
        <div class="info_t_b">
            <div class="info_t_b_l">
                <a href=' <%=img_url.Text%>' class='cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:0,zoomWidth:300,zoomHeight:160,showTitle:false">

                    <asp:Image ID="Image_1" runat="server" Height="320px" Width="280px" />
                </a>
            </div>
            <div class="info_t_b_r">
                <div style="text-align: center;">
                    <asp:Label ID="title_l" runat="server" Text=""></asp:Label>
                    <asp:Label ID="img_url" runat="server" Text="Label" Visible="False"></asp:Label>
                </div>
                <div>
                    <table class="table_detail" id="fz">

                        <tbody>
                            <tr>
                                <th class="style1">编号：</th>
                                <td width="300">
                                    <asp:Label ID="image_id" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="sizeid" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="uid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style1">市场价格：</th>
                                <td width="300">￥<asp:Label ID="market" runat="server" Font-Overline="False"
                                    Font-Strikeout="True" ForeColor="Black"></asp:Label>元</td>
                            </tr>
                            <tr>
                                <th class="style1">本站价格：</th>
                                <td>￥<asp:Label ID="local" runat="server"></asp:Label>元</td>
                            </tr>

                            <tr>
                                <th class="style1">类型：</th>
                                <td>
                                    <asp:Label ID="cate_name" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
 
                            <tr>
                                <th valign="top" class="style1">描述：</th>
                                <td valign="top">
                                    <asp:Label ID="content_s" runat="server"></asp:Label>
                                    <%--<asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal">
                                       <ItemTemplate>
                                     
                                       <asp:LinkButton ID="b_color0" runat="server" ForeColor="Black" Height="20px" 
                                            CssClass="colo" oncommand="b_color0_Command" CommandArgument='<%#Eval("_sizename") %>' ><%#Eval("_sizename") %></asp:LinkButton> &nbsp;&nbsp;
                                                                        
                                     　
                                                                        
                                   </ItemTemplate>
                                       </asp:DataList>--%></td>
                            </tr>
                            <%--<tr>
                                <th style="color: rgb(236, 101, 159);" class="style1">已选择：</th>
                                <td>

                                    <asp:Label ID="_size" runat="server"
                                        ForeColor="#000099" Text="无"></asp:Label>&nbsp;　颜色：<asp:Label ID="d_color" runat="server" ForeColor="#000099"></asp:Label></td>


                            </tr>--%>
                        </tbody>
                    </table>
                    <%--<table class="table_detail" id="other">
                    
                       <tbody>
                            <tr>
                                 <th class="style1">编号：</th>
                                 <td width="300">
                                     <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                                <asp:Label ID="Label3" runat="server"></asp:Label>
                                                </td>
                            </tr>
                            <tr>
                                 <th class="style1">市场价格：</th>
                                 <td width="300">
                                     ￥<asp:Label ID="Label4" runat="server" Font-Overline="False" 
                                         Font-Strikeout="True" ForeColor="Black"></asp:Label>元</td>
                            </tr>
                            <tr>
                                  <th class="style1">本站价格：</th>
                                  <td>￥<asp:Label ID="Label5" runat="server"></asp:Label>元</td>
                            </tr>
                                  				                                  
                             <tr>
                                  <th class="style1">类型：</th>
                                  <td>
                                      <asp:Label ID="Label6" runat="server"></asp:Label>
                                  </td>
                             </tr>
                              <tr>
                                   <th valign="top" class="style1">颜色：</th>           
                                   <td valign="top">
                                    <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal">
                                       <ItemTemplate>
                                       
                                  &nbsp;<asp:LinkButton ID="b_color" runat="server" ForeColor="Black" Height="20px" 
                                           CssClass="colo" oncommand="b_color_Command" CommandArgument='<%#Eval("_sizeid") %>' ><%#Eval("_color") %></asp:LinkButton>&nbsp;&nbsp;
                                       　
                             </ItemTemplate>     </asp:DataList></td>
                              </tr>   
							<tr>
                                 <th class="style1">&nbsp;</th>
                                 <td style="color: rgb(217, 157, 183);">
                                     （颜色以图为准）</td>
                             </tr>   
                             <tr>
                                 <th valign="top" class="style1">份数：</th>
                                 <td valign="top">
                                    
                                 <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal">
                                       <ItemTemplate>
                                     
                                       <asp:LinkButton ID="b_color0" runat="server" ForeColor="Black" Height="20px" 
                                            CssClass="colo" oncommand="b_color0_Command" CommandArgument='<%#Eval("_sizename") %>' ><%#Eval("_sizename") %></asp:LinkButton> &nbsp;&nbsp;
                                                                        
                                     　
                                                                        
                                   </ItemTemplate>
                                       </asp:DataList></td>
                             </tr>
                           <tr>
                                <th style="color: rgb(236, 101, 159);" class="style1">已选择：</th>
                                   <td>
	                             
                                       份数：<asp:Label ID="Label7" runat="server" 
                                           ForeColor="#000099" Text="无"></asp:Label>&nbsp;　颜色：<asp:Label ID="Label8" runat="server" ForeColor="#000099"></asp:Label></td>
                                   
                                   
                              </tr>           
                    </tbody></table>--%>
                </div>
                <div class="submit">

                    <div class="submit" style="float: left; width: 70px; display: block; padding: 8px 10px; padding: 9px 10px 7px 10px; border: 1px #D99DB7 solid; background: #fff; text-align: center; color: #888;">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">加入购物车</asp:LinkButton>
                    </div>
                    <div class="submit" style="float: left; margin-left: 10px; width: 70px; display: block; padding: 8px 10px; padding: 9px 10px 7px 10px; border: 1px #D99DB7 solid; background: #fff; text-align: center; color: #888;">
                        <asp:LinkButton ID="LinkButton1" runat="server"
                            OnCommand="LinkButton1_Command" OnClick="LinkButton1_Click1">加入收藏夹</asp:LinkButton>
                    </div>
                    <div style="clear: left;"></div>
                    &nbsp;<%-- <asp:LinkButton ID="LinkButton1" runat="server" ></asp:LinkButton>--%>
                </div>
            </div>
        </div>
        <div class="info_t_f"></div>
        <div class="clear"></div>
        <div style="text-align: center">

            <br />
        </div>
    </div>
    <div class="clear"></div>
</asp:Content>

