<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="insert">
		아이디 <input type="text" name="id"><br>
		패스워드 <input type="password" name="pw"><br>
		이름 <input type="text" name="name"><br>
		전화번호 <input type="text" name="tel"><br>
		<input type="submit" value="서버로 전송">
	</form>
	<hr color="green">
	
	<form action="select">
		아이디 <input type="text" name="id"><br>
		<input type="submit" value="ID로 검색">
	</form>
	<hr color="green">
	
	<form action="delete">
		아이디 <input type="text" name="id"><br>
		<input type="submit" value="ID로 삭제">
	</form>
</body>
</html>