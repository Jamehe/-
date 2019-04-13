<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" Title="我的订单" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="js/jquery-1.3.2.js"></script>

    <script type="text/javascript">
        $(function () {
            var trs = $("#tb").children("tr");
           
            for (var i = 1; i < trs.length; i++)
            {
                var paystate = trs.eq(i).find("td").eq(3).text();
                var prostate = trs.eq(i).find("td").eq(4).text();
                if (prostate == "1") {
                    trs.eq(i).find("td").eq(4).html("派送中").css('color', 'green');
                }
                else {
                    trs.eq(i).find("td").eq(4).html("未发货").css('color', 'red');
                }
                
                if (paystate == "1")
                {
                    trs.eq(i).find("td").eq(6).html("已支付").css('color','green');
                }
                
            }
           
        })
    </script>
    <div class="user_right_body">
        <div class="tit"><span>我的订单</span></div>
        <div class="main" style="">
            <table class="table center tab_x1" >
                <tbody id="tb">
                    <tr class="tr_h">
                        <td class="tab_l_width">订单号</td>
                        <td>下单时间</td>
                        <td>订单总金额</td>
                        <td>支付状态</td>
                        <td> 物流信息</td>
                        <td>操作</td>
                        <td>操作</td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr class="tr_h">
                                <td class="tab_l_width">
                                    <a href='orderdetail.aspx?ordernum=<%#Eval("_ordernum")%>'><%#Eval("_ordernum")%></a></td>
                                <td><%#Eval("_ordertime")%></td>
                                <td><%#Eval("_sumprice","{0:N2}")%></td>
                                <td><%#Eval("_paystate")%></td>
                                <td><%#Eval("_prostate")%></td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server"
                                        ImageUrl="~/images/delete.gif" OnClick="ImageButton1_Click"
                                        OnCommand="ImageButton1_Command" CommandName="Delete" CommandArgument='<%#Eval("_id")%>' /></td>
                                <td>
                                    <asp:ImageButton ID="ImageButton2"  BorderStyle="None" Width="36px" Height="16px" runat="server"
                                        ImageUrl="~/images/pay.gif" OnClick="ImageButton1_Click"
                                        OnCommand="ImageButton2_Command" CommandName="Pay" CommandArgument='<%#Eval("_id")%>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <div style="text-align: center;">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True"
                    CssClass="paginator" CurrentPageButtonClass="cpb" FirstPageText="首页"
                    LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                    OnPageChanging="AspNetPager1_PageChanging">
                </webdiyer:AspNetPager>
            </div>

        </div>

    </div>
</asp:Content>

