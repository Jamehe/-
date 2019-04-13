<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits=" Login_aa" Title="会员登入" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 619px;
        margin: 30px auto;
        padding: 0;
        height: 281px;
    }
    .auto-style3 {
        float: left;
        width: 266px;
        padding-left: 30px;
        line-height: 25px;
        padding-top: 20px;
        height: 261px;
    }
    .auto-style4 {
        width: 575px;
        height: 277px;
        margin: 30px auto;
        padding: 0;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login_zt">
     <div class="border1_t"></div>
     <div class="border1_m_zt">
        <div class="auto-style4">
            <div class="login_l">
                <div style="margin-bottom:30px;"><img src="images/ico_06.gif" /></div>
                <div>
                    <table>
                        <tr>
                            <td width="60">Email</td>
                            <td> <asp:TextBox ID="TextBox3" runat="server" Width="124px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>密码
                               </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="124px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td>验证码
                               </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="62px"></asp:TextBox><img alt="验证码" src="shopValidateCode.aspx" title="点击" style=" margin-bottom:-5px; cursor:pointer;" onclick="this.src='shopValidateCode.aspx?id='"+Math.random()+"'" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:CheckBox ID="CheckBox1"  runat="server" Checked="True" />记住用户名 </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="height:60px;">
                                <asp:ImageButton ID="ImageButton1" runat="server"  
                                    ImageUrl="~/images/but_login.gif" onclick="ImageButton1_Click" /> 
                               </td>
                        </tr>
                    </table>

                </div>
                </div>
            <div class="auto-style3">
                <img src="images/yqtx.gif" />友情提示：<br />
                如果您还没有注册，请点击“立即注册”按钮填写相关信息注册成为网站会员，注册之后您可以： <br />
                　　1. 保存您的个人资料<br />
                　　2. 收藏您关注的商品<br />
                　　3. 享受会员服务<br />
                　　4. 进行购物之旅<br />
            </div>
        </div>
     </div>
     <div class="border1_b"></div>
</div>
</asp:Content>

