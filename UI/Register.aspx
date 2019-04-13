<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" EnableViewState="false" CodeFile="Register.aspx.cs" Inherits="Register" Title="会员注册" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="js/jquery-1.3.2.js"></script>
    <script type="text/javascript">

        $(function () {



            var pw1, pw2;//两次输入的密码
            $('#TextBox6').keyup(function () {
               
                pw1 = this.value;
                var lvl = check(this.value);
                if (lvl >= 0) {
                    $('#tb').css('display', 'block');
                    $('#tb td').css('backgroundColor', '');
                    if (lvl <= 1) {
                        $('#tb td:first').css('backgroundColor', 'red').css('color','white');
                        $('#t1').html("弱");
                        //$('#t1').nextAll('td').html("");
                        $('#t1').siblings().html("");
                    }
                    if (lvl == 2) {
                        $('#tb td:lt(2)').css('backgroundColor', 'blue').css('color', 'white');
                        //$('#t2').nextAll('td').html("");
                        $('#t2').html("中");
                        $('#t2').siblings().html("");
                    }
                    if (lvl == 3) {
                        $('#tb td:lt(3)').css('backgroundColor', 'green').css('color', 'white');
                        $('#t3').html("强");
                        $('#t3').siblings().html("");
                    }
                }
                else {
                    $('#tb').css('display', 'none');
                }

            })


            $('#TextBox9').keyup(function () {

                pw2 = this.value;
                
            })

            //判断密码是否输入一致
            setInterval(function () {
                
                if (pw1 != null && pw2 != null) {
                    
                    $('#tips').css('display', 'inline-block');

                    //当两密码不一致时，阻止表单提交

                    if (pw2 != "" || pw1 != "") {
                        if (pw2 == pw1) {
                            Psflag = 1;
                            $('#tips').text("两次密码输入一致！").css('color', 'green').css('font-weight', 'bold');


                        }
                        else {
                            $('#tips').text("两次密码输入不一致！").css('color', 'red').css('font-weight', 'bold');
                            Psflag = 0;
                        }
                    }
                    else {
                        $('#tips').css('display', 'none');
                    }

                }
            }, 500);

            //判断邮箱输入框
            $('#TextBox7').blur(function () {

                var email = $('#TextBox7').val();//获取txt_title的值

                var url = "checkEmail.aspx?email=" + escape(email);
                $.ajax({

                    url: url,
                    type: "POST",
                    dataType: "text",
                    success: function (data) {


                        switch (data) {
                            case "0":
                                $("#errorMes").css('color', 'red').css('font-weight', 'bold').html("邮箱已注册，不可用！");
                                Msflag = 0;
                                break;

                            case "1":
                                $("#errorMes").css('color', 'green').css('font-weight', 'bold').html("恭喜你，此邮箱可用！");
                                Msflag = 1;
                                break;

                            case "2":
                                $("#errorMes").css('color', 'red').css('font-weight', 'bold').html("邮箱格式不正确，不可用！");
                                Msflag = 0;
                                break;

                            case "3":
                                $("#errorMes").css('color', 'red').css('font-weight', 'bold').html("邮箱不能为空！");
                                Msflag = 0;
                                break;


                        }


                    }

                });
            });


        })


        //检查密码强弱
        function check(msg) {
            var lvl = 0;
            if (msg.match(/[0-9]/)) {
                lvl++;
            }
            if (msg.match(/[a-zA-Z]/)) {
                lvl++;
            }
            if (msg.match(/[^a-zA-Z0-9]/)) {
                lvl++;
            }
            if (msg.length < 6) {
                lvl--;
            }
            return lvl;
        }
    </script>
    <style type="text/css">
        /*  .style1
        {
            height: 52px;
        }*/
        .style2 {
            width: 90px;
           
        }

        .style3 {
            height: 52px;
            width: 90px;
           
        }
         #tb {
            text-align: center;
            
            height:2px;
            display: none;
            margin-bottom:15px;
        }
          #tb td {
                width: 25px;
                height:10px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="re_zt">
        <div class="re_zt_t">
            <img src="images/ico_reg.gif" alt="" />
        </div>
        <div>
            <div class="border1_t"></div>
            <div class="border1_m">
                <table class="table_form pad_4" id="reg_fm">
                    <tbody>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>Email</th>
                            <td>
                                <asp:TextBox ID="TextBox7" ClientIDMode="Static" runat="server"></asp:TextBox>
                                &nbsp;<span class="mess_pop_2"><span id="email_notice" class="bg_l ">Email是您的账户名.
                                    <span class="clear"></span><span id="errorMes"></span></span>
                                </span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7"
                                    ErrorMessage="/*必需填写*/" Display="Dynamic"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>密码</th>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" ClientIDMode="Static" Width="124px"></asp:TextBox>
                                &nbsp;<span class="mess_pop_2">
                                    <span id="password_notice" class="bg_l "><span class="clear"></span></span></span>
                                <table cellpadding="0" cellspacing="0" id="tb">
                                    <tr>
                                        <td id="t1"></td>
                                        <td id="t2"></td>
                                        <td id="t3"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <th class="style2"><span class="must_input">*</span>确认密码</th>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" ClientIDMode="Static" TextMode="Password" Width="124px"></asp:TextBox>
                                &nbsp;<span class="mess_pop_2"><span id="conform_password_notice" class="bg_l "><span class="clear">　</span>
                                    <span id="tips"></span>
                                </span>
                                </span>
                            </td>
                        </tr>

                        <tr>
                            <th class="style2"><span class="must_input">*</span>昵称</th>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Width="124px"></asp:TextBox>
                                &nbsp;<span class="mess_pop_2"><span id="username_notice" class="bg_l "><span class="clear"></span></span></span></td>
                        </tr>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>QQ</th>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Width="124px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>微信</th>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="124px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>安全问题</th>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="235px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th class="style2"><span class="must_input">*</span>安全密码</th>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Width="235px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="style2"></td>
                            <td>
                                <br />
                                <input name="agreement" value="1" checked="checked" class="checkbox" type="checkbox" style="width: 20px;" />&nbsp;我已看过并接受《<a href="#" target="_blank" style="text-decoration: underline;">用户协议</a>》 </td>
                        </tr>

                        <tr>
                            <td class="style3"></td>
                            <td class="style1">
                                <%--<input name="Submit" src="images/but_reg.gif" id="submit" type="image" />  --%>
                                <asp:ImageButton ID="ImageButton1" runat="server"
                                    ImageUrl="~/images/but_reg.gif" Height="35px" Width="98px"
                                    OnClick="ImageButton1_Click" />
                                <input name="act" value="act_register" type="hidden" />
                                <input value="0" type="hidden" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2"></td>
                            <td>
                                <br />
                                <img class="b_5" src="images/ico_04.gif" alt="" />我已有账号，我要&nbsp;<a href="Login.aspx" style="color: rgb(210,128, 164);">登录<br /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="border1_b"></div>
        </div>
    </div>
</asp:Content>

