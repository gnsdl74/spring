package com.kgitbank.mvc05;

public class BookMarkDTO {
	
	private String id;
	private String name;
	private String site;
	
	public BookMarkDTO(String id, String name, String site) {
		super();
		this.id = id;
		this.name = name;
		this.site = site;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	
	
}
