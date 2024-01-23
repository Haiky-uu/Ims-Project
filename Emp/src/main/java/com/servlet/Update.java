package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.conn.DBConnect;
import com.dao.PersonDAO;
import com.entity.Persongs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class Update extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 String fname = req.getParameter("fname");
		 String mname = req.getParameter("mname");   
	 	 String lname = req.getParameter("lname");
	 	 String email = req.getParameter("email");
		 String phone = req.getParameter("phone");
		 String address = req.getParameter("address");
		 String position = req.getParameter("position");
		 String  qualification = req.getParameter("qualification");
		 int id = Integer.parseInt(req.getParameter("id"));
		 Date dob = null;
		 java.util.Date selectedDate;
		try {
			selectedDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("dob"));
			 dob =  new java.sql.Date(selectedDate.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		 
		 Persongs persongs = new Persongs(id, fname, mname, lname, dob, email, phone, address, position, qualification);
		 
		
		 PersonDAO dao = new PersonDAO(DBConnect.getConn());
		 
		 HttpSession session = req.getSession();
		
		boolean f = dao.updateEmployee(persongs);
		
		 if(f)
		 {
			 session.setAttribute("succMsg","Employee Details Updated Sucessfully...");
			 resp.sendRedirect("emp_info.jsp");
			 
		 }else {
			 
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("emp_info.jsp");

		 }
		
		
	}
	
	
	

	
	
}
