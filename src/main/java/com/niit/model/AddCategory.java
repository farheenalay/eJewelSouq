package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class AddCategory {
	
	@Column
	private int cid;
	@Column
	private String cname;
	@Column
	private String catdes;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCatdes() {
		return catdes;
	}
	public void setCatdes(String catdes) {
		this.catdes = catdes;
	}
	
	
	
}
