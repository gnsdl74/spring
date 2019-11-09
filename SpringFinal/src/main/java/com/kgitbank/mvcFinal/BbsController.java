package com.kgitbank.mvcFinal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@RequestMapping("selectAll")
	public void selectAll() {
		List<BbsDTO> list = dao.selectAll();
		for (BbsDTO x : list) {
			System.out.println(x);
		}
	}
	
}
