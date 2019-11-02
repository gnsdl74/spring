package com.kgitbank.mvc05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookMarkController {
	
	@Autowired
	BookMarkDAO dao;
	
	@RequestMapping("insert")
	public void insert(BookMarkDTO dto) {
		dao.insert(dto);
		
	}

}
