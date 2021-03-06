package com.kgitbank.mvc02;

public class MemberDTO {
	//글로벌 변수[전역 변수](자동초기화, null로 초기화)	vs 지역 변수(수동초기화, 처음-쓰레기값가짐)
	private String id;
	private String pw;
	private String name;
	private String tel;
	
	// Constructor
	public MemberDTO() {
		
	}
	
	public MemberDTO(String id, String pw, String name, String tel) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
	}
	
	// getter, setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	

	
}
