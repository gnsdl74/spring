<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복한 쇼핑 - HappyShop</title>
<link href="resources/css/project.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- 전체 페이지 -->
	<div id="total">

		<!-- top메뉴 들어가는 부분 -->
		<div id="top">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>

		<!-- 장바구니 고정시킬 곳 -->
		<div id="top2">
			<jsp:include page="/top2.jsp"></jsp:include>
		</div>

		<!-- 게시판 내용 출력 -->
		<div align="center" id="content">
			<h3>게시판 전체 검색 결과입니다.</h3>
			<hr color="green">
			<table border="1">
				<tbody>
					<tr>
						<th width="100">아이디</th>
						<th width="150">제 목</th>
						<th width="300">내 용</th>
						<th width="100">작성자</th>
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.id }</td>
							<td><a href="select?id=${dto.id}">${dto.title}</a></td>
							<td>${dto.content }</td>
							<td>${dto.writer }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<br>
		<!-- 이전 페이지 이동 -->
		<div align="center">
			<form action="select">
				<input type="text" placeholder="아이디로 검색" name="id">
				<input type="submit" value="검색">
				<input type="button" value="처음 페이지" onclick="location.href='top.jsp'">
			</form>
			
		</div>

	</div>

</body>
</html>