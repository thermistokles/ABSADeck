package com.lti.absadeck.model;



public class Login {
	
	private String absaId;
	private String password;
	
	
	
	public String getAbsaId() {
		return absaId;
	}
	public void setAbsaId(String absaId) {
		this.absaId = absaId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Login [absaId=" + absaId + ", password=" + password + "]";
	}
	
	
	
	
	
	
	

}
