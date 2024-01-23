package com.entity;

import java.sql.Date;

public class Personalgs {
	

	
	private String empid;
	private String fname;
	private String mname;   
	private String lname;
	private Date dob;
	private String email;
	private String phone;
	private String gender;
	private String address;
	private String addhar;
	private Date doj;
	private String photo;
	
	public Personalgs() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Personalgs(String empid, String fname, String mname, String lname, Date dob, String email, String phone,
			String gender, String address, String addhar, Date doj, String photo) {
		super();
		this.empid = empid;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.dob = dob;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.address = address;
		this.addhar = addhar;
		this.doj = doj;
		this.photo = photo;
	}
	
	
	
	
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddhar() {
		return addhar;
	}
	public void setAddhar(String addhar) {
		this.addhar = addhar;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "Personalgs [empid=" + empid + ", fname=" + fname + ", mname=" + mname + ", lname="
				+ lname + ", dob=" + dob + ", email=" + email + ", phone=" + phone + ", gender=" + gender + ", address="
				+ address + ", addhar=" + addhar + ", doj=" + doj + ", photo=" + photo + "]";
	}
	
	
	
	
	
}
