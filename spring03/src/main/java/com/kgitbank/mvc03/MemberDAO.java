package com.kgitbank.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository // 저장소 지정(DB 지정)
public class MemberDAO {
	
	//자동 import ctrl + shift + o
	public void insert(MemberDTO dto) throws Exception { // 외부와 연결되는 프로그램을 처리할 때는 1. try-catch구무을 사용하거나, 2.예외처리 한다.
	//Model (M)
		//1.Driver 설정
		Class.forName("com.mysql.jdbc.Driver");	// Driver 클래스 호출
		System.out.println("1. Driver 설정!");

		//2.DB연결
		String url = "jdbc:mysql://localhost:3307/spring";	//url
		String user = "root";	// id
		String password = "1234";	// pw
		Connection con = DriverManager.getConnection(url, user, password);	// Connection 객체생성
		System.out.println("2. DB연결 성공!");

		//3.SQL결정
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());

		int result = ps.executeUpdate();

		if(result == 1) {
			System.out.println("3. SQL문 결정 성공!");
		} else {
			System.out.println("3. SQL문 결정 실패..");
		}

		//4.SQL전송
		System.out.println("4. SQL문 전송 성공!");


	}
	
	public void delete(String id) throws Exception { // 외부와 연결되는 프로그램을 처리할 때는 1. try-catch구무을 사용하거나, 2.예외처리 한다.
		//Model (M)
			//1.Driver 설정
			Class.forName("com.mysql.jdbc.Driver");	// Driver 클래스 호출
			System.out.println("1. Driver 설정!");

			//2.DB연결
			String url = "jdbc:mysql://localhost:3307/spring";	//url
			String user = "root";	// id
			String password = "1234";	// pw
			Connection con = DriverManager.getConnection(url, user, password);	// Connection 객체생성
			System.out.println("2. DB연결 성공!");

			//3.SQL결정
			String sql = "delete from member where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);

			int result = ps.executeUpdate();

			if(result == 1) {
				System.out.println("3. SQL문 결정 성공!");
			} else {
				System.out.println("3. SQL문 결정 실패..");
			}

			//4.SQL전송
			System.out.println("4. SQL문 전송 성공!");


		}
	
	public MemberDTO select(String id) throws Exception { // 외부와 연결되는 프로그램을 처리할 때는 1. try-catch구무을 사용하거나, 2.예외처리 한다.
		//Model (M)
			//1.Driver 설정
			Class.forName("com.mysql.jdbc.Driver");	// Driver 클래스 호출
			System.out.println("1. Driver 설정!");

			//2.DB연결
			String url = "jdbc:mysql://localhost:3307/spring";	//url
			String user = "root";	// id
			String password = "1234";	// pw
			Connection con = DriverManager.getConnection(url, user, password);	// Connection 객체생성
			System.out.println("2. DB연결 성공!");

			//3.SQL결정
			String sql = "select * from member where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);

			ResultSet rs = ps.executeQuery(); //Read(Select!)
			
			MemberDTO dto2 = null;
			if(rs.next()) {
				String gid = rs.getString(1);	//id
				String gpw = rs.getString(2);	//pw
				String gname = rs.getString(3);	//name
				String gtel = rs.getString(4);	//tel
				System.out.println(gid + gpw + gname + gtel);
				dto2 = new MemberDTO();
				dto2.setId(gid);
				dto2.setPw(gpw);
				dto2.setName(gname);
				dto2.setTel(gtel);
				
				System.out.println("3. SQL문 연결 성공!");
			}

			//4.SQL전송
			System.out.println("4. SQL문 전송 성공!");
			
			return dto2;
		}
	
	
}





















