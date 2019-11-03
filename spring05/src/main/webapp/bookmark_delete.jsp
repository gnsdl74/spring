<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check() {
		var c = document.Check;
		var check = confirm("정말 삭제하시겠습니까?");
		if(check == 1) {
			c.submit();
		} else {
			return
		}
	}

</script>

<body style="background-color: yellow;">
	<h3>북마크 삭제</h3>
	<hr color="red">
	<form action="delete" name="Check">
		삭제할 아이디 : <input type="text" name="id"><br>
		<input type="button" onclick="check()" value="삭제">
	</form>
</body>
</html>