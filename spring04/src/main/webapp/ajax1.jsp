<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {	// body를 먼저 인식하고, 자바 스크립트합니다.
		$('.btn1').click(function() {	// btn1을 클릭했을때 무명함수 실행.
			$.ajax({
				url : "server.do",
				success : function(result) {
					alert("서버로 통신 성공!")
					$('.d1').append(result)
				} //success end.
			});
			// HttpRequest의 객체를 생성하고 네트워크를 연결해야함.
			// 위의 코드를 통해 복잡한 과정을 자동적으로 실행해줌. -> $.ajax
			// ajax end.
			
		}); //btn1 end.
	}); //$ end.

</script>
</head>
<body>
	<input type="text" class="reply" name="reply">
	<input type="button" class="btn1" value="댓글 달기">

	<div class="d1"></div>

</body>
</html>