<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    cursor: pointer;
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
    line-height: 38px;
    text-align: center;
    background-color: #f00;
    color: #fff;
    font-size: 16px;
    vertical-align: middle;
    cursor: pointer;
    margin-left: -5px;
    border: none;
}
.hide{
	display: none;
}
.carlist {
    width: 1180px;
    margin: 0 auto;
    font-family: "微软雅黑";
}



.carlist ul {
    margin: 20px auto;
    border-top: 1px solid #efefef;
}
ul {
    list-style: none;
    padding:0px;
}
.carlist ul li {
    height: 76px;
    border-bottom: 1px solid #efefef;
    padding: 10px;
    
}

.carlist .img {
    float: left;
    width: 110px;
    height: 80px;
    text-align: center;
    line-height: 76px;
}

.carlist .img img {
    max-width: 100px;
    max-height: 70px;
    vertical-align: middle;
}
.carlist .goods {
    float: left;
    margin: 0 20px;
    width: 560px;
    height: 76px;
    line-height: 76px;
    overflow: hidden;
}

.carlist .price {
    float: left;
    width: 240px;
    text-align: center;
    line-height: 76px;
}

.carlist .num {
    float: left;
    width: 108px;
    
}

.carlist .num .input {
    float: left;
    margin-top: 24px;
}

.carlist .num input {
    margin: 0px 0 0 4px;
    border: 0;
    width: 80px;
    height: 26px;
    text-align: center;
    border: 1px solid #ccc;
}

.carlist .num .adjust {
    float: left;
    margin-top: 24px;
}

.carlist .num span {
    display: block;
    width: 20px;
    height: 12px;
    line-height:12px;
    cursor: pointer;
    text-align: center;
    border: 1px solid #ccc;
}

.carlist .del {
    float: right;
    height: 76px;
    line-height: 76px;
}

.carlist .del a {
    display: inline-block;
    width: 18px;
    height: 18px;
    background: url(${ctx}/images/垃圾桶.png) no-repeat;
    margin-top:29px;
}

.buy {
    margin: 10px auto 40px;
    width: 1180px;
}

.carlist .buy p {
    text-align: right;
    margin: 15px 0;
}

.carlist .buy .go a {
    display: inline-block;
    width: 144px;
    height: 44px;
    background: url(${ctx}/images/gouCar.png)20px 6px no-repeat #ccc;
    cursor: pointer;
}

.carlist .buy .go a:HOVER {
	background: url(${ctx}/images/gouCar.png)20px 6px no-repeat #bbb;
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
* {
    margin: 0;
    padding: 0;
}

.buy .title {
    
    text-align: center;
}

.buy .row {
    margin: 10px auto;
    height: 20px;
    line-height: 20px;
    padding: 0 10px;
    border-bottom: 1px dashed #ddd;
}

.buy .column0 {
    float: left;
    width: 40px;
    text-align: center;
    margin-top: 4px;
}

.buy .column1 {
    float: left;
    width: 130px;
    text-align: center;
}

.buy .column2 {
    float: left;
    width: 230px;
}
.buy .column3 {
    float: left;
    width: 300px;
}
.buy .column4 {
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
			<a >购物车</a>
		</div>
		<div class="search">
						<form action="${ctx}/search2" method="post" style="width: 506px; height: 38px;margin-top: -14px;">
							<p class="searchform">
								<input placeholder="请输入内容" type="text" autocomplete="off" name="title2" id="txtsearch"/>
								<button type="submit">搜索</button>
							</p>
						</form>
		</div>				
	</div>
</div>

<div class="carlist">
<h1 style="    font-size: 16px;
    margin: 15px auto;">
    加入订单
    </h1>
    <ul>
    	<li>
    		<div class="img">
    			<a>
    				<img alt="" src="${details.petimg}">
    			</a>
    		</div>
    		<div class="goods">
    			<a style="cursor: pointer;">${details.petinfor}</a>
    		</div>
    		<div class="price">
    			￥<span>${details.petprice}</span>
    		</div>
    		
    		<div class="num">
    			<div class="input">
    				<input class="number" id="num" name="num" value="1" type="text" readonly="readonly">
    			</div>
    		
    			<div class="adjust">
    				<span class="plus">+</span>
    				<span class="minus"><e>-</e></span>
    			</div>
    		</div>
    		
    		<div class="del">
    			
    		</div>
    		<div class="c"></div>
    	</li>
    </ul>
    <div class="buy">
    	<div	style="float:left; width: 900px;height: 100px;line-height: 100px;" id="noadd" class="hide">
    		<p style="text-align: center;font-size: 24px;color: #f00;font-weight: bolder;">你还没有可用的地址
    		<a href="${ctx}/address.jsp" style="text-decoration: none;font-size: 16px;">--去增加地址--</a>
    		</p>
    	</div>
    	<div style="width: 890px;float: left;border-right: 2px solid #ccc;" id="haveadd">
    	<p style="text-align: center;font-size: 20px;color: #0f0;font-weight: bold;margin: 0px;padding: 0px;">请选择送货地址
    	<a href="${ctx}/address.jsp" style="text-decoration: none;font-size: 16px;float: right;"><span style="color: red">- -</span>去增加新的地址<span style="color: red">- -</span></a></p>
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
    	</div>
    <div style="width: 280px;float: right;" class="go">
    	<p>
    		总金额：￥<span><input id="total" type="text" value="${details.petprice }" readonly="readonly"  style="width:100px; height:25px;     border: 0;"></span>运费(免运费)
    	</p>
    	<p>
    		<a id="buydirect"><span style="color: red;line-height: 44px;height: 44px;margin-right: 20px;">立即购买</span></a>
    	</p>
    	</div>
    	<div class="c"></div>
    </div>
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
					<a title="支付方式">支付方式</a>
				</dt>
				<dd>
					<a title="在线支付">在线支付</a>
				</dd>
				<dd>
					<a title="银行转账">银行转账</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a title="配送方式">配送方式</a>
				</dt>
				<dd>
					<a title="外地">外地</a>
				</dd>
				<dd>
					<a title="同城">同城</a>
				</dd>
				<dd>
					<a title="自取">自取</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a title="宠舍入住">宠舍入住</a>
				</dt>
				
				<dd>
					<a title="入住流程">入住流程</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a title="交易保障">交易保障</a>
				</dt>
				<dd>
					<a title="担保交易">担保交易</a>
				</dd>
				
			</dl>
			<dl>
				<dt>
					<a title="关于我们">关于我们</a>
				</dt>
				
			</dl>
			
			<div class="c"></div>
		</div>
	</div>
	<div class="box12">
		<ul class="w1180">
			<p>
				<a title="恰维网络" >恰维网络</a>|
				<a title="派多格宠物" >派多格宠物</a>|
				<a title="宠物连锁店加盟" >宠物连锁店加盟</a>|
				<a title="开宠物店" >开宠物店</a>|
				<a title="淘狗网" >淘狗网</a>|
				<a title="开宠物店" >开宠物店</a>|
				<a title="派多格宠物" >派多格宠物</a>|
				<a title="广东宠物美容学校" >广东宠物美容学校</a>
			</p>
			<p>
				Copyright © 2013 - 淘狗网(dog126.com) - 京ICP备11011882号 网站建设：
				<a title="恰维网络" >恰维网络</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a title="站长统计" >站长统计</a>
			</p>
			<i>
				<a>
					<img src="${ctx}/images/db_09.jpg">
				</a>
				<a>
					<img src="${ctx}/images/db_11.jpg">
				</a>
				<a>
					<img src="${ctx}/images/db_13.jpg">
				</a>
				<a>
					<img src="${ctx}/images/db_15.jpg">
				</a>
				<a>
					<img src="${ctx}/images/db_17.jpg">
				</a>
				<a>
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
<script type="text/javascript" src="${ctx}/jq/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

function address(){
	var address='${addlist}';
	var noadd=document.getElementById("noadd");
	var haveadd=document.getElementById("haveadd");
	if(address=="[]"){
		noadd.removeAttribute("class","hide");
		haveadd.setAttribute("class", "hide");
	}
	else{
		haveadd.removeAttribute("class","hide");
		noadd.setAttribute("class", "hide");
	}
}
address();


$(".plus").on('click',function(){
	
      var oldValue=parseInt($("#num").val()); //取出现在的值，并使用parseInt转为int类型数据  
      oldValue++;  //自加1  
      $("#num").val(oldValue);
      var Totalvalue=parseFloat($("#total").val());
      Totalvalue=parseFloat(${details.petprice}*oldValue).toFixed(1);
      $("#total").val(Totalvalue);
})

$(".minus").on('click',function(){
	
      var oldValue=parseInt($("#num").val()); //取出现在的值，并使用parseInt转为int类型数据  
      if(oldValue>1)
      oldValue--;  //自加1  
      $("#num").val(oldValue);
	var Totalvalue=parseFloat($("#total").val());
      Totalvalue=parseFloat(${details.petprice}*oldValue).toFixed(1);
      $("#total").val(Totalvalue);
})
	
	
 $("#buydirect").on('click',function(){
	var oldValue=parseInt($("#num").val());
	var Totalvalue=parseFloat($("#total").val());
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
        url: "${ctx}/fisorder",
        type: "GET",
        data:  {
        "id":${details.id},
        "nump":oldValue,
        "addressid":addressid
        
        },
        dataType: "text",
       success:function(data){
	if(data=="true"){
		window.location.href = "${ctx}/home.jsp";
	}
	else{
			alert("您还没有收货地址,请先绑定！")
			window.location.href = "${ctx}/address.jsp";
		}
	}
         })

})



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