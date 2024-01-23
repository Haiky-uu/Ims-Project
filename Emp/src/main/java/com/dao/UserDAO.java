package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.Usergs;

public class UserDAO {

private Connection conn;
	
	public UserDAO (Connection conn){
		super();
		this.conn = conn;
	}
	
	
public boolean addUser(Usergs usergs) {
	
	boolean f = false;
	try {
		
		String sql = "insert into emp.user(empId, passwd) values(?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usergs.getEmpid());
		ps.setString(2, usergs.getPasswd());
				
		
		int i = ps.executeUpdate();
		
		if(i==1)
		{
			f=true;
		}
		
					
	}catch(Exception e){
		
		e.printStackTrace();
	}
	
	return f;
}
public List<Usergs> getallUsers(){
	
	
	List<Usergs> list = new ArrayList<Usergs>();
	Usergs u=null;
	
	try {
		
		String sql = "select * from emp.user";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			u = new Usergs();
			u.setEmpid(rs.getString(1));
			u.setPasswd(rs.getString(2));
			
			list.add(u);
		}
	
	}
	catch (Exception e){
		e.printStackTrace();
		}
	return list;
	
}
public Usergs getUsergsById(String empid)
{
	
	Usergs u = null;
	
	try {
		
		String sql = "select * from emp.user where empId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, empid);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			u = new Usergs();
			u.setEmpid(rs.getString(1));
			u.setPasswd(rs.getString(2));
			
			
			
		}
	
	}
	catch (Exception e){
		e.printStackTrace();
		}
	return u;
		
	}
public boolean updateUser(Usergs usergs) {
	
	
	boolean f = false;
	
	try {
		
		String sql = "update emp.user set empId=?, passwd=? where empId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usergs.getEmpid());
		ps.setString(2, usergs.getPasswd());
		ps.setString(3, usergs.getEmpid());
		
		int i = ps.executeUpdate();
		
		if(i==1) {
			
			f = true;
		}
		
	}catch (Exception e) {
		
		e.printStackTrace();
	}
	
	return f;
	
}
public boolean deleteUser(String empid)
{
	boolean f = false;
	
	try {
		
		String sql = "delete from emp.user where empId = ?";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, empid);
		
		int i = ps.executeUpdate();
		
		if(i==1) {
			
			f = true;
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return f;
}
	
	
	
	
}
	
	
	

