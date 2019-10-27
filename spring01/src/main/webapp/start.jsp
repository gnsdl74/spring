<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	환영합니다. 스프링에 들어오셨습니다!!
	<br>
	<!-- a태그로 열결된 페이지는 클라이언트가 요청하게 하는 것. => click!을 통해 -->
	<!-- 클라이언트가 요청한 서버쪽에 있는 페이지는 브라우저에 꼭 표시가 된다. -->
	<!-- 클라이언트가 요청한  페이지는반드시 spring의 webapp밑에 있어야한다. -->
	<a href="food.jsp">내가 좋아하는 음식페이지</a><br>
	<a href="hobby.jsp">내가 좋아하는 취미페이지</a><br>
	<hr color="red">
	
	<form action="check.jsp">
		아이디 <input type="text" name="id"><br>
		패스워드 <input type="password" name="pw"><br>
		<input type="submit" value="서버로 전송">
	</form>
</body>
</html>