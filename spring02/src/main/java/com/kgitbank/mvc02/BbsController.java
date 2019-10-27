package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2")
	public void insert(String id, String title, String content, String writer) throws Exception {
		System.out.println("입력한 id는 " + id + "입니다.");
		System.out.println("입력한 pw는 " + title + "입니다.");
		System.out.println("입력한 name은 " + content + "입니다.");
		System.out.println("입력한 tel은 " + writer + "입니다.");
		dao.insert(id, title, content, writer);
	}
	
	@RequestMapping("delete2")
	public void delete(String id) throws Exception {
		dao.delete(id);
	}
	
	@RequestMapping("select2")
	public void select(String id, Model model) throws Exception {
		BbsDTO dto = dao.select(id);
		model.addAttribute("dto", dto);
	}
	
}
