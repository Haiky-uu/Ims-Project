package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Personalgs;

public class PersonalDAO {
	
	private Connection conn;
	
	public PersonalDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addEmployee(Personalgs personalgs) {
	
		boolean f = false;
		
try {
			
			String sql="insert into emp.profile(empid, fname, mname, lname, dob, email, phone, gender, addr, doj, addhar) values(?,?,?,?,?,?,?,?,?,?,?)";  
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, personalgs.getEmpid());
			ps.setString(2, personalgs.getFname());
			ps.setString(3, personalgs.getMname());
			ps.setString(4, personalgs.getLname());
			ps.setDate(5, personalgs.getDob());
			ps.setString(6, personalgs.getEmail()); 
			ps.setString(7, personalgs.getPhone());
			ps.setString(8, personalgs.getGender());
			ps.setString(9, personalgs.getAddress());
			ps.setDate(10, personalgs.getDoj());
			ps.setString(11, personalgs.getAddhar());
			
			
			
			
			int i = ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
			
		}catch( Exception e) {
			
			e.printStackTrace();
		}
		
		return f;
	
	
	}
	
public List<Personalgs> getallPersongs(){
		
		List<Personalgs> list= new ArrayList<Personalgs>();
		Personalgs p=null;
		
		try {
			
			String sql = "select * from emp.profile";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				p=new Personalgs();
				p.setEmpid(rs.getString(1));
				p.setFname(rs.getString(2));
				p.setMname(rs.getString(3));
				p.setLname(rs.getString(4));
				p.setDob(rs.getDate(5));
				p.setEmail(rs.getString(6));
				p.setPhone(rs.getString(7));
				p.setGender(rs.getString(8));
				p.setAddress(rs.getString(9));
				p.setDoj(rs.getDate(10));
				p.setAddhar(rs.getString(11));
				
				
				list.add(p);
				
				
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return list;
		
	}

public Personalgs getPersonalgsById(String empid) {
		
		Personalgs p = null;
		
try {
			
			String sql = "select * from emp.profile where empid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, empid);
		
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				p=new Personalgs();
				p.setEmpid(rs.getString(1));
				p.setFname(rs.getString(2));
				p.setMname(rs.getString(3));
				p.setLname(rs.getString(4));
				p.setDob(rs.getDate(5));
				p.setEmail(rs.getString(6));
				p.setPhone(rs.getString(7));
				p.setGender(rs.getString(8));
				p.setAddress(rs.getString(9));
				p.setDoj(rs.getDate(10));
				p.setAddhar(rs.getString(11));
				
				
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return p;
				
	}

public boolean updateEmployee(Personalgs personalgs) {
	
	boolean f = false;
	
	try {
		
		String sql="update emp.profile set fname=?, mname=?, lname=?, dob=?, email=?, phone=?, gender=?, addr=?, doj=?, addhar=?  where empid=?";  
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, personalgs.getEmpid());
		ps.setString(2, personalgs.getFname());
		ps.setString(3, personalgs.getMname());
		ps.setString(4, personalgs.getLname());
		ps.setDate(5, personalgs.getDob());
		ps.setString(6, personalgs.getEmail()); 
		ps.setString(7, personalgs.getPhone());
		ps.setString(8, personalgs.getGender());
		ps.setString(9, personalgs.getAddress());
		ps.setDate(10, personalgs.getDoj());
		ps.setString(11, personalgs.getAddhar());
		
		int i = ps.executeUpdate();
		
		if(i==1)
		{
			f=true;
		}
		
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	
	return f;
	
}

public boolean deleteEmployee(String empid)
{
	boolean f = false;
	
	try {
		
		String sql = "delete from emp.profile where empid=?";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, empid);
		
		int i = ps.executeUpdate();
		
		if ( i== 1)
		{
			f =  true;
			
		}
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
		
	}
	
	
	
	return f;
	
	
}



	
	
	

}
