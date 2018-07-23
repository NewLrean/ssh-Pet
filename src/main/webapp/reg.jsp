<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/layer.css" id="layui_layer_skinlayercss"><!-- 在網上找的加氣泡提示 -->
<title>Insert title here</title>
<style type="text/css">
body {
    overflow: auto;
    margin: 0 auto;
    color: #000;
    font-size: 14px;
    font-family: "微软雅黑", "宋体", simsun, sans-serif;
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

.regbox {
    width: 1180px;
    margin: 40px auto;
    border: 2px solid #dfdfe1;
    background-color: #fff;
    font-family: "微软雅黑";
}


	.regtitle {
    margin: 20px 20px 40px 20px;
}

.regtitle span {
    color: #f00;
    font-size: 20px;
    font-weight: bold;
    margin-right: 10px;
}

form {
	margin: 0;
	padding: 0;
}

.regbox .form {
    margin: 20px auto;
    width: 720px;
    color: #666;
}
p {
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}
.regbox .form p{
	margin: 10px 0;
}

.regbox .form label {
    display: inline-block;
    width: 168px;
    text-align: right;
}

.regbox .form input {
    width: 290px;
    height: 38px;
    line-height: 38px;
    border: 1px solid #d2d2d2;
    margin: 0 10px;
    padding: 0 40px 0 10px;
}

.regbox .form span {
    display: inline-block;
    width: 150px;
    padding-left: 26px;
    background: url("http://localhost:8080/ssh-Pet/images/感叹号1.png")  no-repeat;
}

.regbox .form .agree {
    width: 20px;
    height: 20px;
    vertical-align: middle;
}

.regbox .line {
    border-top: 1px dashed #ccc;
    margin: 10px auto;
}

.regbox .regsubmit {
    margin: 20px auto 40px;
    display: block;
    width: 345px;
    height: 42px;
    line-height: 42px;
    text-align: center;
    background-color: #ededed;
    border: 1px solid #d7d7d7;
    cursor: pointer;
    font-size: 16px;
    moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    color: #cec5c0;
}

.regbox .regsubmit:hover{
color: #000;
}
.hide {
    display: none;
}
</style>
</head>
<body>
<div class="header">
	<div class="w1180">
		<div class="logo">
			<a href="index.jsp" title="淘宠">淘宠商城</a>
		</div>
		<div class="nav">
			<a title="首页" href="index.jsp">首页</a>|
			<a title="挑选爱寵" href="search.jsp">挑选爱寵</a>|
			<a title="学训宠" href="#">学训宠</a>|
			<a title="淘宠通" href="#"> 淘宠通 </a>
		</div>
		<div class="c"></div>
	</div>
	<div class="readline"></div>
</div>
<div class="regbox">
	<p class="regtitle">
		<span>
		淘宠网/淘宠商城注册
		</span>已有账号，请
	<a href="login.jsp" style="color: red;">登录</a>
	</p>
	<form id="form">
		<div class="form">
			<p>
				<label for="name">您的昵称/用户名</label>
				<input type="text" name="username" id="username">
				<span>请输入你的账号名称</span>
			</p>
			<p>
				<label for="name">请设置密码：</label>
				<input type="password" name="password" id="password">
				<span>请输入4-16位字符</span>
			</p>
			<p>
				<label for="name">请确认密码：</label>
				<input type="password" name="repassword" id="repassword">
				<span>请输入确认密码</span>
			</p>
			<p>
				<label for="name">手机号：</label>
				<input type="text" name="phone" id="phone">
				<span>请输入手机号(非必要)</span>
			</p>
			<p>
				<label for="name"></label>
				<input type="checkbox" id="agree" class="agree">我已阅读同意
				<a href="help.jsp" target="_blank" style="color: #f00">《用户使用协议》</a>
			</p>
		</div>
		<div class="line"></div>
		<span class="regsubmit">注册</span>
		<p class="hide">
			<button type="submit"></button>
		</p>
	</form>
</div>

<script type="text/javascript" src="${ctx}/jq/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/layer.js"></script><!-- 在網上找的加氣泡js -->
<script type="text/javascript" src="${ctx}/js/js.js"></script><!-- 在網上找的加氣泡提示 -->
<script type="text/javascript">
$(function(){


  $("#verifyimg").on('click',function(e){
    
  })
  
  $("#username").blur(function () {//鼠标离开输入框
  	var username = $("#username").val();
  	if(username.length<4||username.length>12){
      layer.tips('请输入4到12個字的名称', $("#username"));
      return;
    }
    else{
    	$.ajax({
                         type: "POST",
                         
                         url: "${ctx}/checkname",//检查用户名是否存在，为false存在，为success不存在；
                         data: $("#username").serialize(),//参数
                         dataType: "text",
                         success: function (data) {//如果成功，返回参数，回调函数
                             if (data == "false") {
                                 layer.tips('该用户已被注册', $("#username"));
                                 usernamePass = false;
                             } else if (data == "success") {
                                 layer.tips('该用户可以使用', $("#username"));
                                 usernamePass = true;
                             }
                         }
                         
                     });
    }
    
  })
  
 
  
  $("#password").blur(function () {//鼠标离开输入框
  	var password = $("#password").val();
  	
  	 if(password.length<4||password.length>16){
      layer.tips('请设置正確格式密码', $("#password"));
      return;
    }
  })
  
  $("#repassword").blur(function () {//鼠标离开输入框
  	var repassword = $("#repassword").val();
  	var password = $("#password").val();
  	 if(password != repassword){
      layer.tips('确认密码与密码不一致', $("#repassword"));
      return;
    }
  })
  
 
  $('.regsubmit').on('click',function(){
    var username = $("#username").val();
    var password = $("#password").val();
    var repassword = $("#repassword").val();
    var phone = $("#phone").val();
    var agree = $("#agree").is(':checked');
    if(username.length<4||username.length>12){
      layer.tips('请输入4到12個字的名称', $("#username"));
      return;
    }
    if(password.length<4||password.length>16){
      layer.tips('请设置正確格式密码', $("#password"));
      return;
    }
    
    if(password != repassword){
      layer.tips('确认密码与密码不一致', $("#repassword"));
      return;
    }
    if(phone.length>0&&!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){
      layer.tips('请输入正確手机号', $("#phone"));
      return;
    }
    if(!agree){
      layer.tips('请同意《用户使用协议》', $("#agree"));
      return;
    }

    $.ajax({
        url: "${ctx}/savePer",
        type: "POST",
        data: $("#form").serialize(),       
        dataType: "text",
           success:function(data){
           
	if(data=="true"){
		layer.tips('该用户可以使用', $("#username"));
		alert("注册成功，跳回主页！");
		window.location.href = "${ctx}/index.jsp";
	}
	else if(data=="false")
	{
		layer.tips('该用户已被注册', $("#username"));
	
	}
}
});

  })
})
</script>
</body>
</html>