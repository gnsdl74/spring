package com.kgitbank.mvc04;

public class ReplyDTO {

	private String content;
	private String writer;
	
	public ReplyDTO(String content, String writer) {
		super();
		this.content = content;
		this.writer = writer;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
}
