package com.kgitbank.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	//자동 import ctrl + shift + o
			public void insert(BbsDTO dto) throws Exception { // 외부와 연결되는 프로그램을 처리할 때는 1. try-catch구무을 사용하거나, 2.예외처리 한다.
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
				String sql = "insert into bbs values (?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, dto.getId());
				ps.setString(2, dto.getTitle());
				ps.setString(3, dto.getContent());
				ps.setString(4, dto.getWriter());

				int result = ps.executeUpdate();

				if(result == 1) {
					System.out.println("3. SQL문 결정 성공!");
				} else {
					System.out.println("3. SQL문 결정 실패..");
				}

				//4.SQL전송
				System.out.println("4. SQL문 전송 성공!");
			}
			
			public void delete(String id) throws Exception {
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
					String sql = "delete from bbs where id = ?";
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
			
			public BbsDTO select(String id) throws Exception {
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
					String sql = "select * from bbs where id = ?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, id);

					ResultSet rs = ps.executeQuery();
					
					BbsDTO dto = null;
					if(rs.next()) {
						String gid = rs.getString(1);
						String title = rs.getString(2);
						String content = rs.getString(3);
						String writer = rs.getString(4);
						
						dto = new BbsDTO();
						dto.setId(gid);
						dto.setTitle(title);
						dto.setContent(content);
						dto.setWriter(writer);
					}

					//4.SQL전송
					System.out.println("4. SQL문 전송 성공!");
					
					return dto;
				}
			
}
