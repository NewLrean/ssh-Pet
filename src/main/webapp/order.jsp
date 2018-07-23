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

.member .leftna {
   
    width: 145px;
    background-color: #f0f0f0;
}

.member .leftna ul {
    padding: 0px 20px;
}

.member .leftna ul li {
    text-align: center;
    height: 40px;
    line-height: 40px;
}

.member .leftna a {
    padding: 0 5px 0 22px;
}

.member .leftna a:hover{
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
    margin-top: -210px;
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
    margin: 0px 0;
}

.member .memberbox .title {
    border-bottom: 2px solid #ddd;
    font-size: 16px;
    padding: 10px 0;
}

.member .memberbox .title a {
    
    font-size: 14px;
    
}

.member .notice {
   
    text-align: center;
    border: 2px solid #aaa;
    width: 100%;
    
    color: #bbb;
}

.member .order {
    
}


.member .order .title {
    color:#000;
    text-align: center;
}

.member .order .title:hover{
	background: #ddd;
}


.member .order .row {
    margin: 10px auto;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    
}

.member .order .column0 {
    float: left;
    width: 75px;
    text-align: center;
}

.member .order .column1 {
    float: left;
    width: 110px;
    text-align: center;
}

.member .order .column2 {
    float: left;
    width: 270px;
}
.member .order .column3 {
    float: left;
    width: 140px;
    text-align: center;
}
.member .order .column4 {
    float: left;
    width: 140px;
    text-align: center;
   
}

.member .order .column5 {
    float:left;
    width:150px;
    overflow:hidden;
    text-align: center;
}

.member .order .column6 {
    
    
    overflow:hidden;
    text-align: center;
}

.member .order .orda{
	cursor: pointer;
	
} 

.titlead {
    color:#000;
    text-align: center;
}

.rowad {
    margin: 10px auto;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    
}

.columna {
    float: left;
    width: 75px;
    text-align: center;
}

.columnb {
    float: left;
    width: 110px;
    text-align: center;
}

.columnc {
    float: left;
    width: 270px;
}
.columnd {
    float: left;
    width: 140px;
    text-align: center;
}
.columne {
    float: left;
    width: 140px;
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
			>我的订单
		</div>
					
	</div>
</div>
<div class="member">
	<div class="leftna">
		<ul>
    <li ><a href="${ctx }/profile.jsp">个人信息</a></li>
    <li ><a href="${ctx }/safe.jsp">安全设置</a></li>
    <li ><a href="${ctx }/address.jsp">收货地址</a></li>
    <li class="hover"><a href="${ctx }/order.jsp">我的订单</a></li>
    <li><a href="${ctx }/cart.jsp">购物车</a></li>
      </ul>
	</div>
	<div class="rightcontent">
	<div class="memberbox">
			<div class="title">
				<a href="${ctx}/order.jsp"></a>
				所有的订单
      
			</div>
			<div class="notice" style="height: 200px;line-height: 200px;" id="kong">
				
        	您还没有未完成订单，先去<a href="${ctx}/search.jsp">逛逛</a>吧
			</div>
			
			<div class="notice" id="nokong">
				
        	<div class="order">
			
			<div class="row title" style="font-weight: bold;">
				<div class="column0">
					订单号
				</div>
					
				<div class="column1">
					收货人
				</div>
					
				<div class="column2">
					地址
				</div>
				
				<div class="column3">
					电话
				</div>
				
				<div class="column4">
					下单时间
				</div>
				
				<div class="column5">
					下单金额
				</div>
				
				<div class="column6">
					删除订单
				</div>
				<div class="c"></div>
			</div>
			<c:forEach items="${orderlist}" var="o" >
				<a class="orda" href="${ctx }/orderpetinf?orderid=${o.order_id}" target="_blank">
				<div class="row title" >
				<div class="column0">
					${o.order_id}
				</div>
					
				<div class="column1">
					${o.name}
				</div>
					
				<div class="column2">
					${o.address}
				</div>
				
				<div class="column3">
					${o.phone}
				</div>
				
				<div class="column4" style=" font-size: 13px;">
					${o.time}
				</div>
				
				<div class="column5">
					${o.totalPrice}
				</div>
				<div class="column6">
					<a href="" style="cursor: pointer;text-align: center;color: #000;width: 100%;">删除</a>
				</div>
				<div class="c"></div>
			</div>
			</a>
			</c:forEach>
		</div>
			</div>
		</div>
	</div>
	<div class="c"></div>
</div>




<script type="text/javascript">
window.onload=function(){
	login4();
	order();
 }
 
 function order(){
	var order="${orderlist}";
	var kong = document.getElementById("kong");
	var nokong = document.getElementById("nokong");
	
	if(order!="[]"){
		kong.setAttribute("class", "hide");
		nokong.removeAttribute("class","hide");
		nokong.setAttribute("class", "notice");
	}
	else{
		nokong.setAttribute("class", "hide");
		kong.removeAttribute("class","hide");
		kong.setAttribute("class", "notice");
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