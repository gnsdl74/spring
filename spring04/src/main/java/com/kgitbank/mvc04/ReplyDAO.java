package com.kgitbank.mvc04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository // 저장소 지정(DB 지정)
public class ReplyDAO {
	
	//자동 import ctrl + shift + o
	public void insert(ReplyDTO dto) throws Exception {
		//1.Driver 설정
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. Driver 설정!");

		//2.DB연결
		String url = "jdbc:mysql://localhost:3307/spring";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB연결 성공!");

		//3.SQL결정 및 전송
		String sql = "insert into reply values (?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getContent());
		ps.setString(2, dto.getWriter());
		
		int result = ps.executeUpdate();

		if(result == 1) {
			System.out.println("3. SQL문 결정 및 전송 성공!");
		} else {
			System.out.println("3. SQL문 결정 및 전송 실패..");
		}

		
		


	}
	
}





















