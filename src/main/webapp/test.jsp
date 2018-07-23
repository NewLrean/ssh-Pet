<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link type="text/css" href="css/style.css" rel="stylesheet"/>
<style type="text/css">

*{margin:0;padding:0;}

body {
    overflow: auto;
    margin: 0 auto;
    color: #000;
    font-size: 14px;
    font-family: "微软雅黑", "宋体", simsun, sans-serif;
} 
.clearfix:after{
	content:'';
	dispaly:block;
	clear:both;
}
.menu {
    border-bottom: 2px solid #ff7900;
    height: 32px;
    line-height: 40px;
    
}

.current{
	color:#e7691e;
    
}

.menu ul li {
    float: left;
    height: 36px;
}

.wrap {
    width: 950px;
    margin: auto;
}
ul{
list-style: none;
}

ul li a:hover {
    color:#e7691e;
    
}
ul li a {
    padding: 0 6px 0 18px;
    height: 13px;
    line-height: 13px;
    display: inline-block;
    text-decoration: none;
}
.nv-right {
    float: right;
}

.header1 {
width:100%;
height: 187px;
}

.top{
height: 32px;
    line-height: 32px;
    border-bottom: 1px solid #e5e5e5;
    background-color: #f2f2f2;
    color: #8b8989;
    font-size: 12px;
}

.w1180 {
    width: 1180px;
    margin: 0 auto;
}

.middle {
    height: 154px;
}

.left {
    float: left;
}

.header1 .top a {
    color: #8b8989;
    margin-left: 10px;
    text-decoration: none;
}

.header1 .top b {
    color: #8b8989;
    margin-left: 10px;
    text-decoration: none;
}
.right{
float: right;
}

.header1 .mleft {
    float: left;
    position: relative;
    width: 190px;
    z-index: 10;
}

.header1 .logobg {
    width: 190px;
    height: 154px;
    background-color: #f00;
    text-align: center;
    color: #fff;
}

.header1 .logo {
    display: inline-block;
    width: 160px;
    height: 32px;
    background: url(#) no-repeat;
    margin-top: 60px;
    background-size: 100% 100%;
}




.header1 .logo a {
    color: #010101;
    text-decoration: none;
}

.header1 .line {
    width: 190px;
    height: 24px;
    line-height: 24px;
    margin: 0px auto;
    text-align: center;
    background: url(#) center no-repeat;
}

.category {
	
    width: 190px;
    height: 400px;
    background-color: rgba(0, 0, 0, 0.5);
    filter: Alpha(opacity=50);
    font-family: "微软雅黑";
    text-align: center;
    overflow: hidden;
     
}

.category .text {
    float: left;
    width: 190px;
    height: 133px;
    line-height: 33px;
    overflow: hidden;
}

.category a {
    color: #FFF;
    text-decoration: none;
}

.category .text i {
    display: inline-block;
    float: left;
    margin-left: 10px;
    font-style: normal;
    width: 80px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    overflow: hidden;
}

.category .win {
    position: absolute;
    background-color: rgba(0, 0, 0, 0.6);
    filter: Alpha(opacity=50);
    z-index: 999;
    display: none;
    height: auto;
    width: 260px;
    margin-left: 190px;
    line-height: 30px;
    text-align: left;
    margin-top: -33px;
}

.category .win a {
    display: inline-block;
    margin-right: 20px;
}
.text:hover{
	background-color: rgba(0, 0, 0, 0.7);
}
.text:hover .win{
	display: block;
	background-color: rgba(0, 0, 0, 0.7);
}

.banner {
    text-align: center;
    height: 400px;
    width: 100%;
    position: absolute;
    z-index: 1;
    margin-top: 0;
    overflow: hidden;
}

.banList {
    position: absolute;
    left: 50%;
    margin-left: -900px;
    height: 400px;
}

.banList ul {
    list-style: none;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.banList li {
    height: 400px;
    opacity: 0;
    position: absolute;
    transform: scale(0);
    transition: transform 0.5s ease 0s, opacity 1.5s ease 0s;
    z-index: 9;
}

.banList li.active {
    opacity: 1;
    transform: scale(1);
    z-index: 2;
}

.header1 .mright {
    float: left;
    width: 990px;
}

.header1 .search {
    margin-top: 40px;
    margin-left: 200px;
}


.header1 .searchform{
	width: 790px;
	height: 38px;
	line-height: 38px;
	
}

p{
margin: 0;
    padding: 0;
}

.header1 .searchform a {
    display: inline-block;
    width: 89px;
    height: 36px;
    line-height: 38px;
    text-align: center;
    background-color: #f00;
    color: #fff;
    font-size: 16px;
    vertical-align: middle;
    text-decoration: none;
}

.header1 .hotsearch {
    height: 40px;
    line-height: 40px;
    color: #999;
    font-size: 12px;
    
}

.header1 .searchform input {
    width: 406px;
    height: 30px;
    line-height: 30px;
    border: 3px solid #f00;
    vertical-align: middle;
    font-size: 14px;
    padding-left: 5px;
}

.header1 .nav {
    height: 36px;
    line-height: 36px;
    padding: 0 20px;
    font-size: 16px;
    font-weight: bold;
}

.c {
    clear: both;
}

.header1 .hotsearch a.red {
    color: #f00;
}

.header1 .hotsearch a {
    padding: 0 10px;
    border-right: 1px solid #ccc;
    color: #999;
    text-decoration: none;
}

.header1 .hotsearch a.last {
    border: 0;
}

.header1 .banner {
    text-align: center;
    height: 400px;
    width: 100%;
    position: absolute;
    z-index: 1;
    margin-top: 0;
    overflow: hidden;
}

.banList{
    position: absolute;
    left: 50%;
    margin-left: -900px;
    height: 400px;
}

.banList li.active {
    opacity: 1;
    transform: scale(1);
    z-index: 2;
}

.banList li {
    height: 400px;
    opacity: 0;
    position: absolute;
    transform: scale(0);
    transition: transform 0.5s ease 0s, opacity 1.5s ease 0s;
    z-index: 9;
}

.banList li a{
	color: #010101;
    text-decoration: none;
}

.fomW {
    position: absolute;
    bottom: 20px;
    left: 50%;
    height: 20px;
    z-index: 9;
    width: 1180px;
    margin-left: -590px;
}

.jsNav {
    text-align: center;
}

.jsNav a.current {
    background: #fc8f0f;
    cursor: pointer;
}

.hide{
display:none;
}
</style>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery.event.drag-1.5.min.js"></script>
<script type="text/javascript" src="js/jquery.touchSlider.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$(".main_visual").hover(function(){
		$("#btn_prev,#btn_next").fadeIn()
	},function(){
		$("#btn_prev,#btn_next").fadeOut()
	});
	
	$dragBln = false;
	
	$(".main_image").touchSlider({
		flexible : true,
		speed : 200,
		btn_prev : $("#btn_prev"),
		btn_next : $("#btn_next"),
		paging : $(".flicking_con a"),
		counter : function (e){
			$(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
		}
	});
	
	$(".main_image").bind("mousedown", function() {
		$dragBln = false;
	});
	
	$(".main_image").bind("dragstart", function() {
		$dragBln = true;
	});
	
	$(".main_image a").click(function(){
		if($dragBln) {
			return false;
		}
	});
	
	timer = setInterval(function(){
		$("#btn_next").click();
	}, 4000);
	
	$(".main_visual").hover(function(){
		clearInterval(timer);
	},function(){
		timer = setInterval(function(){
			$("#btn_next").click();
		},4000);
	});
	
	$(".main_image").bind("touchstart",function(){
		clearInterval(timer);
	}).bind("touchend", function(){
		timer = setInterval(function(){
			$("#btn_next").click();
		}, 4000);
	});
	
});
</script>
</head>
<body>
<div class="header1">
	<div class="top">
		<div class="w1180">
			<span class="left">
			欢迎来到宠物店
			<a href="login.jsp" id="top_1" title="登录" >登录</a>
			<a id="top_2" class="hide">${name }您好！</a>
			<a id="top_3" href="loginout" class="hide">退出</a>
			<a href="reg.jsp" title="注册" >注册</a>
			
			
			</span>
			<span class="right">
			<a href="#" title="微信">微信</a>
			<a id="a_home" href="user/login" style="cursor: pointer;" title="我的宠物">我的宠物</a>
			</span>
		</div>
	</div>
			<div class="w1180 middle">
				<div class="mleft">
					<div class="logobg">
						<a class="logo"></a>
						<div class="line">诚信担保</div>
					</div>
					
					<div class="category">
        				<span class="text"><input type="text" style="height: 0px; width: 50px;border: 0px;"/><a title="小型犬">小型犬</a><input type="text" style="height: 0px; width: 50px;border: 0px;"/><br />
          					<i><a href="#" title="贵宾犬">贵宾犬</a></i>
          					<i><a href="#" title="博美犬">博美犬</a></i>
          					<i><a href="#" title="雪纳瑞">雪纳瑞</a></i>
          					<i><a href="#" title="泰迪犬">泰迪犬</a></i>
          					<i><a href="#" title="柯基犬">柯基犬</a></i>
          					<i><a href="#" title="茶杯犬">茶杯犬</a></i> 
               		
          					<div class="win">
            					<a href="#" title="比熊犬">比熊犬</a>
            					<a href="#" title="法国斗牛犬">法国斗牛犬</a>
            					<a href="#" title="比格犬">比格犬</a>
            					<a href="#" title="巴哥犬">巴哥犬</a>
            					<a href="#" title="吉娃娃">吉娃娃</a>
            					<a href="#" title="迷你杜宾犬">迷你杜宾犬</a>
            					<a href="#" title="腊肠犬">腊肠犬</a>
           				 		<a href="#" title="约克夏">约克夏</a>
            					<a href="#" title="京巴犬">京巴犬</a>
            					<a href="#" title="马尔济斯犬">马尔济斯犬</a>
           					</div>
           					
         				</span>
         
         				<span class="text"><input type="text" style="height: 0px; width: 50px;border: 0px;"/><a title="中型犬">中型犬</a><input type="text" style="height: 0px; width: 50px;border: 0px;"/><br />
          					<i><a href="#" title="哈士奇">哈士奇</a></i>
          					<i><a href="#" title="拉布拉多">拉布拉多</a></i>
          					<i><a href="#" title="萨摩耶">萨摩耶</a></i>
          					<i><a href="#" title="金毛犬">金毛犬</a></i>
          					<i><a href="#" title="边境牧羊犬">边境牧羊犬</a></i>
          					<i><a href="#" title="柴犬">柴犬</a></i> 
          		
          					<div class="win">
           						<a href="#" title="松狮犬">松狮犬</a>
            					<a href="#" title="马犬">马犬</a>
            					<a href="#" title="英国斗牛犬">英国斗牛犬</a>
            					<a href="#" title="可卡犬">可卡犬</a>
            					<a href="#" title="牛头梗">牛头梗</a>
            					<a href="#" title="沙皮犬">沙皮犬</a>
            					<a href="#" title="巴吉度">巴吉度</a>
            					<a href="#" title="德国牧羊犬">德国牧羊犬</a>
            					<a href="#" title="美国恶霸犬">美国恶霸犬</a>      		
          					</div>
         				</span>
         
         				<span class="text"><input type="text" style="height: 0px; width: 50px;border: 0px;"/><a title="大型犬">大型犬</a><input type="text" style="height: 0px; width: 50px;border: 0px;"/><br />
          					<i><a href="#" title="阿拉斯加犬">阿拉斯加犬</a></i>
          					<i><a href="#" title="秋田犬">秋田犬</a></i>
          					<i><a href="#" title="巨型贵宾犬">巨型贵宾犬</a></i>
          					<i><a href="#" title="罗威纳">罗威纳</a></i>
          					<i><a href="#" title="藏獒">藏獒</a></i>
          					<i><a href="#" title="大白熊">大白熊</a></i>      		
          					<div class="win">
            					<a href="#" title="古牧">古牧</a>
            					<a href="#" title="杜宾">杜宾</a>
            					<a href="#" title="高加索">高加索</a>
            					<a href="#" title="卡斯罗犬">卡斯罗犬</a>
            					<a href="#" title="杜高犬">杜高犬</a>      		
            				</div>
         				</span>       
        			</div>
				</div>
				<div class="mright">
					<div class="search">
						<form action="#" method="get" style="width: 790px; height: 78px;">
							<p class="searchform">
								<input placeholder="请输入内容" autocomplete="off"/><a id="submit">搜索</a>
								
							</p>
							<p class="hotsearch">
								<span>热门搜索：</span>
								<a title="泰迪" class="red">泰迪</a>
								<a title="金毛犬">金毛犬</a>
								<a title="比熊犬">比熊犬</a>
								<a title="吉娃娃" class="red last">吉娃娃</a>
							</p>
						</form>
					</div>
					<div class="nav">
						<div class="menu">
   							<ul class="wrap clearfix"> 

    							<li> <a href="/" class="current " > 首页 </a> </li> 
    							<li> <a href="home.jsp"> 淘寵商城 </a> </li> 
    							<li> <a href="buy.jsp"   > 挑选爱寵 </a> </li> 
    
    							<li> <a href="cwjs.jsp"    > 寵物介绍 </a> </li> 
   
    							<li> <a href="#" target="blank" > 学训宠 </a> </li> 
    							<li class="nv-right"> <a href="#"> 淘宠通 </a> </li>
   							</ul> 
  						</div>
					</div>
				</div>
				
				<div class="c"></div>
			
		</div>
		</div>
<div class="main_visual">
	<div class="flicking_con">
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
	</div>
	<div class="main_image">
		<ul>
			<li><span class="img_3"></span></li>
			<li><span class="img_4"></span></li>
			<li><span class="img_1"></span></li>
			<li><span class="img_2"></span></li>
			<li><span class="img_5"></span></li>
		</ul>
		<a href="javascript:;" id="btn_prev"></a>
		<a href="javascript:;" id="btn_next"></a>
	</div>
</div>
</body>
</html>