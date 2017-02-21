package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class User {

	@Column
	private String username;
	@Column
	private String password;
	@Column
	private String email;
	@Column
	private String mob;
	@Column
	private String billadd;
	@Column
	private String shipadd;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getBilladd() {
		return billadd;
	}
	public void setBilladd(String billadd) {
		this.billadd = billadd;
	}
	public String getShipadd() {
		return shipadd;
	}
	public void setShipadd(String shipadd) {
		this.shipadd = shipadd;
	}
	
	
	
}
