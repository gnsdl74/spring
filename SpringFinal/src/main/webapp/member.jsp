<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복한 쇼핑 - HappyShop</title>
<link href="resources/css/project.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div align="center" id="total">
		<!-- top메뉴 들어가는 부분 -->
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<!-- 장바구니 고정시킬 곳 -->
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>

		<div id="content">
			<form action="insert">
				<table>
					<tr>
						<td>아이디 :</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>패스워드 :</td>
						<td><input type="text" name="pw"></td>
					</tr>
					<tr>
						<td>이름 :</td>
						<td><input type="text"	name="name"></td>
					</tr>
					<tr>
						<td>전화 :</td>
						<td><input type="text" name="tel"></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit">회원 가입 처리</button></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="content">여기에 회원정보 들어감.</div>

	</div>



</body>
</html>