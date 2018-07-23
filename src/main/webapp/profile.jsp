<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/layer.css" id="layui_layer_skinlayercss"><!-- 在網上找的加氣泡提示 -->
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


.member .profile p {
    margin: 15px 0;
}

.member .profile p span {
    display: inline-block;
    width: 100px;
    text-align: right;
    margin-right: 10px;
    
}

.member .profile .input {
    border: #ddd 1px solid;
    height: 38px;
    line-height: 38px;
    padding: 0 5px;
    width: 200px;
}

.member .profile .regsubmit {
    
    display:inline-block;
    margin-left:116px;
    width: 90px;
    height: 42px;
    line-height: 42px;
    text-align: center;
    background-color: #f00;
    border: 1px solid #d7d7d7;
    cursor: pointer;
    font-size: 15px;
    moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    color: 000;
}

.member .profile .regsubmit:hover{
color: #cec5c0;
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
			>个人信息
		</div>
					
	</div>
</div>
<div class="member">
	<div class="leftnav">
		<ul>
    <li class="hover"><a href="${ctx }/profile.jsp">个人信息</a></li>
    <li ><a href="${ctx }/safe.jsp">安全设置</a></li>
    <li ><a href="${ctx }/address.jsp">收货地址</a></li>
    <li ><a href="${ctx }/order.jsp">我的订单</a></li>
    <li><a href="${ctx }/cart.jsp">购物车</a></li>
      </ul>
	</div>
	<div class="rightcontent">
		<div class="profile">
		<form id="formad">
		<p >
			<span style="vertical-align: top;">头像：</span>
			
				<img alt="头像" src="${ctx }/images/image-30.jpg" width="100" height="100" name="personimg" id="personimg">
			
		</p>
		<p>
			<span>登录账户名：</span>
			${name}
		</p>
		<p>
			<span>真实姓名：</span>
			<input class="input" value="${username.realname }" type="text" name="realname" id="realname">
		</p>
		<p>
			<span>性别：</span>
			<label style="cursor: default;">
				<input name="sex" type="radio" value="0" checked="checked">
				男
				<label style="cursor: default;">
					<input name="sex" type="radio" value="1">
				女
				</label>
			</label>
		</p>
		<p>
			<span>生日：</span>
			<input class="input" type="text" value="${username.birth}" name="birth" id="birth">
		</p>
		<p>
			<span>手机号：</span>
			<input class="input" id="phone" type="text" value="${username.phone }" readonly="readonly" style="border: 0px;">
			<a href="safe.jsp" id="b1" style="cursor: pointer;direction: inherit;font-size: 14px; color: #06a4e1;" >修改</a>
			<b id="b2">还未绑定手机
			<a href="safe.jsp"  style="cursor: pointer;direction: inherit;font-size: 16px; color: #06a4e1;" >马上绑定</a>
			</b>
		</p>
		<p>
			<span>邮箱：</span>
			<input class="input" id="email" type="text" value="${username.email }" readonly="readonly" style="border: 0px;">
			<a href="safe.jsp" id="a1" style="cursor: pointer;direction: inherit;font-size: 15px; color: #06a4e1;" >修改</a>
			<b id="a2">还未绑定邮箱
			<a href="safe.jsp"  style="cursor: pointer;direction: inherit;font-size: 16px; color: #06a4e1;" >马上绑定</a>
			</b>
		</p>
			<div class="c"></div>
			
			<span class="regsubmit">保存</span>
		<p class="hide">
			<button type="submit"></button>
		</p>
			</form>
		</div>
</div>
	<div class="c"></div>
</div>
<script type="text/javascript" src="${ctx}/jq/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/layer.js"></script><!-- 在網上找的加氣泡js -->
<script type="text/javascript" src="${ctx}/js/js.js"></script><!-- 在網上找的加氣泡提示 -->
<script type="text/javascript">
window.onload=function(){
	login4();
	
 }
 
function login4(){
	var isAutoSend = document.getElementsByName('sex');
	var sex="${username.sex}";
	var myName='${name}';
	var obj11 = document.getElementById("top21");
	var obj12 = document.getElementById("top22");
	var obj13 = document.getElementById("top23");
	var obj14 = document.getElementById("top24");
	var obbirth = document.getElementById("email");
	var obphone = document.getElementById("phone");
	var a1=document.getElementById("a1");
	var a2=document.getElementById("a2");
	var b1=document.getElementById("b1");
	var b2=document.getElementById("b2");
	var birth = $("#birth").val();
	var email = $("#email").val();
	var phone = $("#phone").val();
	$(":radio[name='sex'][value='" + sex + "']").prop("checked", "checked");
	if(birth==""){
		$("#birth").val("1970-01-01");
	}
	if(phone==""){
		obphone.setAttribute("class", "hide");
		b1.setAttribute("class", "hide");
		b2.removeAttribute("class","hide");
	}
	else{
		b2.setAttribute("class", "hide");
		obphone.removeAttribute("class","hide");
		b1.removeAttribute("class","hide");
	}
	if(email==""){
		obbirth.setAttribute("class", "hide");
		a1.setAttribute("class", "hide");
		a2.removeAttribute("class","hide");
	}
	else{
		a2.setAttribute("class", "hide");
		obbirth.removeAttribute("class","hide");
		a1.removeAttribute("class","hide");
	}
	
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

$('.regsubmit').on('click',function(){
   	var sex=$('input:radio[name="sex"]:checked').val();
   	var realname=$("#realname").val();
   	var birth=$("#birth").val();
    var time = $("#birth").val();
    var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
	var regExp = new RegExp(reg);
    if(!regExp.test(time)){
      layer.tips('请输入正确日期，如：1970-01-01', $("#birth"));
      return;
    }
    

    $.ajax({
        url: "${ctx}/updatePer",
        type: "POST",
        data: {
        	"realname" :realname,
        	"birth":birth,
        	"sex":sex
        },       
        dataType: "text",
           success:function(data){
           
	if(data=="true"){
		
		alert("修改成功，跳回主页！");
		window.location.href = "${ctx}/profile.jsp";
	}
	else if(data=="false")
	{
		alert("修改失败");
	
	}
}
});

  })
</script>
</body>
</html>