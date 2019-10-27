package com.kgitbank.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2.do")
	public void insert(BbsDTO bbsDTO) throws Exception {
		System.out.println("입력한 id는 " + bbsDTO.getId() + "입니다.");
		System.out.println("입력한 title은 " + bbsDTO.getTitle() + "입니다.");
		System.out.println("입력한 content는 " + bbsDTO.getContent() + "입니다.");
		System.out.println("입력한 writer는 " + bbsDTO.getWriter() + "입니다.");
		dao.insert(bbsDTO);
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
