package com.kgitbank.mvc05;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookMarkDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(BookMarkDTO dto) {
		my.insert("book.insert", dto);
	}
}
