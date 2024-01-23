package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.PersonalDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteper")
public class Deleteper extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String id = req.getParameter("id"); 
		PersonalDAO dao = new PersonalDAO(DBConnect.getConn());
		
		boolean f = dao.deleteEmployee(id);
		
		HttpSession session = req.getSession();
		
		if(f) {
			
			 session.setAttribute("succMsg","Employee Related Details deleted Sucessfully...");
			 resp.sendRedirect("personal_info.jsp");
			 //System.out.println("Salary Details deleted Sucessfully...");
			
		}
		else {
			
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("personal_info.jsp");
			 //System.out.println("Something wrong on server");
		}
		
		
	}

}
