<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="insert2">
		아이디 <input type="text" name="id"><br>
		제목 <input type="text" name="title"><br>
		내용 <input type="text" name="content"><br>
		작성자 <input type="text" name="writer"><br>
		<input type="submit" value="서버로 전송">
	</form>
	<hr color="green">
	
	<form action="delete2">
		아이디 <input type="text" name="id"><br>
		<input type="submit" value="ID로 삭제">
	</form>
	<hr color="green">
	
	<form action="select2">
		아이디 <input type="text" name="id"><br>
		<input type="submit" value="ID로 검색">
	</form>
</body>
</html>