<%@ Page Language="C#" MasterPageFile="~/aadmin/mu.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" Title="后台首页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>

<div style="width:20%; padding-top:20px; float:left;">　　　　　
    <img src="images/admin_p.gif" alt=""  />　　</div>
    
<div style="width:75%; padding-top:40px; float:left;">

<div>   当前时间是：   <script type="text/javascript">
                                                                var week;
                                                                if (new Date().getDay() == 0) week = "星期日"
                                                                if (new Date().getDay() == 1) week = "星期一"
                                                                if (new Date().getDay() == 2) week = "星期二"
                                                                if (new Date().getDay() == 3) week = "星期三"
                                                                if (new Date().getDay() == 4) week = "星期四"
                                                                if (new Date().getDay() == 5) week = "星期五"
                                                                if (new Date().getDay() == 6) week = "星期六"
                                                                document.write(new Date().getFullYear() + "年" + (new Date().getMonth() + 1) + "月" + new Date().getDate() + "日 " + week);</script>

                                                            <span id="time"></span>

                                                            <script type="text/javascript">                                                                setInterval("time.innerHTML=new Date().getHours()+':'+new Date().getMinutes()+':'+new Date().getSeconds()", 1000);</script></div><br />
                                                            
<div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div><br />
    <div>欢迎进入网站管理中心！</div>
</div>
<div style="clear:both;"></div>
<div style="font-size:12px; text-align:center; background-image:url(images/title_bg2.jpg); width:90%; margin-left:25px; height:20px; color:White; margin-top:50px; ">您的相关信息</div>
<div style="background-color:#ecf4fc; height:12px; margin-left:25px; width:90%"></div>

<div style="margin-left:80px; margin-top:25px; font-size:14px;">
 登入用户：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
 
 角色：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </div>

</div>
</asp:Content>

