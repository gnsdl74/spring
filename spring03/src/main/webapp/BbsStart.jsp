<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {

		$('.btn').click(function() {

			var titleValue = $('.title').val()
			var contentValue = $('.content').val()
			var writerValue = $('.writer').val()
			// $() 안의 값에는 ''나 ""를 붙인다.

			if(titleValue.length >= 5) {
				location.href="insert2.do?title=" + titleValue +
				  "&content=" + contentValue +
				  "&writer=" + writerValue;
			} else {
				alert('제목의 길이를 5자 이상으로 작성하세요.')
			}
		});
	});
</script>

</head>
<body>
제목 <input type="text" name="title" class="title"><br>
내용 <input type="text" name="content" class="content"><br>
작성자 <input type="text" name="writer" class="writer"><br>
<input type="button" value="가입" class="btn">
</body>
</html>