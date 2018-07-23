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
    margin: 5px 0px 0px 20px;
    width: 200px;
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

.regbox .form .acquiescence {
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

.info{
            text-align:center;
            margin-top:20px;
        }
        select{
            border:1px solid #993300;
        }
        #province,#city{
            margin-right:10px;
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
		淘宠网/添加地址
		</span>
	</p>
	<form id="form">
		<div class="form">
			<p>
				<label for="name">*收货人</label>
				<input type="text" name="consignee" id="consignee">
				
			</p>
			<p>
				<label for="name">*地区</label>
			
            <select name="province" id="province" style="height: 38px; margin-left: 10px;border-radius: 4px;">
                <option value="0">省份</option>
            </select>
            <select name="city" id="city" style="height: 38px;border-radius: 4px;">
                <option value="0">地级市</option>
            </select>
            <select name="districtAndCounty" id="districtAndCounty" style="height: 38px;border-radius: 4px;">
                <option value="0">市、县级市</option>
            </select>
    			
			</p>
			<p>
				<label for="name">*详细地址</label>
				<input type="text" name="detailed" id="detailed">
				
			</p>
			<p>
				<label for="name">*手机号</label>
				<input type="text" name="phone1" id="phone1">
				
			</p>
			<p>
				<label for="name"></label>
				<input type="checkbox" id="acquiescence" class="acquiescence">设定为默认
			</p>
		</div>
		<div class="line"></div>
		<span class="regsubmit">添加</span>
		<p class="hide">
			<button type="submit"></button>
		</p>
	</form>
</div>


<script src="${ctx }/jq/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/js/area.js"></script>

<script type="text/javascript" src="${ctx}/js/layer.js"></script><!-- 在網上找的加氣泡js -->
<script type="text/javascript" src="${ctx}/js/js.js"></script><!-- 在網上找的加氣泡提示 -->
<script type="text/javascript">
$('.regsubmit').on('click',function(){
    var consignee = $("#consignee").val();
    
    var detailed = $("#detailed").val();
    var phone1 = $("#phone1").val();
    var acquiescence = $("#acquiescence").is(':checked'); 
    var area=$("#province option:checked").text()+$("#city option:checked").text()+$("#districtAndCounty option:checked").text();
    var moren=0;
    if(consignee.length<2||consignee.length>8){
      layer.tips('请输入正确收货人的名称', $("#consignee"));
      return;
    }
    
    if($("#province option:checked").text()=="省份"||$("#city option:checked").text()=="地级市"||$("#districtAndCounty option:checked").text()=="市、县级市"){
    	layer.tips('请选入地址',$("#districtAndCounty"));
    	return;
    	}
    	
    if(detailed==""){
      layer.tips('请输入正確详址', $("#detailed"));
      return;
    }
    
    if(phone1.length<0||!(/^1(3|4|5|7|8)\d{9}$/.test(phone1))){
      layer.tips('请输入正確手机号', $("#phone1"));
      return;
    }
   
   if(!acquiescence){
   	moren=0;
   }
   else{
   	moren=1;
   	
   }

     $.ajax({
        url: "${ctx}/address",
        type: "POST",
        data: {
        	"consignee": consignee,
        	"area": area,
        	"detailed":detailed,
        	"phone1":phone1,
        	"acquiescence":moren
        },        
        dataType: "text",
        success: function(data){
			if(data=="true"){
				alert("添加成功");
				window.location.href = "${ctx}/address.jsp";
	}
	else{
			window.location.href = "${ctx}/addadd.jsp";
		}
	
}
}); 

  })
</script>
</body>
</html>