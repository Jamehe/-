<%@ Page Language="C#" MasterPageFile="~/zt.master" AutoEventWireup="true" CodeFile="ProList.aspx.cs" Inherits="ProList" Title="产品列表" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" language="javascript">
	function expand(el)
	{
		childObj = document.getElementById( el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			
		}
		return;
	}
		function expand1(el)
	{
		childObj = document.getElementById( el);

		if (childObj.style.display == 'block')
		{
			childObj.style.display = 'none';
		}
		else
		{
			
		}
		return;
	}
</script>
  <style type="text/css">
    .select
    {
      margin-left:20px;
      	
    	}
    .select a:hover
    {
    	 color:#FF3300; 
    	 
    	} 
    	  .cctelist
     {
      text-align:center;
      line-height:25px;
      background-color:#eee;
         margin:3px 0 0 0;
      
     	}
     .cctelist a
     {
     	text-decoration:none;
     	color:#333333;
     	display:block;
     	}	
     .cctelist a:hover
     {
     	padding-left:10px;
     	background-color:#bbbcc8;
     	}
          .cc
     {}	
      .cc li
     {
     	height:25px;
      text-align:center;
      line-height:25px;
      background-color:#eee;
      margin:3px 0;
     	}
     .cc li a
     {
     	text-decoration:none;
     	color:#333333;
     	display:block;
     	}	
     .cc li a:hover
     {
     	padding-left:10px;
     	background-color:#bbbcc8;
     	}				
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="in_t_l">
         <div class="in_t_l_s">
                <asp:TextBox ID="search" runat="server" CssClass="in_t_l_sa" Height="16px" 
                    Width="40px"></asp:TextBox>
            
                    <asp:ImageButton ID="ImageButton1" runat="server"  
                    ImageUrl='images/search_right1.gif'  style="margin-bottom:-4px; height: 17px;" 
                    onclick="ImageButton1_Click" />
            
         </div>
         <div class="pro_ys"><img src="images/1267550468552885369.gif" /></div>
        <div> 
        
  
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
    <div onmouseout="expand1(<%#Eval("_fathercateid") %>)"  onmouseover="expand(<%#Eval("_fathercateid")%>)"  >

        <div style="width:90px" class="cctelist" >
        <a  href="#"> <%#Eval("_fathername") %></a></div>
 
      <div id="<%#Eval("_fathercateid")%>"  style="margin:0  0 0 10px;  width:85px;  display:none;  "  >
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
        <div class="pro_r_tjt">
            <img src="images/tjsb.gif" />
        </div>
        <div style="text-align:center;"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div> 
        <div class="pic_list_y1">
           <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                RepeatDirection="Horizontal">
                  <ItemTemplate>
			      <div class="select">
                    <div class="pic"><a href='ProInfo.aspx?uid=<%#Eval("_id")%>' target="_blank"><asp:Image ID="Image3" runat="server" ImageUrl='<%#bd(Eval("_imageid").ToString()) %>' Height="300px" Width="225px" /></a></div>
                    <div style=" margin-left:62px;"><asp:Image ID="Image1" runat="server" 
                            ImageUrl="images/1263193208171080439.gif" Visible="False"  /></div>                  
  	                <div style=" margin-left:97px;"> <%#Eval("_catename")%> </div>
                    <div style=" margin-left:73px;"><a href="#" target="_blank">㊣<%#Eval("_title") %></a></div>
                    <div style=" margin-left:78px;">￥<%#Eval("_localprice","{0:N2}")%>元</div>
                 </div>
                  </ItemTemplate>           
				</asp:DataList>	                    
		       <%--<li>
                    <div class="pic"><a href="#" target="_blank"><img src="images/11949S06_H_2.jpg"></a></div>                  
  					<div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
	                <div class="en_tit">cotton coat</div>
                    <div class="tit"><a href="#" target="_blank">㊣ 呢料两件套棉衣</a></div>
                    <div class="price">￥399.00元</div>
               </li>                
			    
			    <li>
                    <div class="pic"><a href="#" target="_blank"><img src="images/11950S18_H_2.jpg"></a></div>                  
  					<div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"><img src="images/1263193208171080439.gif" title="recommend" border="0"></div>             
                    <div class="en_tit">cotton coat</div>
                    <div class="tit"><a href="#" target="_blank">㊣ 绣花带帽棉服</a></div>
                    <div class="price">￥209.00元</div>
               </li>                
		    </ul>
        </div> 
        
        <div class="pro_r_tjt">
            <img src="images/cate_x_h1.gif" />
        </div> 
        <div class="pic_list_y2">
           <ul>    
               <li>
                   <div class="pic"><a href="#" target="_blank"><img src="images/111016A011T_H_1.JPG"></a></div>
                   <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                   <div class="en_tit">T-shirt</div>
                   <div class="tit"><a href="#" target="_blank"></a></div><div class="price">￥109.00元</div>
               </li>
                                        
               <li>
                   <div class="pic"><a href="#" target="_blank"><img src="images/111020A104_H_1.jpg"></a></div>
                   <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                   <div class="en_tit">T-shirt</div>
                   <div class="tit"><a  href="#" target="_blank"></a></div>
                    <div class="price">￥55.00元</div>
              </li>
                                        
              <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111020C043_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="tit"><a href="#" target="_blank"></a></div>
                  <div class="price">￥45.00元</div>
             </li>
                                        
             <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111016A012_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif"title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="tit"><a  href="#" target="_blank"></a></div>
                  <div class="price">￥69.00元</div>
             </li> 
                                       
              <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111020C043_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="tit"><a href="#" target="_blank"></a></div>
                  <div class="price">￥45.00元</div>
             </li>
              <li>
                   <div class="pic"><a href="#" target="_blank"><img src="images/111016A011T_H_1.JPG"></a></div>
                   <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                   <div class="en_tit">T-shirt</div>
                   <div class="tit"><a href="#" target="_blank"></a></div><div class="price">￥109.00元</div>
               </li>
                                        
               <li>
                   <div class="pic"><a href="#" target="_blank"><img src="images/111020A104_H_1.jpg"></a></div>
                   <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                   <div class="en_tit">T-shirt</div>
                   <div class="tit"><a  href="#" target="_blank"></a></div>
                    <div class="price">￥55.00元</div>
              </li>
                                        
              <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111020C043_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="tit"><a href="#" target="_blank"></a></div>
                  <div class="price">￥45.00元</div>
             </li>
                                        
             <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111016A012_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif"title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="price">￥69.00元</div>
             </li> 
                                       
              <li>
                  <div class="pic"><a href="#" target="_blank"><img src="images/111020C043_H_1.JPG"></a></div>
                  <div class="P_lable"><img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                  <div class="en_tit">T-shirt</div>
                  <div class="tit"><a href="#" target="_blank"></a></div>
                  <div class="price">￥45.00元</div>
             </li> 
        </ul>--%>
    </div>
    </div>
    <div class="clear">
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
            HorizontalAlign="Center" LastPageText="尾页" NextPageText="下一页" 
            PrevPageText="上一页" onpagechanging="AspNetPager1_PageChanging">
        </webdiyer:AspNetPager>
    </div>
</asp:Content>

