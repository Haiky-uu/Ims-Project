package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.UserDAO;
import com.entity.Usergs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateuser")
public class Edituser extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String empid = req.getParameter("empid");
		String passwd = req.getParameter("passwd");

		Usergs usergs = new Usergs(empid,passwd);
		UserDAO dao = new UserDAO(DBConnect.getConn());
		
		
		HttpSession session = req.getSession();
		
		boolean f = dao.updateUser(usergs);
		
		 if(f)
		 {
			 session.setAttribute("succMsg","User Details Updated Sucessfully...");
			 resp.sendRedirect("user_info.jsp");
			 //System.out.println("Employee Details updated Sucessfully...");
			 
		 }else {
			 
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("user_info.jsp");
			 //System.out.println("Something wrong on server");

		 }
	}

		
		
		
	}

