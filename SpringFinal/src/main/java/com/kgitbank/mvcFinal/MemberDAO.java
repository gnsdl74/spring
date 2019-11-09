package com.kgitbank.mvcFinal;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	// myBatis와 DAO를 의존성 맺어줌. 자바빈으로 생성.
	
	public void insert(MemberDTO dto) {
		my.insert("member.insert", dto);	//member.insert는 member.xml에 있는 mapper 'member'의 insert를 실행한다는 의미
	}
	
	
	
	
	
	
}
