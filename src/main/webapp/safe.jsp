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
dl, ol, ul {
    list-style: none;
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
    cursor: pointer;
}

a:hover{
	color: #f00;
}

.breadcrumb {
    margin: 30px auto 10px auto;
    float: left;
}


.hide{
	display: none;
}

.member {
    margin: 15px auto 40px;
    width: 1180px;
}

.member .leftnav {
    float: left;
    width: 145px;
    background-color: #f0f0f0;
}

.member .leftnav ul {
    padding: 0px 20px;
}

.member .leftnav ul li {
    text-align: center;
    height: 40px;
    line-height: 40px;
}

.member .leftnav a {
    padding: 0 5px 0 22px;
}

.member .leftnav a:hover{
	background:url("${ctx}/images/reddian.png") 0px 7px no-repeat;
    border-bottom: 1px solid #f00;
    color: #f00;
}

.member .hover a{
	background:url("${ctx}/images/reddian.png") 0px 7px no-repeat;
    border-bottom: 1px solid #f00;
    color: #f00;
}

.member .rightcontent {
    float: right;
    width: 990px;
    font-family: "微软雅黑";
}


div {
    display: block;
}

.member .profile{
    margin-bottom: 20px;
}

.member .profile .img{
    float: left;
    margin-right: 10px;
}
img {
    border: 0;
}

.member .profile .text {
    float: left;
}

.member .profile .text p {
    margin-bottom: 10px;
    color: #aaa;
}


.member .profile p {
    margin: 15px 0;
}

.member .profile .nickname {
    font-size: 18px;
    margin-right: 10px;
    color: #000;
    text-align: left;
}

.member .profile .verify a {
    margin-right: 10px;
    
    height: 32px;
    padding-left: 30px;
    line-height: 32px;
    }
    
.member .profile .text a {
    
    text-decoration: underline;
    margin: 0 5px;
}
    
.member .profile .verify a.done {
    background: url(${ctx}/images/手机1.png) 0 0 no-repeat;
    color: #33b382;
    font-size: 16px;
    background-size: 20px 20px;
}

.member .profile .verify a.nodone {
    background: url(${ctx}/images/手机2.png) 0 0 no-repeat;
    color: #33b382;
    font-size: 16px;
    background-size: 20px 20px;
}

.member .profile .verify a.you {
    background: url(${ctx}/images/邮箱1.png) 0 0 no-repeat;
    color: #33b382;
    font-size: 16px;
    background-size: 20px 20px;
}

.member .profile .verify a.noyou {
    background: url(${ctx}/images/邮箱2.png) 0 0 no-repeat;
    color: #33b382;
    font-size: 16px;
    background-size: 20px 20px;
}

.member .memberbox {
    margin: 15px 0;
}

.member .memberbox .title {
    border-top: 3px solid #ddd;
    font-size: 16px;
    padding: 10px 0;
}

.member .memberbox .title a {
    float: right;
    font-size: 14px;
    color: #aaa;
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
			<a title="挑选爱寵" href="${ctx}/search.jsp">挑选爱寵</a>
			
			<a title="爱宠介绍" href="#">爱宠介绍</a>
			<a title="淘宠通" href="#"> 淘宠通 </a>
			<a title="登录" href="${ctx}/login.jsp" id="top21">登录</a>/
			<a title="注册" href="${ctx}/reg.jsp" id="top22">注册</a>
			<a title="主页" href="${ctx}/user/login" id="top23" class="hide">我的淘宠></a>
			<a title="退出" href="${ctx}/loginout2" id="top24" class="hide">退出</a>
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
			<a href="${ctx }/home.jsp">用户中心</a>
			>安全设置
		</div>
					
	</div>
</div>
<div class="member">
	<div class="leftnav">
		<ul>
    <li ><a href="${ctx }/profile.jsp">个人信息</a></li>
    <li class="hover"><a href="${ctx }/safe.jsp">安全设置</a></li>
    <li ><a href="${ctx }/address.jsp">收货地址</a></li>
    <li ><a href="${ctx }/order.jsp">我的订单</a></li>
    <li><a href="${ctx }/cart.jsp">购物车</a></li>
      </ul>
	</div>
	<div class="rightcontent">
		<div class="profile">
			<div class="img">
				<img alt="头像" src="${ctx }/images/image-30.jpg" width="100" height="100" >
			</div>
			<div class="text">
				<p>
					<span class="nickname">${name}</span>你好
				</p>
				<p class="verify">
					<a class="done" id="yan1" href="${ctx }/safe.jsp">手机已验证</a>
					<a class="nodone hide" id="yan2" href="${ctx }/safe.jsp">手机未绑定</a>
					<a class="you" id="yan3" href="${ctx }/safe.jsp">邮箱已绑定</a>
					<a class="noyou hide" id="yan4" href="${ctx }/safe.jsp">邮箱未绑定</a>
				</p>
			</div>
			
			<div class="c"></div>
		</div>
</div>

<script type="text/javascript">
window.onload=function(){
	login4();
	yan();
 }
 function yan(){
	var myphone="${username.phone}";
	var myyou="${username.email}"
	
	var yan1 = document.getElementById("yan1");
	var yan2 = document.getElementById("yan2");
	var yan3 = document.getElementById("yan3");
	var yan4 = document.getElementById("yan4");
	
	if(myphone!=""){
		yan1.removeAttribute("class","hide");
		yan1.setAttribute("class", "done");
		yan2.setAttribute("class", "hide");
	}
	else{
		
		yan2.removeAttribute("class","hide");
		yan2.setAttribute("class","nodone");
		yan1.setAttribute("class", "hide");
	}
	
	if(myyou!=""){
		yan3.removeAttribute("class","hide");
		yan3.setAttribute("class","you");
		yan4.setAttribute("class", "hide");
	}else{
		yan4.removeAttribute("class","hide");
		yan4.setAttribute("class","noyou");
		yan3.setAttribute("class", "hide");
	}
} 
 
function login4(){

	var myName='${name}';
	var obj11 = document.getElementById("top21");
	var obj12 = document.getElementById("top22");
	var obj13 = document.getElementById("top23");
	var obj14 = document.getElementById("top24");
	
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