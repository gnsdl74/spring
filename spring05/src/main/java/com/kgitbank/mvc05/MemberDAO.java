package com.kgitbank.mvc05;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository // 저장소 지정(DB 지정)
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<MemberDTO> memberAll() {
		System.out.println("멤버 전체 검색 중");
		return my.selectList("member.selectAll");
		
	}
	
	
}





















