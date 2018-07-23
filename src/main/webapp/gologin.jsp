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
.box{
	border: solid 3px #ccc;
	height: 450px;
	
}
</style>


<script>
var time=4;
var	timer=setInterval('tiaozhuan()',1000);
function tiaozhuan(){
var t= document.getElementById("id8");
if(time>0){
t.innerHTML=time;
time--;
}else {
clearInterval(timer);
location.href="${ctx}/login.jsp";
}
}
</script>
</head>
<body>
<div class="header">
	<div class="w1180">
		<div class="logo">
			<a href="${ctx}/index.jsp" title="淘宠">淘宠商城</a>
		</div>
		<div class="nav">
			<a title="首页" href="${ctx}/index.jsp">首页</a>|
			<a title="挑选爱寵" href="${ctx}/buy.jsp">挑选爱寵</a>|
			<a title="学训宠" href="#">学训宠</a>|
			<a title="淘宠通" href="#"> 淘宠通 </a>
		</div>
		<div class="c"></div>
	</div>
	<div class="readline"></div>
	
</div>
<div style="width: 100%;height: 15px;"></div>
<div class="box w1180">
	
	<h1 style="text-align: center;margin-top: 100px;">:(</h1>
	<p style="width: 100%;text-align: center;font-size: 20px;margin-top: 20px;"> 您还没进行登录</p>
	<p style="width: 100%;text-align: center;font-size: 15px;margin-top: 20px;">
	<font id="id8" size="6">5</font>秒钟后跳转登录或<a  href="${ctx}/login.jsp" style="color: #f00;font-size: 20px;">点击我直接跳转</a></p>
	
</div>

</body>
</html>