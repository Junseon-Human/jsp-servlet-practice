package com.keduit.dto;

import java.sql.Timestamp;

/*
계층간 데이터 교환을 위한 자바빈즈를 뜻한다.
로직을 가지지 않은 순수한 데이터 객체이며 필드와 getter, setter 메소드만 존재한다.
데이터베이스에 있는 데이터를 자바 형태로 만들어주는 중간 매체.
 */
public class BoardVO {
	
	private int num;
	private String pass;
	private String name;
	private String email;
	private String title;
	private String content;
	private int readcount;
	private Timestamp writedate;
	
	public BoardVO() {}
	public BoardVO(int num, String pass, String name, String email, String title, String content, int readcount,Timestamp writedate) {
		this.num = num;
		this.pass = pass;
		this.name = name;
		this.email = email;
		this.title = title;
		this.content = content;
		this.readcount = readcount;
		this.writedate = writedate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}

	public String toString() {
		return "BoardVO [num=" + num + ", pass=" + pass + ", name=" + name + ", email=" + email + ", title=" + title
				+ ", content=" + content + ", readcount=" + readcount + ", writedate=" + writedate + "]";
	}
	
	
	

}
