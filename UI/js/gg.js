//取广告参数值;
var scripts = document.getElementsByTagName("script");
var s = parseInt(scripts[ scripts.length - 1 ].innerHTML);
/*-----------------------------------------------------------------------*/
var Ad_Key = new Array();
var Ad_list = new Array();

for(var i=0; i<=8; i++){
	Ad_Key[i]     = new Array();
	Ad_list[i]    = new Array();
	Ad_list[i][0] = new Array();
	Ad_list[i][1] = new Array();
	}

Ad_Key[0][0] = "width:600px;height:400px" ;//index_top_left
Ad_Key[0][1] = "display:block" ;//button
Ad_Key[0][2] = "display:none" ;//title
Ad_Key[0][3] = "" ;//border

Ad_Key[1][0] = "width:202px;height:110px" ;//index_top_r1
Ad_Key[1][1] = "display:none;" ;
Ad_Key[1][2] = "display:none" ;
Ad_Key[1][3] = "border" ;//border

Ad_Key[2][0] = "width:202px;height:110px" ;//index_top_r1
Ad_Key[2][1] = "display:none" ;
Ad_Key[2][2] = "display:none" ;
Ad_Key[2][3] = "border" ;//border

Ad_Key[3][0] = "width:202px;height:110px" ;//index_top_r1
Ad_Key[3][1] = "display:none" ;
Ad_Key[3][2] = "display:none" ;
Ad_Key[3][3] = "border" ;//border

Ad_Key[4][0] = "width:66px;height:61px" ;//index_top_r2
Ad_Key[4][1] = "display:none" ;
Ad_Key[4][2] = "display:none" ;
Ad_Key[4][3] = "" ;//border

Ad_Key[5][0] = "width:66px;height:61px" ;//index_top_r2
Ad_Key[5][1] = "display:none" ;
Ad_Key[5][2] = "display:none" ;
Ad_Key[5][3] = "" ;//border

Ad_Key[6][0] = "width:66px;height:61px" ;//index_top_r2
Ad_Key[6][1] = "display:none" ;
Ad_Key[6][2] = "display:none" ;
Ad_Key[6][3] = "" ;//border

Ad_Key[7][0] = "width:80px;height:200px;display:none" ;//index_float
Ad_Key[7][1] = "display:none" ;
Ad_Key[7][2] = "display:none" ;
Ad_Key[7][3] = "" ;//border

Ad_Key[8][0] = "width:612px;height:122px;margin:10px auto;display:none" ;//reg_bottom
Ad_Key[8][1] = "display:none" ;
Ad_Key[8][2] = "display:none" ;
Ad_Key[8][3] = "border" ;//border



/*=================---index_top_left---================*/
Ad_list[0][0][0] = '<a href="http://www.hichoose.com/event/7xi/index.html" target="_blank"><img src="images/index_top_left_5_731.jpg" /></a>';
Ad_list[0][0][1] = '<a href="http://www.hichoose.com/event/youlechang/index.html" target="_blank"><img src="images/index_top_left_2_811.jpg" /></a>';
Ad_list[0][0][2] = '<a href="http://www.hichoose.com/event/youlechang/index.html" target="_blank"><img src="images/index_top_left_3_811.jpg" /></a>';
Ad_list[0][0][3] = '<a href="http://www.hichoose.com/goods.php?id=976" target="_blank"><img src="images/index_top_left_4_816.jpg" /></a>';
Ad_list[0][0][4] = '<a href="http://www.hichoose.com/goods.php?id=971" target="_blank"><img src="imagesg/index_top_left_5_816.jpg" /></a>';



Ad_list[0][1][0] = '<a href="#" target="_blank">01</a>';
Ad_list[0][1][1] = '<a href="#" target="_blank">02</a>';
Ad_list[0][1][2] = '<a href="#" target="_blank">03</a>';
Ad_list[0][1][3] = '<a href="#" target="_blank">04</a>';
Ad_list[0][1][4] = '<a href="#" target="_blank">05</a>';

/*=================---index_top_right_r1---================*/
Ad_list[1][0][0] = '<a href="/event/zhujiajiao/index.html" target="_blank"><img src="images/index_top_right_01.jpg" /></a>';
Ad_list[1][1][0] = '<a>tit02</a>';

Ad_list[2][0][0] = '<a href="javascript:void();"><img src="images/index_top_right_02_703.jpg" /></a>';
Ad_list[2][1][0] = '<a>tit02</a>';

Ad_list[3][0][0] = '<a href="javascript:void();"><img src="images/imagesindex_top_right_03_0726.jpg" /></a>';
Ad_list[3][1][0] = '<a>tit02</a>';

/*=================---index_top_right_r2---================*/
Ad_list[4][0][0] = '<a href="/service/pay.html" target="_blank"><img src="images/index_top_right_b1.gif" /></a>';
Ad_list[4][1][0] = '<a>tit01</a>';

Ad_list[5][0][0] = '<a href="/service/wl.html" target="_blank"><img src="images/index_top_right_b2.gif" /></a>';
Ad_list[5][1][0] = '<a>tit01</a>';

Ad_list[6][0][0] = '<a href="/service/about_hi.html" target="_blank"><img src="images/index_top_right_b3.gif" /></a>';
Ad_list[6][1][0] = '<a>tit01</a>';

/*=================---index_float---================*/
Ad_list[7][0][0] = '<a href="/event/2010spring/" target="_blank"><img src="images/index_float_01.jpg" /></a>';
Ad_list[7][1][0] = '<a>tit01</a>';

/*=================---reg_bottom---================*/
Ad_list[8][0][0] = '<a href="/themes/2009/hi_news.html#b" target="_blank"><img src="images/reg_bottom_01.jpg" /></a>';
Ad_list[8][1][0] = '<a>tit01</a>';




document.writeln('<div class=\"Awin_Img_S\" style=\"'+Ad_Key[s][0]+'\">');
document.writeln('                    <div class=\"Awin_ShowDiv\" style=\"width:100%;height:100%;\">');
document.writeln('                    <div class=\"Awin_ShowImg_S '+Ad_Key[s][3]+'\" >'+Ad_list[s][0][0]+'<\/div>');
document.writeln('                    <div class=\"Awin_Button_S\" style=\"'+Ad_Key[s][1]+'\">');
document.writeln('                        <div class=\"Awin_Button_right\">');
for(var i=0; i<Ad_list[s][0].length;i++){
document.writeln('                        <a>'+eval(i+1)+'<\/a>');
}
document.writeln('                        <\/div>');
document.writeln('                    <\/div>');
document.writeln('                    <div class=\"Awin_ShowTit_bg\" style=\"'+Ad_Key[s][2]+'\"><\/div>');
document.writeln('                    <div class=\"Awin_ShowTit_S\" style=\"'+Ad_Key[s][2]+'\"><a href=\"\"><\/a><\/div>');
document.writeln('                    <\/div>');
document.writeln('                    <div class=\"Awin_Pic_S\" style=\"display:none\">');
for(var i=0; i<Ad_list[s][0].length;i++){
document.writeln(					Ad_list[s][0][i]);
}
document.writeln('                    <\/div>');

document.writeln('                    <div class=\"Awin_Tit_S\" style=\"display:none\">');
for(var i=0; i<Ad_list[s][0].length;i++){
document.writeln(					Ad_list[s][1][i]);
}
document.writeln('                    <\/div>');
document.writeln('                <\/div>')