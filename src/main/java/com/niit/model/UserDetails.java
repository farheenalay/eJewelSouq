package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;





@Entity
public class UserDetails implements Serializable{

	
	
	@Id
	private String userName;
	
	@Column
	private String name;
	
	@Column
	private String password;
	
	@Column
	private String mobile;
	
	@Column
	private String email;
	
	@Column
	private String billadd;
	
	@Column
	private String shipadd;
	
	@Column
	private String zipcode;
	
	@Column
	private String cntry;
	@Transient
	private String role;
	@Transient
	private boolean enabled;
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getCntry() {
		return cntry;
	}
	public void setCntry(String cntry) {
		this.cntry = cntry;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
}
