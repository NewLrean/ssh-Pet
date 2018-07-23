<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
     <%@ page import="java.util.Map" %> 
<%@ page import="java.util.HashMap" %> 
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



.member .memberbox {
    margin: 15px 0;
}

.member .memberbox .title {
    border-top: 3px solid #ddd;
    font-size: 16px;
    padding: 10px 0;
}

.member .memberbox .title a {
    
    font-size: 14px;
    color: #aaa;
}

.member .memberbox .title a:hover {
    
   
    color: #0f0;
}

.member .notice {
    line-height: 200px;
    text-align: center;
    border: 1px solid #ddd;
    width: 100%;
    color: #aaa;
}

.member .notice ul{
	border-top: 1px solid #efefef;
	width: 100%;
	padding: 0px;
	margin: 5px auto;
}

.member .notice ul li{
	height: 70px;
	border-top: 1px solid #efefef;
	
	padding: 5px 10px 5px 10px;
}

.member .notice ul li .img {
    float:left;
    width: 80px;
    height: 70px;
    text-align: center;
    line-height: 70px;
}

.member .notice ul li .img img{
	max-width: 65px;
    max-height: 65px;
    vertical-align: middle;
}

.member .notice ul li .goods{
	float: left;
	margin: 0 20px;
	width: 400px;
	height: 70px;
	line-height: 70px;
	overflow: hidden;
}

.member .notice ul li .price{
	float: left;
	width: 150px;
	text-align: center;
	height:70px;
	line-height: 70px;
}

.member .notice ul li .num{
	float: left;
	width: 108px;
}

.member .notice ul li .num .input{
	float: left;
	margin-top: 20px;
}

.member .notice ul li .num input{
	margin: 0px 0 0 4px;
	width: 60px;
	height: 26px;
	text-align: center;
	border: 1px solid #ccc;
}
	
.member .notice ul li .num .adjust{
	float: left;
	margin-top: 20px;
}

.member .notice ul li .num span{
	    display: block;
    width: 20px;
    height: 13px;
    line-height: 13px;
    cursor: pointer;
    text-align: center;
    border: 1px solid #ccc;
}

.member .notice ul li .price2{
	float: left;
	width: 150px;
	text-align: center;
	height:70px;
	line-height: 70px;
}

.member .notice ul li .price2 input{
	margin: 0px 0 0 2px;
	width: 85px;
	height: 26px;
	border: 0px;
	font-size: 16px;
}
.member .notice ul li .del{
	float: right;
	height: 70px;
	line-height: 70px;
	margin-right: 20px;
}

.member .notice ul li .del a{
display: inline-block;
    width: 18px;
    height: 18px;
    background: url(${ctx}/images/垃圾桶.png) no-repeat;
    margin-top:26px;
}

.member .alltotal{
	height: 44px;
	line-height: 44px;
}

.member .alltotal p{
padding: 0px;
margin: 0px;
}

.member .alltotal .showprice{
	float: right;
	font-size: 16px;
	color: #000;
}

.member .alltotal .showprice input{
	width: 100px;
	height: 30px;
	border: 0px;
	font-size: 16px;
}

.member .alltotal .gotobuy{
	float:right;
	text-align: right;
	
}

.member .alltotal .gotobuy a{
	font-size：15px;
	display: inline-block;
	width: 144px;
	height: 44px;
	cursor: pointer;
	background: url("${ctx}/images/gouCar.png")20px 6px no-repeat #bbb	;
} 

.member .alltotal .gotobuy a:HOVER {
	background: url("${ctx}/images/gouCar.png")20px 6px no-repeat #ccc ;
}

.member .notice .title {
    
    text-align: center;
}

.member .notice .row {
    margin: 10px auto;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    border-bottom: 1px dashed #ddd;
}

.member .notice .column0 {
    float: left;
    width: 40px;
    text-align: center;
    margin-top: 12px;
}

.member .notice .column1 {
    float: left;
    width: 140px;
    text-align: center;
}

.member .notice .column2 {
    float: left;
    width: 240px;
}
.member .notice .column3 {
    float: left;
    width: 300px;
}
.member .notice .column4 {
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
			>购物车
		</div>
					<div class="c"></div>
	</div>
</div>
<div class="member">
	<div class="leftnav">
		<ul>
    <li ><a href="${ctx }/profile.jsp">个人信息</a></li>
    <li ><a href="${ctx }/safe.jsp">安全设置</a></li>
    <li ><a href="${ctx }/address.jsp">收货地址</a></li>
    <li ><a href="${ctx }/order.jsp">我的订单</a></li>
    <li class="hover"><a href="${ctx }/cart.jsp">购物车</a></li>
      </ul>
	</div>
	
	<div class="rightcontent">
		
		<div class="memberbox">
			<div class="title">
				<a href="${ctx}/order.jsp" style="float: right;">查看全部订单>></a>
				我的购物车<a href="${ctx}/clearCar" style="margin-left: 20px;" id="clearcar">清空购物车</a>
      
			</div>
			<div class="notice" style="height: 200px;" id="kong">
				
        	您还没有购物品，先去<a href="${ctx}/search.jsp">逛逛</a>吧
			</div>
			
			<div class="notice" id="nokong">
			<c:forEach items="${cars}" var="mymap" >
				<ul>
					<li>
						<div class="img">
							<a>
								<img alt="" src="${mymap.key.petimg}">
							</a>
						</div>
						<div class="goods">
							<a style="cursor: pointer;">${mymap.key.petinfor}</a>
						</div>
						<div class="price">
							￥<span id="oneprice${mymap.key.id}">${mymap.key.petprice}</span>	
						</div>
						<div class="num">
							<div class="input">
							<input id="num${mymap.key.id}" value="${mymap.value}" type="text" readonly="readonly">
							</div>
							<div class="adjust">
								<span class="plus" onclick="plus(${mymap.key.id},${mymap.key.petprice}, 0)">+</span>
								<span class="minus" onclick="minus(${mymap.key.id},${mymap.key.petprice}, 0)">-</span>
							</div>
							
						</div>
						<div class="price2">
								￥<input id="total${mymap.key.id}" value="${mymap.key.petprice*mymap.value}" type="text" readonly="readonly">
							</div>
							<div class="del">
								<a href="clearpet?id=${mymap.key.id}"></a>
							</div>
							
					</li>
				</ul>
			</c:forEach>
			<c:forEach items="${addlist}" var="a" >
				<div class="row title">
				<div class="column0">
					<input name="xuanaddress" value="${a.id}" type="radio" id="${a.id}">
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
				
				
				
				<div class="c"></div>
			</div>
			</c:forEach>
								<div class="alltotal">
								<p class="gotobuy"><a>
									<span style=" color: red;line-height: 44px;height: 44px;margin-right: 25px;" id="cartbuy">立即付款</span>
									</a></p>
									<p class="showprice">总价：&nbsp;&nbsp;￥<input id="allprice" value="" readonly="readonly"></p>
									<div class="c"></div>
								</div>
							
			</div>
			
		</div>
	</div>
	<div class="c"></div>
</div>


<script type="text/javascript" src="${ctx}/jq/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

window.onload=function(){
	login4();
	order();

 }



 function order(){
	var order="${map}";
	var kong = document.getElementById("kong");
	var nokong = document.getElementById("nokong");
	var clearcar = document.getElementById("clearcar");
	var total=$("#allprice").val();
	if(!isNaN(total)&&order!="{}"){
		kong.setAttribute("class", "hide");
		nokong.removeAttribute("class","hide");
		nokong.setAttribute("class", "notice");
	}
	else{
		clearcar.setAttribute("class", "hide");
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


//$(".plus").on('click',function(){
	
      //var oldValue=parseInt($("#num").val()); //取出现在的值，并使用parseInt转为int类型数据  
      //oldValue++;  //自加1  
      //$("#num").val(oldValue);
      //settotal();
//})

function minus(id,price,type) {
		if(type==0){
      var oldValue=parseInt($("#num"+id).val()); //取出现在的值，并使用parseInt转为int类型数据  
      if(oldValue>1)
      oldValue--;  //自加1  
      $("#num"+id).val(oldValue);
		settotal(id,price);
		setalltotal();
		}
}


function plus(id,price,type) {
if(type == 0) {
	var oldValue=parseInt($("#num"+id).val());
	oldValue++;
	$("#num"+id).val(oldValue);
	settotal(id,price);
	setalltotal();
}
}




function settotal(id,price){
	var oldValue=parseInt($("#num"+id).val());
	$("#total"+id).val(parseFloat(price*oldValue).toFixed(1));
}


function setalltotal(){
	var allprice=""; 
	$("li div.price2 input").each(function(){
		allprice = parseFloat(allprice+parseFloat($(this).val()));
		
	})
	$("#allprice").val(parseFloat(allprice).toFixed(1));
}
setalltotal();


$("#cartbuy").on('click',function(){
	
	var addre=$('input:radio[name="xuanaddress"]:checked').val();
	var address='${addlist}';
	var addressid;
	var isAutoSend = document.getElementsByName('xuanaddress');
	for (var i = 0; i < isAutoSend.length; i++) {
                if (isAutoSend[i].checked == true) {
                    
                    addressid=parseInt(isAutoSend[i].value);
                }
            }
	if(address=="[]"){
		alert("你还未设定过地址，请先设置！");
		window.location.href = "${ctx}/address.jsp";
		return;
	}
	
	if(addre==null){
		alert("请先选择一个地址！");
		return;
	}
	
	$.ajax({
        url: "mapbuy",
        type: "GET",
        data:  {
        
        "addressid":addressid
        
        },
        dataType: "text",
       success:function(data){
	if(data=="true"){
		alert("已创建订单");
		window.location.href = "${ctx}/order.jsp";
	}
	else{
			alert("您还没有收货地址,请先绑定！")
			window.location.href = "${ctx}/address.jsp";
		}
	}
         })

})

</script>
</body>
</html>