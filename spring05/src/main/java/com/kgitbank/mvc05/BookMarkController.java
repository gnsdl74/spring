package com.kgitbank.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookMarkController {
	
	@Autowired
	BookMarkDAO dao;
	
	@RequestMapping("insert")
	public void insert(BookMarkDTO dto) {	// myBatis 사용시 에러 처리 안해도 됨.
		System.out.println(dto.getId());
		System.out.println(dto.getName());
		System.out.println(dto.getSite());
		dao.insert(dto);
		
	}
	
	@RequestMapping("update")
	public void update(BookMarkDTO dto) throws Exception {
		System.out.println(dto.getId());
		System.out.println(dto.getName());
		dao.update(dto);
	}
	
	@RequestMapping("delete")
	public void delete(BookMarkDTO dto) {
		System.out.println(dto.getId());
		dao.delete(dto);
	}
	
	@RequestMapping("selectOne")
	public void selectOne(Model model, BookMarkDTO dto) {
		System.out.println(dto.getId());
		BookMarkDTO bookmarkDTO = dao.selectOne(dto);
		model.addAttribute("result", bookmarkDTO);
	}
	
	@RequestMapping("selectAll")
	public void selectAll(Model model) {
		System.out.println("전체 검색 요청");
		List<BookMarkDTO> list = dao.selectAll();
		model.addAttribute("list", list);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
