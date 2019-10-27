<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		// insert.jsp에서 넘어온 값 처리
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		
		//1.Driver 설정
		Class.forName("com.mysql.jdbc.Driver");	// Driver 클래스 호출
		out.print("1. Driver 설정!<br>");
		
		//2.DB연결
		String url = "jdbc:mysql://localhost:3307/spring";	//url
		String user = "root";	// id
		String password = "1234";	// pw
		Connection con = DriverManager.getConnection(url, user, password);	// Connection 객체생성
		out.print("2. DB연결 성공!<br>");
		
		//3.SQL결정
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pw);
		ps.setString(3, name);
		ps.setString(4, tel);
		
		int result = ps.executeUpdate();
		
		if(result == 1) {
		out.print("3. SQL문 결정 성공!<br>");
		} else {
			out.print("3. SQL문 결정 실패..<br>");
		}
		
		//4.SQL전송
		out.print("4. SQL문 전송 성공!<br>");
	%>
</body>
</html>