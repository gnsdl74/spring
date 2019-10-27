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
		$('.id').keyup(function() {	// 키보드의 작동이 멈출때마다 조건을 검사. keyup()
			
			var idValue = $('.id').val()

			if(idValue.length >= 5) {
				$('.d1').text('ID의 형식이 적절합니다.')
			} else {
				$('.d1').text('ID는 5글자 이상 입력해야 합니다.')
			} // else end.
		}); // keyup end.
	});	// $ end.
</script>
</head>
<body>
오늘은 3일차입니다.<br>
아이디 입력 : <input type="text" name="id" class="id" placeholder="ID"><br>

<div style="color:red;" class="d1"></div><br>	<%-- <div>text</div> 중간의 text --%>

<input type="button" value="입력값 체크" class="btn">
</body>
</html>