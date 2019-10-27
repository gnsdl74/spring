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
			
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fwww.chosun.com%2Fsite%2Fdata%2Frss%2Fent.xml&api_key=gv3yleyty8yl193ihxtyfjqmalk7qygde5bzhyou",
				data : {
					url: "http://www.chosun.com/site/data/rss/ent.xml",
					api_key: "gv3yleyty8yl193ihxtyfjqmalk7qygde5bzhyou",
					count: 20
				},
				success : function(result) {
					alert("조선일보 사이트와 연결 성공!")
					alert(result)
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
	<input type="button" class="btn1" value="신문기사 긁어오기">

	<div class="d1"></div>

</body>
</html>