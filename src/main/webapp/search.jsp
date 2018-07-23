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
body {
    overflow: auto;
    margin: 0 auto;
    color: #000;
    font-size: 14px;
    font-family: "微软雅黑", "宋体", simsun, sans-serif;
}

c{

font-size: 12px;
font-family: sans-serif;
height: 16px;
}

d{

font-size: 12px;
font-family: sans-serif;
height: 16px;
}

a {
    color: #010101;
    text-decoration: none;
}

img {
    border: 0;
}

.header{
width:100%;
height:67px;

}

.w1180 {
    width: 1180px;
    margin: 0 auto;
   
}

.logo{
float: left;
}

.header .logo a {
    display: block;
    width: 228px;
    height: 62px;
    line-height:62px;
    background:#f00;
    text-decoration: none;
    text-align: center;
    color: #fff;
    font-size: 40px;
    font-family:"方正舒体";
    font-weight: bold;
}

.header .nav {
    float: right;
    height: 62px;
    line-height: 80px;
    color: #ccc;
}

.header .nav a {
    margin: 0 10px 0 10px;
}

.header1 .nav a {
    padding: 0 10px;
    border-right: 1px solid #ccc;
    color: #999;
    text-decoration: none;
}
.header .nav a:hover{
	color: #f00;
}

.header1 .nav a.last {
    border: 0;
}

.c {
    clear: both;
}

.readline{
height: 5px;
background: #f00;
width: 100%;
}

.boxsea{
    background-color: #fff;
    	
}

.boxsea ul {
    width: 1216px;
}

.boxsea ul li {
    display: inline-block;
    width: 264px;
    border: #eee 1px solid;
    padding:5px;
    overflow: hidden;
    font-family: "微软雅黑";
    font-size: 12px;
    margin-left: 15px;
    margin-top: 15px;
    height: 298px;
}
.boxsea ul li:hover{
	border: #0f0 1px solid;
}

.boxsea ul li p {
    width: 266px;
    margin: 0;
    position: relative;
}
.boxsea .storename {
    height: 20px;
    line-height: 20px;
    padding-left: 25px;
    background: url(${ctx}/images/房子.png) no-repeat ;
    background-size: 20px 20px;
}

.position{
	width: 100%;
	height: 59px;
	margin-top:20px;
}


.bread_search{
	width: 1180px;
	height: 59px;
	
	    margin: 30px auto 10px auto;
}
a {
    color: #010101;
    text-decoration: none;
}

a:hover{
	color: #f00;
}

.breadcrumb {
    margin: 30px auto 10px auto;
    float: left;
}

.bread_search .search {
    float: right;
}


.search .searchform{
	width: 506px;
	height: 38px;
	line-height: 38px;
	
}

.search .searchform input{
	    width: 406px;
    height: 30px;
    line-height: 30px;
    border: 3px solid #f00;
    vertical-align: middle;
    
    padding-left: 5px;
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

.tips {
    width: 1180px;
    margin: 0 auto;
    font-size: 16px;
    padding: 10px 0;
    color: #333;
}

.tips span {
    color: #f00;
}

ul {
    list-style: none;
}


.hide{
	display: none;
}

.box1{
	
    margin: 20px auto;
	background: #fff;
	
	width: 1180px;
  	clear: both;
}

.box1 li {
    display: inline-block;
    width: 280px;
    line-height: 28px;
    font-size: 18px;
    font-family: "微软雅黑";
    border-right: #cccccc 1px solid;
    margin-top: 20px;
}

.box1 li img {
    float: left;
    margin: 0 20px;
}

.box1 li p {
    color: #737373;
}

p {
    margin: 0;
    padding: 0;
}

* {
    margin: 0;
    padding: 0;
}

.footer{
	display: block;
	width: 100%;
}

.box6 {
    background-color: #210000;
    color: #fff;
    padding: 40px 0;
    font-family: "微软雅黑";
}

.box6 .tel {
    float: left;
    width: 164px;
    height: 120px;
}

.box6 .tel p {
    margin: 5px 0 15px 0;
}

.box6 .phone {
    font-size: 16px;
    font-weight: bold;
    border-bottom: 1px dashed #ccc;
}

.box6 dl {
    float: left;
    width: 200px;
    height: 100px;
    border-right: 1px dashed #ccc;
    text-align: center;
    line-height: 26px;
}
.box6 dl dt {
    font-size: 18px;
    font-weight: 100;
}

.box6 dl dd {
    font-size: 12px;
}

.box6 a {
    color: #fff;
}

.box12 {
    background: #000;
    width: 100%;
    font-size: 12px;
    line-height: 20px;
}

.box12 ul {
    margin: auto;
    color: #aaa;
    padding: 10px 0;
}

.box12 ul p {
    margin: 10px auto;
}

.box12 ul p a {
    color: #FFF;
}
.box12 ul i {
    text-align: center;
    width: 100%;
    display: block;
}

.box12 ul i img {
    margin: 10px 10px;
}

.fixed {
    position: fixed;
    right: 20px;
    bottom: 20px;
    transition: none;
    text-align: center;
    background-color: #FFF;
}

.fixed a {
    display: block;
    width: 50px;
    height: 50px;
    text-align: center;
}

.fixed a:hover{
	background:#ff0;
}
.fixed a span {
    display: block;
    height: 20px;
    margin: -1px 8px 0;
    
}
</style>
</head>
<body>
	<div class="header">
	<div class="w1180">
		<div class="logo">
			<a href="${ctx}/index.jsp" title="淘宠">淘宠商城</a>
		</div>
		<div class="nav">
			<a title="首页" href="${ctx}/index.jsp">首页</a>
			<a title="挑选爱寵" href="#">挑选爱寵</a>
			
			<a title="爱宠介绍" href="#">爱宠介绍</a>
			<a title="淘宠通" href="#"> 淘宠通 </a>
			<a title="登录" href="${ctx}/login.jsp" id="top11">登录</a>/
			<a title="注册" href="${ctx}/reg.jsp" id="top12">注册</a>
			<a title="主页" href="user/login" id="top13" class="hide">我的淘宠></a>
			<a title="退出" href="loginout2" id="top14" class="hide">退出</a>
		</div>
		<div class="c"></div>
	</div>
	<div class="readline"></div>
	
</div>
<div class="position">
	<div class="bread_search" >
		<div class="breadcrumb">
			当前位置：<a href="${ctx}/index.jsp" title="淘宠首页">首页</a>
			>搜索结果>
			<a>${seatitle}</a>
		</div>
		<div class="search">
						<form action="search2" method="post" style="width: 506px; height: 38px;margin-top: -14px;">
							<p class="searchform">
								<input placeholder="请输入内容" type="text" autocomplete="off" name="title2" id="txtsearch"/>
								<button type="submit">搜索</button>
							</p>
						</form>
		</div>				
	</div>
</div>
<div class="tips">
已为您找到<span>${number}</span>个结果
</div>
<div class="boxsea">
	<div class="w1180">
		<ul>
		<c:forEach items="${petlist}" var="s" >
			<li>
			<p style="text-align: center;">
					<a href="details?id=${s.id}" title="官方担保  100%保健康 可以签订协议 疫苗齐全">
						<img alt="官方保障 出售纯种柴犬  高品质 包纯种健康" src="${s.petimg}" id="${s.id}" width="100%" height="200px">
					</a>
					</p>
					<p style="height: 30px; line-height: 30px;overflow: hidden;">
						<a href="#" style="color: #bbb; font-size: 14px;">${s.petinfor}</a>
					</p>
					<p style="color: #0e0;">
						￥${s.petprice}
					</p>
					
					<p >
						<img src="http://img.mall.dog126.com/Public/images/ind_03.jpg" alt="担保交易" style="    margin-right: 7px;width: 17px;height: 17px;">
						<img src="http://img.mall.dog126.com/Public/images/ind_05.jpg" alt="实名认证"style="    margin-right: 7px;width: 17px;height: 17px;">
						<img src="http://img.mall.dog126.com/Public/images/ind_07.jpg" alt="纯种保证"style="    margin-right: 7px;width: 17px;height: 17px;">
						<img src="http://img.mall.dog126.com/Public/images/ind_09.jpg" alt="健康保障" style="    margin-right: 7px;width: 17px;height: 17px;">
					
					</p>
					
					<p class="storename">
						<a href="/sasss?id=${s.id}">${s.place}</a>
						
					</p>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>

<div class="box1">
	
		<li>
		<img src="${ctx}/images/bz_05.jpg">
		<h4>购宠担保</h4>
		<p>全程护航 购物无忧</p>
		</li>
        <li>
        <img src="${ctx}/images/bz_07.jpg">
        <h4>购宠担保</h4>
        <p>全程护航 购物无忧</p>
        </li>
        <li>
        <img src="${ctx}/images/bz_09.jpg">
        <h4>购宠担保</h4>
        <p>全程护航 购物无忧</p>
        </li>
        <li style="border:0;">
        <img src="${ctx}/images/bz_12.jpg">
        <h4>购宠担保</h4>
        <p>全程护航 购物无忧</p>
        </li>
		<div style="clear: both;"></div>

</div>
<div class="footer"> 
	<div class="box6">
		<div class="w1180">
			<div class="tel">
				<p>全球免费服务热线</p>
				<p class="phone">
					<img  src="${ctx}/images/foot_05.jpg">
					&nbsp;&nbsp;027-6538-9586
				</p>
				<p>工作时间：9：00-21:00</p>
			</div>
			<dl>
				<dt>
					<a href="#" title="支付方式">支付方式</a>
				</dt>
				<dd>
					<a href="#" title="在线支付">在线支付</a>
				</dd>
				<dd>
					<a href="#" title="银行转账">银行转账</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#" title="配送方式">配送方式</a>
				</dt>
				<dd>
					<a href="#" title="外地">外地</a>
				</dd>
				<dd>
					<a href="#" title="同城">同城</a>
				</dd>
				<dd>
					<a href="#" title="自取">自取</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#" title="宠舍入住">宠舍入住</a>
				</dt>
				
				<dd>
					<a href="#" title="入住流程">入住流程</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#" title="交易保障">交易保障</a>
				</dt>
				<dd>
					<a href="#" title="担保交易">担保交易</a>
				</dd>
				
			</dl>
			<dl>
				<dt>
					<a href="#" title="关于我们">关于我们</a>
				</dt>
				
			</dl>
			
			<div class="c"></div>
		</div>
	</div>
	<div class="box12">
		<ul class="w1180">
			<p>
				<a href="#" title="恰维网络" >恰维网络</a>|
				<a href="#" title="派多格宠物" >派多格宠物</a>|
				<a href="#" title="宠物连锁店加盟" >宠物连锁店加盟</a>|
				<a href="#" title="开宠物店" >开宠物店</a>|
				<a href="#" title="淘狗网" >淘狗网</a>|
				<a href="#" title="开宠物店" >开宠物店</a>|
				<a href="#" title="派多格宠物" >派多格宠物</a>|
				<a href="#" title="广东宠物美容学校" >广东宠物美容学校</a>
			</p>
			<p>
				Copyright © 2013 - 淘狗网(dog126.com) - 京ICP备11011882号 网站建设：
				<a href="#" title="恰维网络" >恰维网络</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#" title="站长统计" >站长统计</a>
			</p>
			<i>
				<a href="#">
					<img src="${ctx}/images/db_09.jpg">
				</a>
				<a href="#">
					<img src="${ctx}/images/db_11.jpg">
				</a>
				<a href="#">
					<img src="${ctx}/images/db_13.jpg">
				</a>
				<a href="#">
					<img src="${ctx}/images/db_15.jpg">
				</a>
				<a href="#">
					<img src="${ctx}/images/db_17.jpg">
				</a>
				<a href="#">
					<img src="${ctx}/images/db_19.jpg">
				</a>
			</i>
		</ul>
	</div>
</div>
<div class="fixed">
	<a href="#" id="gotop">
		<span><b>^</b></span>
		<p>顶部</p>
	</a>
	<a href="#" style="line-height: 50px;">反馈</a>
</div>
<script type="text/javascript">
window.onload=function(){
	login2();
	
 }
 
function login2(){

	var myName='${name}';
	var obj11 = document.getElementById("top11");
	var obj12 = document.getElementById("top12");
	var obj13 = document.getElementById("top13");
	var obj14 = document.getElementById("top14");
	
	if(myName!=""){
	
	obj11.setAttribute("class", "hide");
	obj12.setAttribute("class", "hide");
	obj13.removeAttribute("class","hide");
	obj14.removeAttribute("class","hide");
	}
	else{
	obj13.setAttribute("class", "hide");
	obj14.setAttribute("class", "hide");
	obj11.removeAttribute("class","hide");
	obj12.removeAttribute("class","hide");
	}
}

</script>
</body>
</html>