<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${dto2.id }로 검색한 결과입니다.<br>
비밀번호 : ${dto2.pw }
이름 : ${dto2.name }
전화번호 : ${dto2.tel }
<br>
<hr color="blue">
<img src="resources/img/vehicle.jpg">
<%-- 
<%= %>표현식(Expression) 변수값을 표현
--> ${} 표현언어(Expression Language: EL) 속성(Attribute)값을 표현 
--%> 
</body>
</html>