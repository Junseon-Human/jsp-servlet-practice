package com.keduit;

public class MemberBean {
	private String name;
	private String userid;
	private String nickname;
	private String pwd;
	
	public MemberBean() {
	}
	public MemberBean(String name, String userid, String nickname, String pwd) {
		this.name = name;
		this.userid = userid;
		this.nickname = nickname;
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", userid=" + userid + ", nickname=" + nickname + ", pwd=" + pwd; 
	}
	
	
}
