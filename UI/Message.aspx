<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="message.aspx.cs"
    Inherits="message" Title="发表留言" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .divstyle
        {
            padding: 0px;
            margin-top: 0px;
            width: 930px;
            margin-left: 0px;
            background-color: White;
        }
        .bg
        {
            /*  background-image: url(_image/showbj.gif);*/ /* background-image:url(images/border1_m.gif);*/ /*  background: url(images/border1_m.gif) repeat-x;*/
            height: 28px;
            padding-top: 4px;
            background-color: #fff0ff;
        }
        .spanstyle
        {
            float: right;
            margin-right: 14px;
            font-size: 12px;
        }
        .style1
        {
            width: 100%;
        }
        .tabletd1
        {
            font-size: 12px;
            padding-top: 5px;
            text-align: left;
            padding-left: 25px;
        }
        .td3style
        {
            height: -15px;
        }
        .spanstyle2
        {
            float: right;
            font-size: 12px;
            padding-right: 5px;
        }
        .spanstyle2 a
        {
            text-decoration: none;
        }
        .divborder
        {
            border: 1px solid #dadada;
            margin-top: 0px;
        }
        .foot
        {
            font-size: 12px;
            text-align: center;
            padding-bottom: 10px;
            height: 25px;
            margin-bottom: 10px;
            line-height: 25px;
        }
        .tail
        {
            background-image: url(_image/index_02.gif);
            padding-top: 45px;
            height: 54px;
            font-size: 12px;
            color: gray;
            text-align: center;
            margin-top: -1px;
        }
        .tail a
        {
            text-decoration: none;
            color: gray;
        }
        .spantail
        {
            padding-bottom: 10px;
        }
        .center
        {
            text-align: center;
            font-size: 12ox;
            height: 30px;
            line-height: 30px;
        }
        .divborder a
        {
            text-decoration: none;
            color: Black;
        }
        .Messageindex
        {
            font-size: 12px;
            padding-left: 25px;
        }
        .pages
        {
            color: #999;
            text-align: center;
        }
        .pages a, .pages .cpb
        {
            text-decoration: none;
            padding: 0 5px;
            border: 1px solid #ddd;
            background: #ffff;
            margin: 0 2px;
            font-size: 11px;
            color: #000;
        }
        /*去掉浮动效果后调用该类 就可以实现居中*/.pages a:hover
        {
            background-color: #E61636;
            color: #fff;
            border: 1px solid #E61636;
            text-decoration: none;
        }
        .pages .cpb
        {
            font-weight: bold;
            color: #fff;
            background: #E61636;
            border: 1px solid #E61636;
            text-align: center;
        }
        .anpager .cpb
        {
            background: #1F3A87 none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #FFFFFF;
            font-weight: bold;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
        }
        .anpager a
        {
            background: #FFFFFF none repeat scroll 0 0;
            border: 1px solid #CCCCCC;
            color: #1F3A87;
            margin: 5px 4px 0 0;
            padding: 4px 5px 0;
            text-decoration: none;
        }
        .anpager a:hover
        {
            background: #1F3A87 none repeat scroll 0 0;
            border: 1px solid #1F3A87;
            color: #FFFFFF;
        }
    </style>

    <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>

    <script type="text/javascript">

        function sendRequet() {

            var title = document.getElementById("<%=txt_title.ClientID %>").value; //获取txt_title的值

            var content = document.getElementById("<%=txt_content.ClientID %>").value;

            var url = "postmes.aspx?title=" + escape(title) + "&content=" + escape(content);


            $.ajax({

                url: url,
                type: "POST",
                dataType: "text",
                success: function(data) {        
                

              if(data=="1")
              {
                alert("留言成功，将通过审核");
                
               document.getElementById("<%=txt_title.ClientID %>").value="";
               document.getElementById("<%=txt_content.ClientID %>").value="";
              }
              else if(data=="0")
                {
                
                 alert("留言失败");
                 
               
                }else if(data=="3")
                {               
               
                  alert("标题或者内容不能为空");
                }
                
                }



                     
               
            });



        }
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <asp:DataList ID="DataList1" runat="server" Style="margin-right: 0px" Width="950px">
                <ItemTemplate>
                    <div class="divborder">
                        <div class="bg">
                            <span class="spanstyle">
                                <img src="_image/mail.gif" alt="" />&nbsp 留言IP<%#Eval("_ip")%>&nbsp&nbsp&nbsp&nbsp
                                发布时间:<%#Eval("_posttime")%></span>&nbsp;&nbsp;
                            <img src="_image/001.gif" alt="" />&nbsp; <span style="font-size: 12px; padding-left: 10px;">
                                标题：<%#Eval("_title")%></span></div>
                        <div>
                            <table class="style1">
                                <tr>
                                    <td class="tabletd1">
                                        留言内容:&nbsp &nbsp<%#Eval("_content") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Messageindex">
                                        管理员回复：<%#Eval("_reply") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="spanstyle2">
                                            <img src="_image/004.gif" alt="" />
                                            &nbsp <a href="#Name">发表留言 </a></span>&nbsp&nbsp &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="anpager" CurrentPageButtonClass="cpb"
                AlwaysShow="True" OnPageChanging="AspNetPager1_PageChanging">
            </webdiyer:AspNetPager>
        </div>
        <a name="Name">
            <div class="re_zt">
                <div class="re_zt_t">
                    <img src="images/leave.gif" alt="" /></div>
                <div>
                    <div class="border1_t">
                    </div>
                    <div class="border1_m">
                        <table class="table_form pad_4" id="reg_fm">
                            <tr>
                                <td>
                                    留言标题
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    留言内容
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_content" runat="server" TextMode="MultiLine" Height="150px"
                                        Width="280px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" OnClientClick='sendRequet(); return false;' />
                                    <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="border1_b">
                    </div>
                </div>
            </div>
        </a>
    </div>
</asp:Content>
