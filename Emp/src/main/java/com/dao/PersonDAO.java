package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.entity.Persongs;

public class PersonDAO {
	
	private Connection conn;

	public PersonDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addEmployee(Persongs persongs) {
		
		boolean f = false;
		
		try {
			
			String sql="insert into rec.form(fname, mname, lname, dob, email, phone, addr, position, qulification) values(?,?,?,?,?,?,?,?,?)";  
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, persongs.getFname());
			ps.setString(2, persongs.getMname());
			ps.setString(3, persongs.getLname());
			ps.setDate(4, persongs.getDob());
			ps.setString(5, persongs.getEmail()); 
			ps.setString(6, persongs.getPhone());
			ps.setString(7, persongs.getAddress());
			ps.setString(8, persongs.getPosition());
			ps.setString(9, persongs.getQualification());
			
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
	public List<Persongs> getallPersongs(){
		
		List<Persongs> list= new ArrayList<Persongs>();
		Persongs p=null;
		
		try {
			
			String sql = "select * from rec.form";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				p=new Persongs();
				p.setId(rs.getInt(1));
				p.setFname(rs.getString(2));
				p.setMname(rs.getString(3));
				p.setLname(rs.getString(4));
				p.setDob(rs.getDate(5));
				p.setEmail(rs.getString(6));
				p.setPhone(rs.getString(7));
				p.setAddress(rs.getString(8));
				p.setPosition(rs.getString(9));
				p.setQualification(rs.getString(10));
				list.add(p);
				
				
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return list;
		
	}
	
	public Persongs getPersongsById(int id) {
		
		Persongs p = null;
		
try {
			
			String sql = "select * from rec.form where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
		
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				p=new Persongs();
				p.setId(rs.getInt(1));
				p.setFname(rs.getString(2));
				p.setMname(rs.getString(3));
				p.setLname(rs.getString(4));
				p.setDob(rs.getDate(5));
				p.setEmail(rs.getString(6));
				p.setPhone(rs.getString(7));
				p.setAddress(rs.getString(8));
				p.setPosition(rs.getString(9));
				p.setQualification(rs.getString(10));
				
				
				
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return p;
				
	}
	
	public boolean updateEmployee(Persongs persongs) {
		
		boolean f = false;
		
		try {
			
			String sql="update rec.form set fname=?, mname=?, lname=?, dob=?, email=?, phone=?, addr=?, position=?, qulification=? where id=?";  
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, persongs.getFname());
			ps.setString(2, persongs.getMname());
			ps.setString(3, persongs.getLname());
			ps.setDate(4, persongs.getDob());
			ps.setString(5, persongs.getEmail()); 
			ps.setString(6, persongs.getPhone());
			ps.setString(7, persongs.getAddress());
			ps.setString(8, persongs.getPosition());
			ps.setString(9, persongs.getQualification());
			ps.setInt(10, persongs.getId());
			
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
	
	public boolean deleteEmployee(int id)
	{
		boolean f = false;
		
		try {
			
			String sql = "delete from rec.form where id=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
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
