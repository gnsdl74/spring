package com.kgitbank.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;	// 싱글톤
	//스프링에서 사용할 객체를 딱 1개만 만들어서
	//어디서든지 그 객체의 주소값을 가져다 사용할 수 있는 기법
	
	@RequestMapping("memberAll")
	public void memberAll(Model model) {
		System.out.println("멤버 전체 검색");
		List<MemberDTO> list2 = dao.memberAll();
		model.addAttribute("list", list2);
	}
}
