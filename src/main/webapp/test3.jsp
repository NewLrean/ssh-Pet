<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>全国城市三级联动</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <style>
        *{
            margin:0;
            padding:0;
        }
        body{
            background-color:#eee;
            font-family:"Microsoft YaHei";
        }
        .container{
            margin-top:100px;
        }
        .title{
            text-align:center;
            color:#990000;
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
   
        <div class="info">
            <select name="province" id="province">
                <option value="">省份</option>
            </select>
            <select name="city" id="city">
                <option value="">地级市</option>
            </select>
            <select name="districtAndCounty" id="districtAndCounty">
                <option value="">市、县级市</option>
            </select>
        </div>
    
    
    <script type="text/javascript" src="${ctx }/js/area.js"></script>
    <script>
        
    </script>
</body>
</html>