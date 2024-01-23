package com.entity;

public class Usergs {

	private String empid;
	private String passwd;
	
	
	public Usergs() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Usergs(String empid, String passwd) {
		super();
		this.empid = empid;
		this.passwd = passwd;
	}


	public String getEmpid() {
		return empid;
	}


	public void setEmpid(String empid) {
		this.empid = empid;
	}


	public String getPasswd() {
		return passwd;
	}


	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}


	@Override
	public String toString() {
		return "Usergs [empid=" + empid + ", passwd=" + passwd + "]";
	}	
	
}
