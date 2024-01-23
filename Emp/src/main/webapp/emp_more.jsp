<%@page import="com.dao.SalaryDAO"%>
<%@page import="com.entity.Salarygs"%>
<%@page import="com.entity.Personalgs"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.PersonalDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ page errorPage="index.jsp" %>
    
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file ="all_css.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">

</head>
<body class = "bg-light">
<%@include file="navbar.jsp" %>
<%session=request.getSession(false);
  List<String> role = (List<String>)session.getAttribute("role");
  
  if(session != null &&  (role.contains("per")||role.contains("admin"))){
%>
<%
//SalaryDAO dao = new SalaryDAO(DBConnect.getConn());
	//List<Salarygs> list = dao.getallSalarygs();
	String id = request.getParameter("id");
	PersonalDAO dao = new PersonalDAO(DBConnect.getConn());
	Personalgs p = dao.getPersonalgsById(id);
	SalaryDAO dao1 = new SalaryDAO(DBConnect.getConn());
	//Salarygs s = dao1.getSalarygsById(id);
%>
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col-md-10 mt-5 pt-5">
				<div class = "row z-depth-3">
					<div class="col-sm-4 bg-info rounded-left">
						<div class="card-block text-center text-white">
							<i class="fas fa-user-tie fa-7x mt-5"></i>
							<h2 class="font-weight-bold mt-4"><%=p.getEmpid() %></h2>
							<p> <%=p.getFname()%> <%=p.getMname()%> <%=p.getLname() %></p>
							<p> Dob: <%=p.getDob() %></p>
						</div>
					
					</div>
					<div class = "col-sm-8 bg-white rounded-right">
						<h3 class="mt-3 text-center">More Details...</h3>     
						 <!--  <a href ="edit_personal.jsp?id=//<%=p.getEmpid() %>" class="btn btn-sm btn-primary">Edit</a>-->
						
						<hr class="badge-primary mt-0 w-25" >
							<div class="row">
							<div class="col-sm-6">
								<p class="font-weight-bold">Email:</p>
								<h6 class="text-muted"><%=p.getEmail() %></h6>
							</div>
							<div class="col-sm-6">
								<p class="font-weight-bold">Phone:</p>
								<h6 class="text-muted"><%=p.getPhone() %></h6>
							</div>
							<div class="col-sm-6">
								<p class="font-weight-bold">Gender:</p>
								<h6 class="text-muted"><%=p.getGender()%></h6>
							</div>
							<div class="col-sm-6">
								<p class="font-weight-bold">Address:</p>
								<h6 class="text-muted"><%=p.getAddress() %></h6>
							</div>
							<div class="col-sm-6">
								<p class="font-weight-bold">Addhar:</p>
								<h6 class="text-muted"><%=p.getAddhar() %></h6>
							</div>
							<div class="col-sm-6">
								<p class="font-weight-bold">Date of joining:</p>
								<h6 class="text-muted"><%=p.getDoj() %></h6>
							</div>
					</div>				
				
				</div>
			
			
			</div>
		
		
		
		
		</div>
	</div>
		
<%}else{
	 response.sendRedirect("front.jsp");
} %>

</body>
</html>