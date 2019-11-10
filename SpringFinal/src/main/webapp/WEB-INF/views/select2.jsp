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
			<h3>아이디로 검색 결과입니다.</h3>
			<hr color="green">
			<table border="1">
				<tbody>
					<tr>
						<td>아이디</td>
						<td>${dto.id }</td>
					</tr>
					<tr>
						<td>제 목</td>
						<td>${dto.title }</td>
					</tr>
					<tr>
						<td>내 용</td>
						<td>${dto.content }</td>
					</tr>
					<tr>
						<td>가 격</td>
						<td>${dto.price }</td>
					</tr>
					<tr>
						<td>대표이미지</td>
						<td><img src="resources/img/${dto.img }"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br>
		<!-- 이전 페이지 이동 -->
		<div align="center">
			<input type="button" value="제품정보 게시판" onclick="location.href='selectAll2'">
		</div>

		<hr color="red">
		<!-- 제품 후기 -->
		<div id="result">
			<h4 align="center">제품 후기</h4>
			<c:forEach items="${list}" var="dto2">
			작성자 : ${dto2.writer}, 한줄평 : ${dto2.content}<br>
			</c:forEach>
		</div>



	</div>

</body>
</html>