package com.servlet;

import java.io.IOException;

import com.conn.DBConnect;
import com.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteusr")
public class Deleteusr extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String empid = req.getParameter("id");
		
        UserDAO dao = new UserDAO(DBConnect.getConn());    
		
		boolean f = dao.deleteUser(empid);
		
		HttpSession session = req.getSession();
		
		if(f) {
			
			 session.setAttribute("succMsg","User Related Details deleted Sucessfully...");
			 resp.sendRedirect("user_info.jsp");
			 //System.out.println("Salary Details deleted Sucessfully...");
			
		}
		else {
			
			 session.setAttribute("errorMsg","Something wrong on server");
			 resp.sendRedirect("user_info.jsp");
			 //System.out.println("Something wrong on server");
		}
		
	}

	}


