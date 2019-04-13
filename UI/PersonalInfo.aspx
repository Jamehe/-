<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="PersonalInfo" Title="个人资料" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_right_body">
    <div class="main">
          <div class="part">
            <div class="h"><span>个人资料</span></div>
            <div class="c">
                <table class="table_user no_border">
                  <tbody><tr>
                    <th class="tab_l_width">　 E-mail：</th>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                    <th>　　呢称：</th>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      </td>
                  </tr>
             <%--     <tr>
                    <th>手机：</th>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                      </td>
                  </tr>--%>
             <%--     <tr>
                    <th>固定电话：</th>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                      </td>
                  </tr>--%>
                  <tr>
                    <th>　　微信：</th>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                    <th>　　&nbsp; QQ：</th>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                    <th>安全问题：</th>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  </tr>
               <tr>
                    <th>安全密码：</th>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><input name="act" value="act_edit_profile" 
type="hidden"/>
					<!--<input name="other[schoolAreaId]" id="schoolAreaId" type="hidden" value=" $smarty.session.school_id " >-->
					<input name="other[schoolAreaId]" id="schoolAreaId" value="" 
type="hidden"/>
					<input name="schoolarea" id="schoolarea" value="" type="hidden"/>
                      <span class="button_2">
                     <%-- <input name="submit" value="确认修改" type="submit"/>--%>
                          <asp:Button ID="Button1" runat="server" Text="确认修改" onclick="Button1_Click" />
                     </span>
                    </td>
                  </tr>
                </tbody></table>
            
            </div>
          </div>
          <div class="part">
            <div class="h"><span>密码修改</span></div>
            <div class="c">
             
                <table class="table_user no_border">
                  <tbody><tr>
                    <th class="tab_l_width">原密码：</th>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                    <th>新密码：</th>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="*不能为空"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="*不能少于6位" 
                            onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                      </td>
                  </tr>
                  <tr>
                    <th>确认密码：</th>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox8" ControlToValidate="TextBox9" 
                            ErrorMessage="/*前后密码不一致*/"></asp:CompareValidator>
                      </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><input name="act" value="act_edit_password" 
type="hidden"/>
                      <span class="button_2"> <asp:Button ID="Button2" runat="server" Text="确认修改" 
                            onclick="Button2_Click"  /></span></td>
                  </tr>
                </tbody></table>
            </div>
          </div>
        </div>
</div>
</asp:Content>

