package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Salarygs;

public class SalaryDAO {
	
	private Connection conn;
	
	public SalaryDAO(Connection conn) {
		
		super();
		this.conn = conn;
	}
	
	public boolean addSalary(Salarygs salarygs) {
		
		
		boolean f = false;
		try {
			
			String sql = "insert into emp.salary(empId, salary, hra, special_allow, conveyance, overtimec, leave_encashment, esi, epf, profession_tax, tds, insurance, adv_misc) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, salarygs.getEmpid());
			ps.setString(2, salarygs.getSalary());
			ps.setString(3, salarygs.getHra());
			ps.setString(4, salarygs.getSpecial());
			ps.setString(5, salarygs.getConveyance());
			ps.setString(6, salarygs.getOvertime());
			ps.setString(7, salarygs.getLeave());
			ps.setString(8, salarygs.getEsi());
			ps.setString(9, salarygs.getEpf());
			ps.setString(10, salarygs.getTax());
			ps.setString(11, salarygs.getTds());
			ps.setString(12, salarygs.getInsurance());
			ps.setString(13, salarygs.getAdv());			
			
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
	public List<Salarygs> getallSalarygs(){
		
		
		List<Salarygs> list = new ArrayList<Salarygs>();
		Salarygs s=null;
		
		try {
			
			String sql = "select * from emp.salary";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				s = new Salarygs();
				s.setId(rs.getInt(1));
				s.setEmpid(rs.getString(2));
				s.setSalary(rs.getString(3));
				s.setHra(rs.getString(4));
				s.setSpecial(rs.getString(5));
				s.setConveyance(rs.getString(6));
				s.setOvertime(rs.getString(7));
				s.setLeave(rs.getString(8));
				s.setEsi(rs.getString(9));
				s.setEpf(rs.getString(10));
				s.setTax(rs.getString(11));
				s.setTds(rs.getString(12));
				s.setInsurance(rs.getString(13));
				s.setAdv(rs.getString(14));
				list.add(s);
			}
		
		}
		catch (Exception e){
			e.printStackTrace();
			}
		return list;
		
	}
	public Salarygs getSalarygsById(int id)
	{
		
		Salarygs s = null;
		
		try {
			
			String sql = "select * from emp.salary where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				s = new Salarygs();
				s.setId(rs.getInt(1));
				s.setEmpid(rs.getString(2));
				s.setSalary(rs.getString(3));
				s.setHra(rs.getString(4));
				s.setSpecial(rs.getString(5));
				s.setConveyance(rs.getString(6));
				s.setOvertime(rs.getString(7));
				s.setLeave(rs.getString(8));
				s.setEsi(rs.getString(9));
				s.setEpf(rs.getString(10));
				s.setTax(rs.getString(11));
				s.setTds(rs.getString(12));
				s.setInsurance(rs.getString(13));
				s.setAdv(rs.getString(14));
				
				
			}
		
		}
		catch (Exception e){
			e.printStackTrace();
			}
		return s;
			
		}
	public boolean updateSalary(Salarygs salarygs) {
		
		
		boolean f = false;
		
		try {
			
			String sql = "update emp.salary set empId=?, salary=?, hra=?, special_allow=?, conveyance=?, overtimec=?, leave_encashment=?, esi=?, epf=?, profession_tax=?, tds=?, insurance=?, adv_misc=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, salarygs.getEmpid());
			ps.setString(2, salarygs.getSalary());
			ps.setString(3, salarygs.getHra());
			ps.setString(4, salarygs.getSpecial());
			ps.setString(5, salarygs.getConveyance());
			ps.setString(6, salarygs.getOvertime());
			ps.setString(7, salarygs.getLeave());
			ps.setString(8, salarygs.getEsi());
			ps.setString(9, salarygs.getEpf());
			ps.setString(10, salarygs.getTax());
			ps.setString(11, salarygs.getTds());
			ps.setString(12, salarygs.getInsurance());
			ps.setString(13, salarygs.getAdv());	
			ps.setInt(14, salarygs.getId());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				
				f = true;
			}
			
		}catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return f;
		
	}
	public boolean deleteSalary(int id)
	{
		boolean f = false;
		
		try {
			
			String sql = "delete from emp.salary where id = ?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
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
	


