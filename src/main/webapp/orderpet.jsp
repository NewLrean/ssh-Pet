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
.titlead {
    color:#000;
    text-align: center;
}

.rowad {
    	
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    
}

.columna {
    float: left;
    width: 180px;
    text-align: center;
    border-right: 1px solid #aaa;
}

.columnb {
    float: left;
    width: 110px;
    text-align: center;
    border-right: 1px solid #aaa;
}

.columnc {
    float: left;
    width: 100px;
    text-align: center;
    border-right: 1px solid #aaa;
}
.columnd {
    float: left;
    width: 180px;
    text-align: center;
    border-right: 1px solid #aaa;
}
.columne {
    float: left;
    width: 160px;
    text-align: center;
    border-right: 1px solid #aaa;
   
}
</style>
</head>
<body>
<div class="rowad titlead" style="font-weight: bold;">
				<div class="columna">
					宠物名称
				</div>
					
				<div class="columnb">
					宠物价格
				</div>
					
				<div class="columnc">
					购买数量
				</div>
				
				<div class="columnd">
					下单时间
				</div>
				
				<div class="columne">
					单项总价
				</div>
				
				
				
				<div class="c"></div>
			</div>
			<c:forEach items="${opetList}" var="p" >
				
				<div class="rowad titlead" >
				<div class="columna">
					${p.petid}
				</div>
					
				<div class="columnb">
					${p.unitprice}
				</div>
					
				<div class="columnc">
					${p.amount}
				</div>
				
				<div class="columnd">
					${p.orderdate}
				</div>
				
				<div class="columne">
					${p.unitprice*p.amount}
				</div>
				
				
				<div class="c"></div>
			</div>
			
			</c:forEach>
</body>
</html>