package com.kgitbank.mvc04;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	@Autowired
	ReplyDAO dao;
	
	@RequestMapping("server.do")
	public void reply(Model model, ReplyDTO dto) throws Exception {
		//JOptionPane.showMessageDialog(null, "server.do가 호출됨.");
		// 자바스크립트의 alert 기능
		model.addAttribute("dto", dto);
		
		dao.insert(dto);
	}
}
