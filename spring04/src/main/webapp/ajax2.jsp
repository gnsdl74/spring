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
		$('.btn1').click(function() {
			// btn1을 클릭했을때 입력한 값을 가지고 온다.
			var contentValue = $('.reply').val()	// reply : class명
			var writerValue = $('.writer').val()
			
			$.ajax({
				url : "server.do",
				data : {
					content : contentValue,	// content : name명
					writer : writerValue
				}, //data end. (data는 Map형태로 이루어짐. key값과 value값)
				success : function(result) {
					alert("서버로 통신 성공!")
					$('.d1').append('<img src=resources/img/bear.jpg width=300 height=250>')
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
	<%-- DTO로 작성할 경우 name태그와 DTO변수의 이름이 같아야한다. 다르면 서버가 인식을 못해서 null로 처리됨. --%>
	내용 : <input type="text" class="reply" name="content"><br>
	작성자 : <input type="text" class="writer" name="writer">
	<!-- name은 서버가 알아보기위한 이름 -->
	<input type="button" class="btn1" value="댓글 달기">

	<div class="d1"></div>

</body>
</html>