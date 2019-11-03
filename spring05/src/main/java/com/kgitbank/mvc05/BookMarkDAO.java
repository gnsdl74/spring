package com.kgitbank.mvc05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookMarkDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(BookMarkDTO dto) {	// myBatis 사용 시 예외 처리 안해도됨.
		// myBatis의 insert메소드를 호출.(book.xml의 insert)
		// mapper를 이용해서 book.xml를 생성.
		int res = my.insert("book.insert", dto);
		
		if(res == 1) {
			System.out.println("생성 완료");
		} else {
			System.out.println("생성 실패");
		}
	} // insert end.
	
	public void update(BookMarkDTO dto) throws Exception {
		int res = my.update("book.update", dto);
		if(res == 1) {
			System.out.println("수정 완료");
		} else {
			System.out.println("수정 실패");
		}
//		Class.forName("com.mysql.jdbc.Driver");
//		System.out.println("1. Driver 설정!");
//
//		//2.DB연결
//		String url = "jdbc:mysql://localhost:3307/spring";
//		String user = "root";
//		String password = "1234";
//		Connection con = DriverManager.getConnection(url, user, password);
//		System.out.println("2. DB연결 성공!");
//
//		//3.SQL결정 및 전송
//		String sql = "update bookmark set name = ? where id = ?";
//		PreparedStatement ps = con.prepareStatement(sql);
//		ps.setString(1, dto.getName());
//		ps.setString(2, dto.getId());
//		
//		int result = ps.executeUpdate();
//		
//		if(result == 1) {
//			System.out.println("3. SQL문 결정 및 전송 성공!");
//		} else {
//			System.out.println("3. SQL문 결정 및 전송 실패..");
//		}														->> myBatis 사용하기 전 코드
		
	} // update end.
	
	public void delete(BookMarkDTO dto) {
		int res = my.delete("book.delete", dto);
		if(res == 1) {
			System.out.println("삭제 완료");
		} else {
			System.out.println("삭제 실패");
		}
	}	// delete end.
	
	
	public BookMarkDTO selectOne(BookMarkDTO dto) {
		return my.selectOne("book.selectOne", dto);
		
	} // selectOne end.
	
	public List<BookMarkDTO> selectAll() {
		return my.selectList("book.selectAll");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
