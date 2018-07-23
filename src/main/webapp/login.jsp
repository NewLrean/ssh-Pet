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

.login {
    position: relative;	
    height: 450.3px;
}

.bg{

float: left;
}

.login .bg img {
    display: block;
    width: 100%;
}

.login .form {
    position: absolute;
    right: 15%;
    top: 10%;
    width: 340px;
    height: 240px;
    padding: 70px 20px 20px 20px;
    background-color: #fff;
    border: 1px solid #aaa;
}

.login .form .title {
    float: left;
    width: 160px;
    margin-right: 10px;
    text-align: center;
    font-size: 16px;
    color: #fff;
    background: #51c332;
    padding: 10px 0;
    cursor: pointer;
    border-radius: 5px;
}

.login .form .active {
    color: #fff;
    background: #f04124;
}

.hide {
    display: none;
}


.p1{
	margin: 15px auto;
}

.p2{
	margin: 0px auto;
}

.login .input p .input{
height: 42px;
width: 340px;
}

.login .input input {
    width: 284px;
    height: 38px;
    padding-left: 48px;
    line-height: 38px;
    border: 1px solid #d7d7d7;
}

.login .username {
    background: url(${ctx}/images/addressbook_fill.png) no-repeat 5px center;
    
}

.login .password {
    background: url(${ctx}/images/lock_fill.png) no-repeat 5px center;
}

.right {
    float: right;
}

.login .autologin {
    width: 15px;
    height: 15px;
    vertical-align: middle;
}

.login .loginsubmit {
    display: block;
    margin: 0 auto;
    width: 336px;
    height: 42px;
    line-height: 42px;
    text-align: center;
    background: #008cba;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    border-radius: 10px;
}

button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em;
    font: 13.3333px Arial;
}

.login .yhdl {
    margin-top: -310px;
    font-size: 16px;
}

.login .yhdl a {
    float: right;
    margin-right: 10px;
    font-size: 14px;
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
			<a title="首页" href="${ctx}/index.jsp">首页</a>|
			<a title="挑选爱寵" href="${ctx}/buy.jsp">挑选爱寵</a>|
			<a title="学训宠" href="#">学训宠</a>|
			<a title="淘宠通" href="#"> 淘宠通 </a>
		</div>
		<div class="c"></div>
	</div>
	<div class="readline"></div>
	
</div>
<div class="login">
	<div class="bg">
		<img alt="login" src="${ctx}/images/image-13.jpg">
	</div>
	
	<div class="form">
		<div class="title active">用户名登录</div>
		<div class="title">手机号登录</div>
		<div class="c"></div>
	
	<form id="form0" >

	<p class="input p2">
		<input name="username" type="text" class="username" placeholder="用户名"/>
		<d id="d1">--------</d>		
	</p>
	<p class="input p2">
		<input name="password" type="password" class="password" placeholder="密码"/>
		<d id="d2">--------</d>
	</p>
	<p class="p1">
		<a href="#" class="right">忘记密码？</a>
		<input type="checkbox" value="1" class="autologin"/>自动登录
		
	</p>
	<p class="p1">
		<span class="loginsubmit">登 录</span>
		
	</p>
	<p class="hide p1">
		<button type="submit"></button>
	</p>
	</form>
	
	<form id="form1"  class="hide" method="post" action="#">
      <p class="input p2">
      <input name="username" class="username" type="text" value="" placeholder="手机号码" />
      <c id="c1">--------</c>
      </p>
      <p class="input p2">
      <input name="password" type="password"  class="password" value="" placeholder="用户密码" />
      <c id="c2">--------</c>
      </p>
      <p class="p1">
      <a href="#" class="right">忘记密码？</a>
      <input type="checkbox" value="1" class="autologin"/>自动登录
      </p>
      <p class="p1">
      <span class="loginsubmit">登 录</span>
      </p>
      <p class="hide p1">
      <button type="submit"></button>
      </p>
    </form>
    <div class="yhdl">
    	用户登录
    	<a href="reg.jsp">免费注册</a>
    </div>
	</div>
</div>

<button id="test"></button>



<script type="text/javascript" src="${ctx}/jq/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

$(function(){
  $('.title').on('click',function(){
    var id = $(this).index();
    $('.title').removeClass('active');
    $(this).addClass('active');
    $("form").addClass('hide');
    $("#form"+id).removeClass('hide');
  })

  $(".loginsubmit").on('click',function(){
    var obj = $(this).parent().parent();
    var username = obj.find("input[name='username']");
    var password = obj.find("input[name='password']");
    
    if(username.val()==''||password.val()==''){
      $(".input #d1").text('请输入正确用户名')
      $(".input #d1").css({color:"red"})
      $(".input #d2").text('请输入正确密码')
      $(".input #d2").css({color:"red"})
      return false;
    }
    else{
    	$(".input #d1").text('--------')
    	$(".input #d2").text('--------')
    }
    
     
     
     $.ajax({
        url: "${ctx}/loginper",
        type: "POST",
        data: $("#form0").serialize(),       
        dataType: "text",
           success:function(data){
	if(data=="true"){
		window.location.href = "${ctx}/home.jsp";
	}
	else if(data=="false")
	{
		$(".input #d1").text('用户名或密码有误')
      $(".input #d1").css({color:"red"})
      $(".input #d2").text('用户名或密码有误')
      $(".input #d2").css({color:"red"})
	}
}
});

  })

})

</script>

</body>
</html>