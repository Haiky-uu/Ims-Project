package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.conn.DBConnect;
import com.dao.PersonalDAO;
import com.entity.Personalgs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateper")
public class Updateper extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 String empid = req.getParameter("empid");
		 String fname = req.getParameter("fname");
		 String mname = req.getParameter("mname");   
	 	 String lname = req.getParameter("lname");
		 String email = req.getParameter("email");
		 String phone = req.getParameter("phone");
		 String gender = req.getParameter("gender");
		 String address = req.getParameter("address");
		 String addhar = req.getParameter("addhar");
		 String photo = req.getParameter("photo");
		 Date dob = null;
		 java.util.Date selectedDate;
		try {
			selectedDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("dob"));
			 dob =  new java.sql.Date(selectedDate.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			 Date doj = null;
			 java.util.Date selectedDate2;
			 try {
				 selectedDate2 = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("doj"));
				 doj = new java.sql.Date(selectedDate2.getTime());
			 }catch (Exception e) {
			 
				 e.printStackTrace();
			 }			
			 
			 

			 Personalgs personalgs = new Personalgs(empid, fname, mname, lname, dob, email, phone, gender, address, addhar, doj, photo);
			 
			 PersonalDAO dao = new PersonalDAO(DBConnect.getConn());
			 
			 HttpSession session = req.getSession();
			 
			 boolean f = dao.updateEmployee(personalgs);
			 
			 
			 if(f)
			 {
				 session.setAttribute("succMsg","Employee Details updated Sucessfully...");
				 resp.sendRedirect("edit_personal.jsp");
				 
			 }else {
				 
				 session.setAttribute("errorMsg","Something wrong on server");
				 resp.sendRedirect("edit_personal.jsp");

			 }
			
			
		}
	}


