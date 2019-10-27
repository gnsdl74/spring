<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- 외부 스타일시트 방식(resources의 css폴더에서 연결) / 내부방식은 직접 head에 style태그로 정의 --%>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	//jquery를 이용한다.
	//body를 먼저 읽고 자바스크립트를 실행한다.
	$(function() {
		//input에 입력한 데이터를 가지고 온다.
		/* var inputValue = $('input').val()	//모든 변수를 var형태로 받기때문에 코드작성시 생략가능.
		alert('입력되어있는 값은 :' + inputValue) */
		
		var idValue = $('#id').val()
		// id는 '#'을 앞에 붙여서 사용.
		alert('입력되어있는 id : ' + idValue)
		
		var pwValue = $('#pw').val()
		alert('입력되어있는 pw : ' + pwValue)
		
		//var classValue = $('.in')
		// class는 '.'을 앞에 붙여서 사용.
		
		// css에서도 위의 '#', '.' 사용가능.
	});
	
</script>
</head>
<body>
오늘은 3일차입니다.<br>
<%-- name은 서버에서 인식하기 위한 이름, id는 자바스크립트에서 사용하기 위한 이름 --%>
아이디 입력 : <input type="text" name="id" value="root" id="id" class="in"><br>
패스워드 입력 : <input type="text" name="pw" value="1234" id="pw" class="in"><br>
</body>
</html>