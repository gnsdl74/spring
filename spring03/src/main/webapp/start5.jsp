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
		$('.fruit').keyup(function() {
			var correct = 'apple'
			
			var fruitValue = $('.fruit').val()

			if(fruitValue == correct ) {
				$('.d1').text('올바르게 입력하셨습니다.')
			} else {
				$('.d1').text('정확하지 않은 입력입니다.')
			} // else end.
		}); // keyup end.
	});	// $ end.
</script>
</head>
<body>
오늘은 3일차입니다.<br>
과일명 입력 : <input type="text" name="id" class="fruit" placeholder="Fruit"><br>

<div style="color:red;" class="d1"></div><br>	<%-- <div>text</div> 중간의 text --%>

<input type="button" value="입력값 체크" class="btn">
</body>
</html>