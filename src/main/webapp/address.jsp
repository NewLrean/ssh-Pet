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


.member .address {
    border: 1px solid #ddd;
}

.member .address h1 {
    border-bottom: 1px solid #ddd;
    font-weight: normal;
    font-size: 16px;
    padding: 10px;
}

.member .address h1 a {
    float: right;
}

.member .address .title {
    
    text-align: center;
}

.member .address .row {
    margin: 10px auto;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    border-bottom: 1px dashed #ddd;
}

.member .address .column0 {
    float: left;
    width: 40px;
    text-align: center;
}

.member .address .column1 {
    float: left;
    width: 140px;
    text-align: center;
}

.member .address .column2 {
    float: left;
    width: 240px;
}
.member .address .column3 {
    float: left;
    width: 300px;
}
.member .address .column4 {
    float: left;
    width: 100px;
    text-align: center;
}

.member .address .column5 {
    float: left;
    width: 100px;
    text-align: center;
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
			>收货地址
		</div>
					
	</div>
</div>
<div class="member">
	<div class="leftnav">
		<ul>
    <li ><a href="${ctx }/profile.jsp">个人信息</a></li>
    <li ><a href="${ctx }/safe.jsp">安全设置</a></li>
    <li class="hover"><a href="${ctx }/address.jsp">收货地址</a></li>
    <li ><a href="${ctx }/order.jsp">我的订单</a></li>
    <li><a href="${ctx }/cart.jsp">购物车</a></li>
      </ul>
	</div>
	
	
	
	<div class="rightcontent">
		
		<div class="address">
			<h1 >
				<span>收货地址</span>
				<a href="${ctx }/addadd.jsp">
					<span style="color: red;">+</span>
					添加地址
				</a>
				<div class="c"></div>
			</h1>
			<div class="row title" style="font-weight: bold;">
				<div class="column0">
					默认
				</div>
					
				<div class="column1">
					收货人
				</div>
					
				<div class="column2">
					地区
				</div>
				
				<div class="column3">
					详细地址
				</div>
				
				<div class="column4">
					手机号码
				</div>
				
				<div class="column5">
					操作
				</div>
				
				<div class="c"></div>
			</div>
			<c:forEach items="${addlist}" var="a" >
				<div class="row title">
				<div class="column0">
					${a.acquiescence}
				</div>
					
				<div class="column1">
					${a.consignee}
				</div>
					
				<div class="column2">
					${a.area}
				</div>
				
				<div class="column3">
					${a.detailed}
				</div>
				
				<div class="column4">
					${a.phone1}
				</div>
				
				<div class="column5">
					<a href="deleteadd?id=${a.id }" style="cursor: pointer;">删除</a>
				</div>
				
				<div class="c"></div>
			</div>
			</c:forEach>
		</div>
		
	</div>
	<div class="c"></div>
</div>

<script type="text/javascript">
window.onload=function(){
	login4();
	
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