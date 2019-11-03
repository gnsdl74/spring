<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:green;">
	<h2>전체검색결과입니다.</h2>
	<hr color="blue">
	<c:forEach var="result" items="${list }">
	아이디 : ${result.id }<br>
	비밀번호 : ${result.pw }<br>
	이름 : ${result.name }<br>
	전화번호 : ${result.tel }<br>
	<hr color="gray">
	</c:forEach>
	<h3>회원 전체가 검색되었습니다.</h3>
</body>
</html>