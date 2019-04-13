<%@ Page Language="C#" MasterPageFile="~/AccountCenter.master" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="address" Title="收货地址管理" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_right_body">
    <div class="main">
          <div class="part">
            <div class="h"><span>商品上架</span></div>
            
            <div class="c" >
                <table class="table_user no_border">
                  <tbody><tr>
                    <th class="tab_l_width">　　&nbsp;&nbsp;&nbsp; 商品名</th>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="/*必须填写*/"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                    <th>　　价格</th>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="/*必须填写*/"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                    <th>　　选择图片</th>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="/*必须填写*/"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                    <th>　　商家电话</th>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="/*必须填写*/"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                    <th>　　商家地址</th>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="/*必须填写*/"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td>
                 <%--   <span class="button_2">
                          <asp:Button ID="Button1" runat="server" Text=" 提交信息" onclick="Button1_Click" 
                             />
                           
                     </span>　　<input name="act" value="act_edit_profile" 
type="hidden"/>
					
					<input name="other[schoolAreaId]" id="Hidden1" value="" 
type="hidden"/>
					<input name="schoolarea" id="Hidden2" value="" type="hidden"/>--%>
                    
                        <span class="button_2">
                          <asp:Button ID="Button2" runat="server" Text="提交审核" 
                            onclick="Button2_Click"  />
                           
                     </span>　　<input name="act" value="act_edit_profile" 
type="hidden"/>
					
					<input name="other[schoolAreaId]" id="schoolAreaId" value="" 
type="hidden"/>
					<input name="schoolarea" id="schoolarea" value="" type="hidden"/>
					
                    </td>
                  </tr>
                </tbody></table>
              
            </div>
            <div class="login_r"  style="margin-left:20px;">
                <img src="images/yqtx.gif" alt="" />哈啾友情提示：<br />
                　　1. 填写的地址必须是真实，有效的<br />
                　　2. 收货地址的所有内容都必须填写<br />
                　　3. 如果信息不准确，将导致货物发送有误<br />
            </div>
            
          </div>
          
        </div>
</div>
</asp:Content>

