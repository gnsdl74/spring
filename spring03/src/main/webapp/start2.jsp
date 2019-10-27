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
		//1. btn클래스의 버튼을 누르면,
		$('.btn').click(function() {
			//2. id, pw클래스의 값을 가지고 온다.
			var idValue = $('.id').val()
			var pwValue = $('.pw').val()
			//3. id, pw값 확인	
			console.log('id 확인 >> ' + idValue)
			console.log('pw 확인 >> ' + pwValue)
			console.log('id길이 >> ' + idValue.length)
			
			if(idValue.length >= 5) {
				if(pwValue.length >=5) {
					location.href="insert.do?id=" + idValue +
								  "&pw=" + pwValue;
				} else {
					$('.d2').text('PW는 5글자 이상 입력해야 합니다.')
				}
			} else {
				$('.d1').text('ID는 5글자 이상 입력해야 합니다.')	
				}
							  
			
			/* if(idValue.length >= 5) {
				location.href="insert.do?id=" + idValue +
							  "&pw=" + pwValue;
			} else {
				//alert('ID는 5글자 이상 입력해야 합니다.')
				$('.d1').text('ID는 5글자 이상 입력해야 합니다.')
			}
			
			if(pwValue.length >= 5) {
				location.href="insert.do?id=" + idValue +
							  "&pw=" + pwValue;
			} else {
				//alert('ID는 5글자 이상 입력해야 합니다.')
				$('.d2').text('PW는 5글자 이상 입력해야 합니다.')
			} */
			
		});
		
	});
	
</script>
</head>
<body>
<%-- input안의 데이터는 value, 태그와 태그사이에는 text로 사용 --%>
오늘은 3일차입니다.<br>
아이디 입력 : <input type="text" name="id" class="id" placeholder="ID"><br>

<div style="color:red;" class="d1"></div><br>	<%-- <div>text</div> 중간의 text --%>

패스워드 입력 : <input type="password" name="pw" class="pw" placeholder="Password"><br>

<div style="color:blue;" class="d2"></div><br>

<input type="button" value="입력값 체크" class="btn">
</body>
</html>