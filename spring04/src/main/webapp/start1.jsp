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
			console.log('이미지 추가 버튼 클릭됨.')
			$('.d1').append('<img src=resources/img/bear.jpg width=300 height=250>')
		}); //btn1 end.

		$('.btn2').click(function() {	// btn2을 클릭했을때 무명함수 실행.
			console.log('텍스트 추가 버튼 클릭됨.')
			$('.d1').append('<font color=green size=5>Hello World!!</font>')
		}); //btn2 end.
		
	}); //$ end.

</script>
</head>
<body>
	<input type="button" class="btn1" value="이미지 추가">
	<input type="button" class="btn2" value="텍스트 추가">

	<div class="d1"></div>

</body>
</html>