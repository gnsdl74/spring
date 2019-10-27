package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kgitbank.mvc02.MemberDAO;

@Controller // Controller 지정
public class MemberController {
	
	@Autowired
	MemberDAO dao; // singleton 패턴(하나의 객체만 생성. 하나의 객체로 여러 곳에 필요한 해당 객체의 메소드 호출)
	
	@RequestMapping("insert")
	public void insert(String id, String pw, String name, String tel) throws Exception {
		System.out.println("insert 요청됨.");
		System.out.println("입력한 id는 " + id + "입니다.");
		System.out.println("입력한 pw는 " + pw + "입니다.");
		System.out.println("입력한 name은 " + name + "입니다.");
		System.out.println("입력한 tel은 " + tel + "입니다.");
		dao.insert(id, pw, name, tel);
	}
	
	@RequestMapping("delete")
	public void delete(String id) throws Exception {
		System.out.println("delete 요청됨.");
		System.out.println("삭제할 id는 " + id + "입니다.");
		dao.delete(id);
	}
	
	@RequestMapping("select")
	public void select(String id, Model model) throws Exception {
		// RequestMapping한 것은 String id = request.getParameter(id); 것과 같다.
		System.out.println("select 요청됨.");
		System.out.println("검색할 id는 " + id + "입니다.");
		MemberDTO dto2 = dao.select(id);
		//Model객체는 views까지만 값을 넘기고 싶을 때 사용.(Session과 유사하지만 더 좁다.)
		model.addAttribute("dto2", dto2);
	}
	
}
