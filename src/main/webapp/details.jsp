<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
*{margin:0;padding:0;}

a {
    color: #010101;
    text-decoration: none;
}

a:HOVER{
	color: red;
}

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
.menu ul{
list-style: none;
}

.menu ul li a:hover {
    color:#e7691e;
    
}
.menu ul li a {
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
    height: 52px;
    font-size:40px;
    margin-top: 35px;
    font-family:fantasy;
    text-decoration: none;
    color:#fff; 
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
    margin-top: 15px;
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
.search .searchform button {
    display: inline-block;
    width: 89px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    background-color: #f00;
    color: #fff;
    font-size: 16px;
    vertical-align: middle;
    cursor: pointer;
    margin-left: -5px;
    border: none;
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

.breadcrumb {
    margin: 30px auto 10px auto;
}

.hide{
	display: none;
}

.big_pic {
    width: 500px;
    height: 400px;
    float: left;
    position: relative;
}

.jqzoom {
    border: 1px solid #eee;
    float: left;
    position: relative;
    padding: 0;
    cursor: pointer;
}

.jqzoom img {
    float: left;
    max-height: 360px;
    width: 520px;
}
.bottom_btn {
    width: 500px;
    height: 74px;
    position: relative;
}

.ware_box {
    width: 521px;
    height: 74px;
    position: absolute;
    overflow: hidden;
    margin-top: 380px;
}

.ware_box ul {
    width: 30000px;
    border: 1px solid #333;
    position: absolute;
    top: 0;
    left: 0;
}

.ware_box li {
    width: 115px;
    height: 74px;
    overflow: hidden;
    float: left;
    cursor: pointer;
    margin-right: 15px;
    padding: 2px;
}
.ware_box li img{
width: 115px;
height: 74px;
}

.info {
    float: right;
    width: 630px;
    font-family: "微软雅黑";
    margin-top: -70px;
}

.info h1 {
    font-size: 18px;
    font-weight: normal;
    margin-bottom: 10px;
}
.info .pricepay {
    margin: 20px 0;
}

.info .price {
    font-size: 24px;
    color: #f00;
    margin-right: 10px;
}

s{
    text-decoration: line-through;
}

.info .wechatpay {
    display: inline-block;
    width: 115px;
    height: 30px;
    line-height: 30px;
    color: #12ca10;
    text-align: center;
    margin-left: 40px;
}

.health_guarantee {
    display: inline-block;
    margin-left: 40px;
    padding: 8px 0px 8px 40px;
    height: 48px;
    vertical-align: middle;
    background: url(${ctx}/images/yejia.png) 8px 8px no-repeat;
    font-size: 16px;
    font-weight: bold;
    color: #49ae46;
}

.health_guarantee span {
    padding: 2px 5px;
    color: #fff;
    font-size: 12px;
    font-weight: normal;
    background-color: #49ae46;
    -moz-border-radius: 10px;
    border-radius: 10px;
}

.info .attribute li {
    float: left;
    width: 123px;
    height: 62px;
    line-height: 31px;
    border-right: 1px solid #ccc;
    text-align: center;
}

.gray {
    color: gray;
}
ul {
    list-style: none;
}
.c{
	clear: both;
}

.info .store {
    width: 620px;
    height: 98px;
    margin: 10px auto;
}
.info .storeinfo p {
    margin: 9px 0;
}
.info .storeinfo {
    float: left;
    width: 470px;
    height: 98px;
    background-color: #f3f3f3;
}

.info .storename{
    padding-left: 50px;
    height: 30px;
    line-height: 30px;
    margin-bottom: 18px;
    background: url(${ctx}/images/redhouse.png) 10px 0px no-repeat;
}

.info .storename .number {
    margin-right: 20px;
    float: right;
}

.storename .red {
    color: red;
}

.info .address {
    padding-left: 50px;
    height: 30px;
    line-height: 30px;
    margin-bottom: 18px;
    background: url(${ctx}/images/huizhang.png) 10px 0px no-repeat;
}

.info .enter {
    float: left;
    width: 150px;
    background-color: #ffdfe0;
    text-align: center;
    height: 98px;
    line-height: 98px;
}

.info .delivery {
    margin: 20px 8px;
    float: left;
    width: 450px;
}

.info .nonlocal {
    display: inline-block;
    height: 20px;
    background: url(${ctx}/images/feiji.png) 0 0 no-repeat;
    padding-left: 30px;
}

.info .samecity {
    display: inline-block;
    height: 20px;
    background: url(${ctx}/images/car.png) 0 0px no-repeat;
    padding-left: 30px;
    margin: 0 40px;
}

.info .pick {
    display: inline-block;
    height: 20px;
    background: url(${ctx}/images/footying.png) 0 0px no-repeat;
    padding-left: 30px;
}

.info .wechatconsulting {
    float: left;
    position: relative;
}

.info .wechatconsulting a {
    display: block;
    font-size: 18px;
    width: 148px;
    height: 44px;
    line-height: 44px;
    color: #1ec622;
    border: 1px solid #1ec622;
    background: url(${ctx}/images/微信.png) no-repeat 10px center;
    background-color: #fff;
    text-align: center;
    padding-left: 10px;
}

.info .wechatconsulting a:hover{
		background: url(${ctx}/images/微信2.png) no-repeat 10px center;
	    background-color: #1ec622;
    color: #fff;
	
}

.info .buytel {
    margin: 30px auto;
}

.info .buytel em {
    display: inline-block;
    width: 160px;
    height: 48px;
    line-height: 50px;
    text-align: center;
    border: #31a905 1px solid;
    color: #198005;
    font-size: 20px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    vertical-align: middle;
    margin-right: 10px;
    font-style: normal;
    background: url("${ctx}/images/购物车.png")5px 9px no-repeat;
}

.info .buytel i{
	display: inline-block;
	width: 160px;
	height: 48px;
	line-height: 50px;
	text-align: center;
	
	color: #fff;
	background-color: #f00;
	border-radius: 5px;
	font-size: 20px;
	vertical-align: middle;
	font-style: normal;
}
.info .buytel span{
	display: inline-block;
	height: 50px;
	float: right;
	line-height: 50px;
	background: url("${ctx}/images/phone.png")15px 10px #3d3d3d no-repeat;	
	color: #ff2a2b;
	padding: 0 20px 0 60px;
	border-radius: 5px;
	vertical-align: middle;
	font-size: 20px;
}

.sharetofriend{
height: 28px;
}
.sharetofriend a{
	float: left;
	font-size: 12px;
	padding-left: 17px;
	line-height: 16px;
	height: 16px;
	background-repeat: no-repeat;
	cursor: pointer;
	margin: 6px 6px 6px 0;
	border-radius: 3px;
}
.sharetofriend a:hover{
opacity: .8;
}
.detail {
    width: 100%;
    background-color: #f6f6f4;
}

.detail .title{
	margin: 15px auto 0; 
	height: 38px;
	color: #fff;
	background:linear-gradient(to right,#fbfbfb,#05b564,#fbfbfb);
	text-align: center;
	padding: 7px;
}
</style>
</head>
<body>
<div class="header1">
	<div class="top">
		<div class="w1180">
			<span class="left">
			欢迎来到宠物店
			<a href="${ctx}/login.jsp" id="top4" title="登录" >登录</a>
			<a id="top5" class="hide">${name }您好！</a>
			<a id="top6" href="loginout2" class="hide">退出</a>
			<a href="reg.jsp" title="注册" id="top7">注册</a>
			
			
			</span>
			<span class="right">
			
			<a id="a_home" href="user/login" style="cursor: pointer;" title="我的宠物">我的宠物</a>
			</span>
		</div>
	</div>
			<div class="w1180 middle">
				<div class="mleft">
					<div class="logobg">
						<a class="logo" href="#">淘宠商城</a>
						<div class="line"><input type="text" style="height: 1px; width: 50px;border: 0px;"> 诚信担保  <input type="text" style="height: 1px; width: 50px;border: 0px;"></div>
					</div>
					
				</div>
				<div class="mright">
					<div class="search">
						<form action="search" method="post" style="width: 790px; height: 78px;">
							<p class="searchform">
								<input placeholder="请输入内容" type="text" autocomplete="off" name="title" id="txtsearch"/>
								<button type="submit" id="searchas">搜索</button>
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

    							<li> <a href="${ctx}/index.jsp" class="current " > 首页 </a> </li> 
    							<li> <a href="#"> 淘寵商城 </a> </li> 
    							<li> <a href="${ctx}/search.jsp"   > 挑选爱寵 </a> </li> 
    
    							<li> <a href="${ctx}/cwjs.jsp"    > 寵物介绍 </a> </li> 
   
    							<li> <a href="#" target="blank" > 学训宠 </a> </li> 
    							<li class="nv-right"> <a href="#"> 淘宠通 </a> </li>
   							</ul> 
  						</div>
					</div>
				</div>
				
				<div class="c"></div>
			
		</div>
		<div style="width: 100%;height: 5px; background: red;"></div>
</div>

<div class="w1180 breadcrumb">
	当前位置：<a href="${ctx}/index.jsp" title="淘宠首页">首页</a>
			>搜索结果>
			<a href="#">${details.petinfor}</a>
</div>

<div class="w1180">
	<div style="height: 74px;">
		<div class="big_pic">
			<a>
				<span class="jqzoom">
					<img alt="" src="${details.petimg}">
				</span>
			</a>
		</div>
		<div class="bottom_btn">
			<div class="ware_box">
				<ul>
					<li><img alt="" src="${details.petimg}"></li>
					
				</ul>
			</div>
		</div>
	</div>
	<div class="info">
		<h1>${details.petinfor}</h1>
		<div class="pricepay">
			<span class="price">￥${details.petprice}</span>	
			<s>￥0000</s>
			<a href="#" class="wechatpay">
				<img alt="" src="${ctx}/images/dbjy_03.jpg">
			</a>
			<span class="health_guarantee">
				健康保证：
				<span>15天</span>
			</span>
		</div>
		<ul class="attribute">
			<li>
				<p>品种</p>
				<p></p>
				<p class="gray">-----</p>
				<p></p>
			</li>
			<li>
        		<p>生日<p>
        		<p class="gray">2017-08-19<p>
      		</li>
      		<li>
        		<p>品级<p>
        		<p class="gray">
         			 血统级          <img id="cwtips" src="${ctx}/images/025.png" width="15px"/><p>
      		</li>
      		<li>
        		<p>疫苗<p>
        		<p class="gray">已打<p>
      		</li>
      		<li class="noborder">
        		<p>驱虫<p>
        		<p class="gray">已驱虫<p>
      		</li>
      			<div class="c"></div>
			
		</ul>
		<div class="store">
			<div class="storeinfo">
				<p class="storename">
					<span class="number gray">
						店铺销量
						<span class="red">0</span>
						&nbsp;&nbsp;|&nbsp;&nbsp;买家评价
						<span class="red">0</span>
					</span>
					${details.place}
				</p>
				<p class="address">000000000</p>
			</div>
			<div class="enter">
				<a href="#">进入店铺</a>
			</div>
		</div>
		<div class="delivery">
			配送方式：
      		<span class="nonlocal">
      			外地<span class="red">500元</span>
      		</span>
      		<span class="samecity">
      			同城<span class="red">100元</span>
      		</span>
      		<span class="pick">
      			自取<span class="red">0元</span>
      		</span>
		</div>
		<div 	class="wechatconsulting">
			<a href="#">微信咨询</a>
		</div>
		<div class="c"></div>
		<div class="buytel">
			<a href="user/buy">
					<em>
						
						<p style="margin-left: 30px;">加入购物车</p>
						
					</em>
			</a>
			<a href="user/buydirect">
				<i>立即购买</i>
			</a>
			<span>13699440439</span>
			<div class="c"></div>
		</div>
		
		<div class="sharetofriend">
			<a style="padding-left:0px; ">分享给小伙伴：</a>
			<a title="分享到qq空间" style="background-image: url('${ctx}/images/qq空间.png');"></a>
			<a title="分享到新浪微博" style="background: url('${ctx}/images/新浪微博.png') rgba(239, 199, 0, 0.61)"></a>
			<a title="分享到腾讯微博" style="background-image: url('${ctx}/images/腾讯微博.png');"></a>
			<a title="分享到人人网" style="background-image: url('${ctx}/images/人人网.png');"></a>
			<a title="分享到微信" style="background-image: url('${ctx}/images/微信3.png');"></a>
			<a style="background: url('${ctx}/images/加号.png') 1px #00a1ff no-repeat;"></a>
		</div>
		
	</div>
	<div class="c"></div>
</div>
<div class="detail">
	<div class="w1180">
		<div class="title"><p style="font-size: 16px; margin-top: 9px;background: url('${ctx}/images/骨头.png')400px no-repeat">宠物详情 PET DETAILS</p></div>
	</div>
</div>
<script type="text/javascript">
window.onload=function(){
	login3();
	
 }
 function login3(){

	var myName='${name}';
	var obj4 = document.getElementById("top4");
	var obj5 = document.getElementById("top5");
	var obj6 = document.getElementById("top6");
	var obj7 = document.getElementById("top7");
	
	if(myName!=""){
	
	obj4.setAttribute("class", "hide");
	obj7.setAttribute("class", "hide");
	obj6.removeAttribute("class","hide");
	obj5.removeAttribute("class","hide");
	}
	else{
	obj6.setAttribute("class", "hide");
	obj5.setAttribute("class", "hide");
	obj4.removeAttribute("class","hide");
	obj7.removeAttribute("class","hide");
	}
}




</script>
</body>
</html>