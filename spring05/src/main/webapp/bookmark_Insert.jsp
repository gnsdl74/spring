<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: yellow;">
	<h3>북마크 추가</h3>
	<hr color="red">
	<form action="insert">
		아이디 : <input type="text" name="id"><br> 
		이름 : <input type="text" name="name"><br>
		사이트 : <input type="text" name="site"><br>
		<input type="submit" value="서버로 전송">
	</form>
</body>
</html>