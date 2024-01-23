package com.entity;
import java.sql.Date;

public class Persongs {
	
	
	private int id;
	private String fname;
	private String mname;   
	private String lname;
	private Date dob;
	private String email;
	private String phone;
	private String address;
	private String position;
	private String  qualification;
	
	public Persongs() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Persongs(String fname, String mname, String lname, Date dob, String email, String phone, String address,
			String position, String qualification) {
		super();
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.dob = dob;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.position = position;
		this.qualification = qualification;
	}
	
	
	
	public Persongs(int id, String fname, String mname, String lname, Date dob, String email, String phone,
			String address, String position, String qualification) {
		super();
		this.id = id;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.dob = dob;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.position = position;
		this.qualification = qualification;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	
	
	@Override
	public String toString() {
		return "Persongs [id=" + id + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", dob=" + dob
				+ ", email=" + email + ", phone=" + phone + ", address=" + address + ", position=" + position
				+ ", qualification=" + qualification + "]";
	}
	
}
	
	