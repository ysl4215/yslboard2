package com.swempire.web.board.model;

public class LoginVO {
	private	String id;
	private	String pw;
	private String remember_userId;
	private String checked;
	
	

	public String getChecked() {
		return checked;
	}
	public void setChecked(String checked) {
		this.checked = checked;
	}
	public String getRemember_userId() {
		return remember_userId;
	}
	public void setRemember_userId(String remember_userId) {
		this.remember_userId = remember_userId;
	}
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
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", pw=" + pw + ", remember_userId=" + remember_userId + ", checked=" + checked
				+ "]";
	}

	
	
}
